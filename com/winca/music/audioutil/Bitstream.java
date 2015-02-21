package com.winca.music.audioutil;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

public final class Bitstream
  implements BitstreamErrors
{
  private static final int BUFFER_INT_SIZE = 433;
  static byte INITIAL_SYNC = 0;
  static byte STRICT_SYNC = 1;
  private int bitindex;
  private final int[] bitmask;
  private Crc16[] crc;
  private boolean firstframe;
  private byte[] frame_bytes = new byte[1732];
  private final int[] framebuffer = new int[433];
  private int framesize;
  private final Header header;
  private int header_pos = 0;
  private byte[] rawid3v2;
  private boolean single_ch_mode;
  private final PushbackInputStream source;
  private final byte[] syncbuf;
  private int syncword;
  private int wordpointer;

  public Bitstream(InputStream paramInputStream)
  {
    int[] arrayOfInt = new int[18];
    arrayOfInt[1] = 1;
    arrayOfInt[2] = 3;
    arrayOfInt[3] = 7;
    arrayOfInt[4] = 15;
    arrayOfInt[5] = 31;
    arrayOfInt[6] = 63;
    arrayOfInt[7] = 127;
    arrayOfInt[8] = 255;
    arrayOfInt[9] = 511;
    arrayOfInt[10] = 1023;
    arrayOfInt[11] = 2047;
    arrayOfInt[12] = 4095;
    arrayOfInt[13] = 8191;
    arrayOfInt[14] = 16383;
    arrayOfInt[15] = 32767;
    arrayOfInt[16] = 65535;
    arrayOfInt[17] = 131071;
    this.bitmask = arrayOfInt;
    this.header = new Header();
    this.syncbuf = new byte[4];
    this.crc = new Crc16[1];
    this.rawid3v2 = null;
    this.firstframe = true;
    if (paramInputStream == null)
      throw new NullPointerException("in");
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    loadID3v2(localBufferedInputStream);
    this.firstframe = true;
    this.source = new PushbackInputStream(localBufferedInputStream, 1732);
    closeFrame();
  }

  // ERROR //
  private void loadID3v2(InputStream paramInputStream)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_1
    //   3: bipush 10
    //   5: invokevirtual 100	java/io/InputStream:mark	(I)V
    //   8: aload_0
    //   9: aload_1
    //   10: invokespecial 104	com/winca/music/audioutil/Bitstream:readID3v2Header	(Ljava/io/InputStream;)I
    //   13: istore_2
    //   14: aload_0
    //   15: iload_2
    //   16: putfield 49	com/winca/music/audioutil/Bitstream:header_pos	I
    //   19: aload_1
    //   20: invokevirtual 107	java/io/InputStream:reset	()V
    //   23: iload_2
    //   24: ifle +25 -> 49
    //   27: aload_0
    //   28: iload_2
    //   29: newarray byte
    //   31: putfield 66	com/winca/music/audioutil/Bitstream:rawid3v2	[B
    //   34: aload_1
    //   35: aload_0
    //   36: getfield 66	com/winca/music/audioutil/Bitstream:rawid3v2	[B
    //   39: iconst_0
    //   40: aload_0
    //   41: getfield 66	com/winca/music/audioutil/Bitstream:rawid3v2	[B
    //   44: arraylength
    //   45: invokevirtual 111	java/io/InputStream:read	([BII)I
    //   48: pop
    //   49: return
    //   50: astore 5
    //   52: aload_1
    //   53: invokevirtual 107	java/io/InputStream:reset	()V
    //   56: goto -33 -> 23
    //   59: astore 6
    //   61: goto -38 -> 23
    //   64: astore_3
    //   65: aload_1
    //   66: invokevirtual 107	java/io/InputStream:reset	()V
    //   69: aload_3
    //   70: athrow
    //   71: astore 4
    //   73: goto -4 -> 69
    //   76: astore 9
    //   78: goto -55 -> 23
    //   81: astore 7
    //   83: return
    //
    // Exception table:
    //   from	to	target	type
    //   2	19	50	java/io/IOException
    //   52	56	59	java/io/IOException
    //   2	19	64	finally
    //   65	69	71	java/io/IOException
    //   19	23	76	java/io/IOException
    //   27	49	81	java/io/IOException
  }

  private void nextFrame()
    throws BitstreamException
  {
    this.header.read_header(this, this.crc);
  }

  private int readBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws BitstreamException
  {
    int i = 0;
    while (true)
    {
      if (paramInt2 <= 0)
        label7: return i;
      try
      {
        int j = this.source.read(paramArrayOfByte, paramInt1, paramInt2);
        if (j == -1)
          break label7;
        i += j;
        paramInt1 += j;
        paramInt2 -= j;
      }
      catch (IOException localIOException)
      {
      }
    }
    throw newBitstreamException(258, localIOException);
  }

  private int readFully(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws BitstreamException
  {
    int i = 0;
    if (paramInt2 <= 0)
      return i;
    int k;
    int m;
    label91: 
    do
    {
      try
      {
        int j = this.source.read(paramArrayOfByte, paramInt1, paramInt2);
        if (j == -1)
        {
          k = paramInt2;
          m = paramInt1;
          break label91;
          int i1 = m + 1;
          paramArrayOfByte[m] = 0;
          k = n;
          m = i1;
        }
        else
        {
          i += j;
          paramInt1 += j;
          paramInt2 -= j;
        }
      }
      catch (IOException localIOException)
      {
        throw newBitstreamException(258, localIOException);
      }
      int n = k - 1;
    }
    while (k > 0);
    return i;
  }

  private int readID3v2Header(InputStream paramInputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[4];
    int i = -10;
    paramInputStream.read(arrayOfByte, 0, 3);
    if ((arrayOfByte[0] == 73) && (arrayOfByte[1] == 68) && (arrayOfByte[2] == 51))
    {
      paramInputStream.read(arrayOfByte, 0, 3);
      paramInputStream.read(arrayOfByte, 0, 4);
      i = (arrayOfByte[0] << 21) + (arrayOfByte[1] << 14) + (arrayOfByte[2] << 7) + arrayOfByte[3];
    }
    return i + 10;
  }

  private Header readNextFrame()
    throws BitstreamException
  {
    if (this.framesize == -1)
      nextFrame();
    return this.header;
  }

  public void close()
    throws BitstreamException
  {
    try
    {
      this.source.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw newBitstreamException(258, localIOException);
  }

  public void closeFrame()
  {
    this.framesize = -1;
    this.wordpointer = -1;
    this.bitindex = -1;
  }

  public InputStream getRawID3v2()
  {
    if (this.rawid3v2 == null)
      return null;
    return new ByteArrayInputStream(this.rawid3v2);
  }

  public int get_bits(int paramInt)
  {
    int i = paramInt + this.bitindex;
    if (this.wordpointer < 0)
      this.wordpointer = 0;
    if (i <= 32)
    {
      int n = this.framebuffer[this.wordpointer] >>> 32 - i & this.bitmask[paramInt];
      int i1 = paramInt + this.bitindex;
      this.bitindex = i1;
      if (i1 == 32)
      {
        this.bitindex = 0;
        this.wordpointer = (1 + this.wordpointer);
      }
      return n;
    }
    int j = 0xFFFF & this.framebuffer[this.wordpointer];
    this.wordpointer = (1 + this.wordpointer);
    int k = 0xFFFF0000 & this.framebuffer[this.wordpointer];
    int m = (0xFFFF0000 & j << 16 | 0xFFFF & k >>> 16) >>> 48 - i & this.bitmask[paramInt];
    this.bitindex = (i - 32);
    return m;
  }

  public int header_pos()
  {
    return this.header_pos;
  }

  public boolean isSyncCurrentPosition(int paramInt)
    throws BitstreamException
  {
    int i = readBytes(this.syncbuf, 0, 4);
    int j = 0xFF000000 & this.syncbuf[0] << 24 | 0xFF0000 & this.syncbuf[1] << 16 | 0xFF00 & this.syncbuf[2] << 8 | 0xFF & this.syncbuf[3] << 0;
    try
    {
      this.source.unread(this.syncbuf, 0, i);
      switch (i)
      {
      default:
        return false;
      case 0:
        label76: return true;
      case 4:
      }
      return isSyncMark(j, paramInt, this.syncword);
    }
    catch (IOException localIOException)
    {
      break label76;
    }
  }

  public boolean isSyncMark(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 == INITIAL_SYNC)
      if ((paramInt1 & 0xFFE00000) == -2097152)
      {
        i = 1;
        if (i != 0)
        {
          if ((0x3 & paramInt1 >>> 10) == 3)
            break label130;
          i = 1;
        }
        label37: if (i != 0)
          if ((0x3 & paramInt1 >>> 17) == 0)
            break label136;
      }
    label130: label136: for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        if ((0x3 & paramInt1 >>> 19) == 1)
          break label142;
        i = 1;
      }
      return i;
      i = 0;
      break;
      int j;
      if ((0xFFF80C00 & paramInt1) == paramInt3)
        if ((paramInt1 & 0xC0) == 192)
        {
          j = 1;
          label103: if (j != this.single_ch_mode)
            break label124;
        }
      label124: for (i = 1; ; i = 0)
      {
        break;
        j = 0;
        break label103;
      }
      i = 0;
      break label37;
    }
    label142: return false;
  }

  protected BitstreamException newBitstreamException(int paramInt)
  {
    return new BitstreamException(paramInt, null);
  }

  protected BitstreamException newBitstreamException(int paramInt, Throwable paramThrowable)
  {
    return new BitstreamException(paramInt, paramThrowable);
  }

  void parse_frame()
    throws BitstreamException
  {
    byte[] arrayOfByte = this.frame_bytes;
    int i = this.framesize;
    int j = 0;
    int i6;
    for (int k = 0; ; k = i6)
    {
      if (j >= i)
      {
        this.wordpointer = 0;
        this.bitindex = 0;
        return;
      }
      int m = arrayOfByte[j];
      int n = j + 1;
      int i1 = 0;
      if (n < i)
        i1 = arrayOfByte[(j + 1)];
      int i2 = j + 2;
      int i3 = 0;
      if (i2 < i)
        i3 = arrayOfByte[(j + 2)];
      int i4 = j + 3;
      int i5 = 0;
      if (i4 < i)
        i5 = arrayOfByte[(j + 3)];
      int[] arrayOfInt = this.framebuffer;
      i6 = k + 1;
      arrayOfInt[k] = (0xFF000000 & m << 24 | 0xFF0000 & i1 << 16 | 0xFF00 & i3 << 8 | i5 & 0xFF);
      j += 4;
    }
  }

  public int readBits(int paramInt)
  {
    return get_bits(paramInt);
  }

  public int readCheckedBits(int paramInt)
  {
    return get_bits(paramInt);
  }

  public Header readFrame()
    throws BitstreamException
  {
    Header localHeader1 = null;
    try
    {
      localHeader1 = readNextFrame();
      if (this.firstframe)
      {
        localHeader1.parseVBR(this.frame_bytes);
        this.firstframe = false;
      }
      return localHeader1;
    }
    catch (BitstreamException localBitstreamException1)
    {
      do
        while (localBitstreamException1.getErrorCode() == 261)
        {
          try
          {
            closeFrame();
            Header localHeader2 = readNextFrame();
            return localHeader2;
          }
          catch (BitstreamException localBitstreamException2)
          {
          }
          if (localBitstreamException2.getErrorCode() == 260)
            continue;
          throw newBitstreamException(localBitstreamException2.getErrorCode(), localBitstreamException2);
        }
      while (localBitstreamException1.getErrorCode() == 260);
    }
    throw newBitstreamException(localBitstreamException1.getErrorCode(), localBitstreamException1);
  }

  int read_frame_data(int paramInt)
    throws BitstreamException
  {
    int i = readFully(this.frame_bytes, 0, paramInt);
    this.framesize = paramInt;
    this.wordpointer = -1;
    this.bitindex = -1;
    return i;
  }

  void set_syncword(int paramInt)
  {
    this.syncword = (paramInt & 0xFFFFFF3F);
    if ((paramInt & 0xC0) == 192);
    for (boolean bool = true; ; bool = false)
    {
      this.single_ch_mode = bool;
      return;
    }
  }

  int syncHeader(byte paramByte)
    throws BitstreamException
  {
    if (readBytes(this.syncbuf, 0, 3) != 3)
      throw newBitstreamException(260, null);
    int i = 0xFF0000 & this.syncbuf[0] << 16 | 0xFF00 & this.syncbuf[1] << 8 | 0xFF & this.syncbuf[2] << 0;
    do
    {
      int j = i << 8;
      if (readBytes(this.syncbuf, 3, 1) != 1)
        throw newBitstreamException(260, null);
      i = j | 0xFF & this.syncbuf[3];
    }
    while (!isSyncMark(i, paramByte, this.syncword));
    return i;
  }

  public void unreadFrame()
    throws BitstreamException
  {
    if ((this.wordpointer == -1) && (this.bitindex == -1) && (this.framesize > 0));
    try
    {
      this.source.unread(this.frame_bytes, 0, this.framesize);
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw newBitstreamException(258);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.Bitstream
 * JD-Core Version:    0.6.0
 */