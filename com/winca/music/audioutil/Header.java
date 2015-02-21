package com.winca.music.audioutil;

public final class Header
{
  public static final int DUAL_CHANNEL = 2;
  public static final int FOURTYEIGHT = 1;
  public static final int FOURTYFOUR_POINT_ONE = 0;
  public static final int JOINT_STEREO = 1;
  public static final int MPEG1 = 1;
  public static final int MPEG25_LSF = 2;
  public static final int MPEG2_LSF = 0;
  public static final int SINGLE_CHANNEL = 3;
  public static final int STEREO = 0;
  public static final int THIRTYTWO = 2;
  public static final String[][][] bitrate_str;
  public static final int[][][] bitrates;
  public static final int[][] frequencies = { { 22050, 24000, 16000, 1 }, { 44100, 48000, 32000, 1 }, { 11025, 12000, 8000, 1 } };
  private int _headerstring = -1;
  public short checksum;
  private Crc16 crc;
  public int framesize;
  private int h_bitrate_index;
  private boolean h_copyright;
  private int h_intensity_stereo_bound;
  private int h_layer;
  private int h_mode;
  private int h_mode_extension;
  private int h_number_of_subbands;
  private boolean h_original;
  private int h_padding_bit;
  private int h_protection_bit;
  private int h_sample_frequency;
  private boolean h_vbr;
  private int h_vbr_bytes;
  private int h_vbr_frames;
  private int h_vbr_scale;
  private double[] h_vbr_time_per_frame = { -1.0D, 384.0D, 1152.0D, 1152.0D };
  private byte[] h_vbr_toc;
  private int h_version;
  public int nSlots;
  private byte syncmode = Bitstream.INITIAL_SYNC;

  static
  {
    int[][][] arrayOfInt = new int[3][][];
    int[][] arrayOfInt1 = new int[3][];
    int[] arrayOfInt2 = new int[16];
    arrayOfInt2[1] = 32000;
    arrayOfInt2[2] = 48000;
    arrayOfInt2[3] = 56000;
    arrayOfInt2[4] = 64000;
    arrayOfInt2[5] = 80000;
    arrayOfInt2[6] = 96000;
    arrayOfInt2[7] = 112000;
    arrayOfInt2[8] = 128000;
    arrayOfInt2[9] = 144000;
    arrayOfInt2[10] = 160000;
    arrayOfInt2[11] = 176000;
    arrayOfInt2[12] = 192000;
    arrayOfInt2[13] = 224000;
    arrayOfInt2[14] = 256000;
    arrayOfInt1[0] = arrayOfInt2;
    int[] arrayOfInt3 = new int[16];
    arrayOfInt3[1] = 8000;
    arrayOfInt3[2] = 16000;
    arrayOfInt3[3] = 24000;
    arrayOfInt3[4] = 32000;
    arrayOfInt3[5] = 40000;
    arrayOfInt3[6] = 48000;
    arrayOfInt3[7] = 56000;
    arrayOfInt3[8] = 64000;
    arrayOfInt3[9] = 80000;
    arrayOfInt3[10] = 96000;
    arrayOfInt3[11] = 112000;
    arrayOfInt3[12] = 128000;
    arrayOfInt3[13] = 144000;
    arrayOfInt3[14] = 160000;
    arrayOfInt1[1] = arrayOfInt3;
    int[] arrayOfInt4 = new int[16];
    arrayOfInt4[1] = 8000;
    arrayOfInt4[2] = 16000;
    arrayOfInt4[3] = 24000;
    arrayOfInt4[4] = 32000;
    arrayOfInt4[5] = 40000;
    arrayOfInt4[6] = 48000;
    arrayOfInt4[7] = 56000;
    arrayOfInt4[8] = 64000;
    arrayOfInt4[9] = 80000;
    arrayOfInt4[10] = 96000;
    arrayOfInt4[11] = 112000;
    arrayOfInt4[12] = 128000;
    arrayOfInt4[13] = 144000;
    arrayOfInt4[14] = 160000;
    arrayOfInt1[2] = arrayOfInt4;
    arrayOfInt[0] = arrayOfInt1;
    int[][] arrayOfInt5 = new int[3][];
    int[] arrayOfInt6 = new int[16];
    arrayOfInt6[1] = 32000;
    arrayOfInt6[2] = 64000;
    arrayOfInt6[3] = 96000;
    arrayOfInt6[4] = 128000;
    arrayOfInt6[5] = 160000;
    arrayOfInt6[6] = 192000;
    arrayOfInt6[7] = 224000;
    arrayOfInt6[8] = 256000;
    arrayOfInt6[9] = 288000;
    arrayOfInt6[10] = 320000;
    arrayOfInt6[11] = 352000;
    arrayOfInt6[12] = 384000;
    arrayOfInt6[13] = 416000;
    arrayOfInt6[14] = 448000;
    arrayOfInt5[0] = arrayOfInt6;
    int[] arrayOfInt7 = new int[16];
    arrayOfInt7[1] = 32000;
    arrayOfInt7[2] = 48000;
    arrayOfInt7[3] = 56000;
    arrayOfInt7[4] = 64000;
    arrayOfInt7[5] = 80000;
    arrayOfInt7[6] = 96000;
    arrayOfInt7[7] = 112000;
    arrayOfInt7[8] = 128000;
    arrayOfInt7[9] = 160000;
    arrayOfInt7[10] = 192000;
    arrayOfInt7[11] = 224000;
    arrayOfInt7[12] = 256000;
    arrayOfInt7[13] = 320000;
    arrayOfInt7[14] = 384000;
    arrayOfInt5[1] = arrayOfInt7;
    int[] arrayOfInt8 = new int[16];
    arrayOfInt8[1] = 32000;
    arrayOfInt8[2] = 40000;
    arrayOfInt8[3] = 48000;
    arrayOfInt8[4] = 56000;
    arrayOfInt8[5] = 64000;
    arrayOfInt8[6] = 80000;
    arrayOfInt8[7] = 96000;
    arrayOfInt8[8] = 112000;
    arrayOfInt8[9] = 128000;
    arrayOfInt8[10] = 160000;
    arrayOfInt8[11] = 192000;
    arrayOfInt8[12] = 224000;
    arrayOfInt8[13] = 256000;
    arrayOfInt8[14] = 320000;
    arrayOfInt5[2] = arrayOfInt8;
    arrayOfInt[1] = arrayOfInt5;
    int[][] arrayOfInt9 = new int[3][];
    int[] arrayOfInt10 = new int[16];
    arrayOfInt10[1] = 32000;
    arrayOfInt10[2] = 48000;
    arrayOfInt10[3] = 56000;
    arrayOfInt10[4] = 64000;
    arrayOfInt10[5] = 80000;
    arrayOfInt10[6] = 96000;
    arrayOfInt10[7] = 112000;
    arrayOfInt10[8] = 128000;
    arrayOfInt10[9] = 144000;
    arrayOfInt10[10] = 160000;
    arrayOfInt10[11] = 176000;
    arrayOfInt10[12] = 192000;
    arrayOfInt10[13] = 224000;
    arrayOfInt10[14] = 256000;
    arrayOfInt9[0] = arrayOfInt10;
    int[] arrayOfInt11 = new int[16];
    arrayOfInt11[1] = 8000;
    arrayOfInt11[2] = 16000;
    arrayOfInt11[3] = 24000;
    arrayOfInt11[4] = 32000;
    arrayOfInt11[5] = 40000;
    arrayOfInt11[6] = 48000;
    arrayOfInt11[7] = 56000;
    arrayOfInt11[8] = 64000;
    arrayOfInt11[9] = 80000;
    arrayOfInt11[10] = 96000;
    arrayOfInt11[11] = 112000;
    arrayOfInt11[12] = 128000;
    arrayOfInt11[13] = 144000;
    arrayOfInt11[14] = 160000;
    arrayOfInt9[1] = arrayOfInt11;
    int[] arrayOfInt12 = new int[16];
    arrayOfInt12[1] = 8000;
    arrayOfInt12[2] = 16000;
    arrayOfInt12[3] = 24000;
    arrayOfInt12[4] = 32000;
    arrayOfInt12[5] = 40000;
    arrayOfInt12[6] = 48000;
    arrayOfInt12[7] = 56000;
    arrayOfInt12[8] = 64000;
    arrayOfInt12[9] = 80000;
    arrayOfInt12[10] = 96000;
    arrayOfInt12[11] = 112000;
    arrayOfInt12[12] = 128000;
    arrayOfInt12[13] = 144000;
    arrayOfInt12[14] = 160000;
    arrayOfInt9[2] = arrayOfInt12;
    arrayOfInt[2] = arrayOfInt9;
    bitrates = arrayOfInt;
    bitrate_str = new String[][][] { { { "free format", "32 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "176 kbit/s", "192 kbit/s", "224 kbit/s", "256 kbit/s", "forbidden" }, { "free format", "8 kbit/s", "16 kbit/s", "24 kbit/s", "32 kbit/s", "40 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "forbidden" }, { "free format", "8 kbit/s", "16 kbit/s", "24 kbit/s", "32 kbit/s", "40 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "forbidden" } }, { { "free format", "32 kbit/s", "64 kbit/s", "96 kbit/s", "128 kbit/s", "160 kbit/s", "192 kbit/s", "224 kbit/s", "256 kbit/s", "288 kbit/s", "320 kbit/s", "352 kbit/s", "384 kbit/s", "416 kbit/s", "448 kbit/s", "forbidden" }, { "free format", "32 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "160 kbit/s", "192 kbit/s", "224 kbit/s", "256 kbit/s", "320 kbit/s", "384 kbit/s", "forbidden" }, { "free format", "32 kbit/s", "40 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "160 kbit/s", "192 kbit/s", "224 kbit/s", "256 kbit/s", "320 kbit/s", "forbidden" } }, { { "free format", "32 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "176 kbit/s", "192 kbit/s", "224 kbit/s", "256 kbit/s", "forbidden" }, { "free format", "8 kbit/s", "16 kbit/s", "24 kbit/s", "32 kbit/s", "40 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "forbidden" }, { "free format", "8 kbit/s", "16 kbit/s", "24 kbit/s", "32 kbit/s", "40 kbit/s", "48 kbit/s", "56 kbit/s", "64 kbit/s", "80 kbit/s", "96 kbit/s", "112 kbit/s", "128 kbit/s", "144 kbit/s", "160 kbit/s", "forbidden" } } };
  }

  public int bitrate()
  {
    if (this.h_vbr)
      return 1000 * (int)(8 * this.h_vbr_bytes / (ms_per_frame() * this.h_vbr_frames));
    return bitrates[this.h_version][(-1 + this.h_layer)][this.h_bitrate_index];
  }

  public int bitrate_index()
  {
    return this.h_bitrate_index;
  }

  public int bitrate_instant()
  {
    return bitrates[this.h_version][(-1 + this.h_layer)][this.h_bitrate_index];
  }

  public String bitrate_string()
  {
    if (this.h_vbr)
      return Integer.toString(bitrate() / 1000) + " kb/s";
    return bitrate_str[this.h_version][(-1 + this.h_layer)][this.h_bitrate_index];
  }

  public int calculate_framesize()
  {
    int i = 17;
    if (this.h_layer == 1)
    {
      this.framesize = (12 * bitrates[this.h_version][0][this.h_bitrate_index] / frequencies[this.h_version][this.h_sample_frequency]);
      if (this.h_padding_bit != 0)
        this.framesize = (1 + this.framesize);
      this.framesize <<= 2;
      this.nSlots = 0;
    }
    while (true)
    {
      this.framesize = (-4 + this.framesize);
      return this.framesize;
      this.framesize = (144 * bitrates[this.h_version][(-1 + this.h_layer)][this.h_bitrate_index] / frequencies[this.h_version][this.h_sample_frequency]);
      if ((this.h_version == 0) || (this.h_version == 2))
        this.framesize >>= 1;
      if (this.h_padding_bit != 0)
        this.framesize = (1 + this.framesize);
      if (this.h_layer == 3)
      {
        if (this.h_version == 1)
        {
          int i1 = this.framesize;
          label209: int i2;
          if (this.h_mode == 3)
          {
            i2 = i1 - i;
            if (this.h_protection_bit == 0)
              break label246;
          }
          label246: for (int i3 = 0; ; i3 = 2)
          {
            this.nSlots = (-4 + (i2 - i3));
            break;
            i = 32;
            break label209;
          }
        }
        int j = this.framesize;
        if (this.h_mode == 3)
          i = 9;
        int k = j - i;
        int m = this.h_protection_bit;
        int n = 0;
        if (m != 0);
        while (true)
        {
          this.nSlots = (-4 + (k - n));
          break;
          n = 2;
        }
      }
      this.nSlots = 0;
    }
  }

  public boolean checksum_ok()
  {
    return this.checksum == this.crc.checksum();
  }

  public boolean checksums()
  {
    return this.h_protection_bit == 0;
  }

  public boolean copyright()
  {
    return this.h_copyright;
  }

  public int frequency()
  {
    return frequencies[this.h_version][this.h_sample_frequency];
  }

  public int getSyncHeader()
  {
    return this._headerstring;
  }

  public int intensity_stereo_bound()
  {
    return this.h_intensity_stereo_bound;
  }

  public int layer()
  {
    return this.h_layer;
  }

  public String layer_string()
  {
    switch (this.h_layer)
    {
    default:
      return null;
    case 1:
      return "I";
    case 2:
      return "II";
    case 3:
    }
    return "III";
  }

  public int max_number_of_frames(int paramInt)
  {
    if (this.h_vbr)
      return this.h_vbr_frames;
    if (4 + this.framesize - this.h_padding_bit == 0)
      return 0;
    return paramInt / (4 + this.framesize - this.h_padding_bit);
  }

  public int min_number_of_frames(int paramInt)
  {
    if (this.h_vbr)
      return this.h_vbr_frames;
    if (5 + this.framesize - this.h_padding_bit == 0)
      return 0;
    return paramInt / (5 + this.framesize - this.h_padding_bit);
  }

  public int mode()
  {
    return this.h_mode;
  }

  public int mode_extension()
  {
    return this.h_mode_extension;
  }

  public String mode_string()
  {
    switch (this.h_mode)
    {
    default:
      return null;
    case 0:
      return "Stereo";
    case 1:
      return "Joint stereo";
    case 2:
      return "Dual channel";
    case 3:
    }
    return "Single channel";
  }

  public float ms_per_frame()
  {
    if (this.h_vbr)
    {
      double d = this.h_vbr_time_per_frame[layer()] / frequency();
      if ((this.h_version == 0) || (this.h_version == 2))
        d /= 2.0D;
      return (float)(1000.0D * d);
    }
    return new float[][] { { 8.707483F, 8.0F, 12.0F }, { 26.12245F, 24.0F, 36.0F }, { 26.12245F, 24.0F, 36.0F } }[(-1 + this.h_layer)][this.h_sample_frequency];
  }

  public int number_of_subbands()
  {
    return this.h_number_of_subbands;
  }

  public boolean original()
  {
    return this.h_original;
  }

  public boolean padding()
  {
    return this.h_padding_bit != 0;
  }

  // ERROR //
  void parseVBR(byte[] paramArrayOfByte)
    throws BitstreamException
  {
    // Byte code:
    //   0: iconst_4
    //   1: newarray byte
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 179	com/winca/music/audioutil/Header:h_version	I
    //   8: iconst_1
    //   9: if_icmpne +516 -> 525
    //   12: aload_0
    //   13: getfield 223	com/winca/music/audioutil/Header:h_mode	I
    //   16: iconst_3
    //   17: if_icmpne +502 -> 519
    //   20: bipush 17
    //   22: istore_3
    //   23: aload_1
    //   24: iload_3
    //   25: aload_2
    //   26: iconst_0
    //   27: iconst_4
    //   28: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   31: ldc_w 305
    //   34: new 91	java/lang/String
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 307	java/lang/String:<init>	([B)V
    //   42: invokevirtual 311	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   45: ifeq +300 -> 345
    //   48: aload_0
    //   49: iconst_1
    //   50: putfield 169	com/winca/music/audioutil/Header:h_vbr	Z
    //   53: aload_0
    //   54: iconst_m1
    //   55: putfield 177	com/winca/music/audioutil/Header:h_vbr_frames	I
    //   58: aload_0
    //   59: iconst_m1
    //   60: putfield 171	com/winca/music/audioutil/Header:h_vbr_bytes	I
    //   63: aload_0
    //   64: iconst_m1
    //   65: putfield 313	com/winca/music/audioutil/Header:h_vbr_scale	I
    //   68: aload_0
    //   69: bipush 100
    //   71: newarray byte
    //   73: putfield 315	com/winca/music/audioutil/Header:h_vbr_toc	[B
    //   76: iconst_4
    //   77: newarray byte
    //   79: astore 8
    //   81: aload_1
    //   82: iload_3
    //   83: iconst_4
    //   84: iadd
    //   85: aload 8
    //   87: iconst_0
    //   88: aload 8
    //   90: arraylength
    //   91: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   94: iconst_4
    //   95: aload 8
    //   97: arraylength
    //   98: iadd
    //   99: istore 9
    //   101: iconst_1
    //   102: aload 8
    //   104: iconst_3
    //   105: baload
    //   106: iand
    //   107: ifeq +62 -> 169
    //   110: aload_1
    //   111: iload_3
    //   112: iload 9
    //   114: iadd
    //   115: aload_2
    //   116: iconst_0
    //   117: aload_2
    //   118: arraylength
    //   119: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   122: aload_0
    //   123: ldc_w 316
    //   126: aload_2
    //   127: iconst_0
    //   128: baload
    //   129: bipush 24
    //   131: ishl
    //   132: iand
    //   133: ldc_w 317
    //   136: aload_2
    //   137: iconst_1
    //   138: baload
    //   139: bipush 16
    //   141: ishl
    //   142: iand
    //   143: ior
    //   144: ldc_w 318
    //   147: aload_2
    //   148: iconst_2
    //   149: baload
    //   150: bipush 8
    //   152: ishl
    //   153: iand
    //   154: ior
    //   155: sipush 255
    //   158: aload_2
    //   159: iconst_3
    //   160: baload
    //   161: iand
    //   162: ior
    //   163: putfield 177	com/winca/music/audioutil/Header:h_vbr_frames	I
    //   166: iinc 9 4
    //   169: iconst_2
    //   170: aload 8
    //   172: iconst_3
    //   173: baload
    //   174: iand
    //   175: ifeq +62 -> 237
    //   178: aload_1
    //   179: iload_3
    //   180: iload 9
    //   182: iadd
    //   183: aload_2
    //   184: iconst_0
    //   185: aload_2
    //   186: arraylength
    //   187: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   190: aload_0
    //   191: ldc_w 316
    //   194: aload_2
    //   195: iconst_0
    //   196: baload
    //   197: bipush 24
    //   199: ishl
    //   200: iand
    //   201: ldc_w 317
    //   204: aload_2
    //   205: iconst_1
    //   206: baload
    //   207: bipush 16
    //   209: ishl
    //   210: iand
    //   211: ior
    //   212: ldc_w 318
    //   215: aload_2
    //   216: iconst_2
    //   217: baload
    //   218: bipush 8
    //   220: ishl
    //   221: iand
    //   222: ior
    //   223: sipush 255
    //   226: aload_2
    //   227: iconst_3
    //   228: baload
    //   229: iand
    //   230: ior
    //   231: putfield 171	com/winca/music/audioutil/Header:h_vbr_bytes	I
    //   234: iinc 9 4
    //   237: iconst_4
    //   238: aload 8
    //   240: iconst_3
    //   241: baload
    //   242: iand
    //   243: ifeq +31 -> 274
    //   246: aload_1
    //   247: iload_3
    //   248: iload 9
    //   250: iadd
    //   251: aload_0
    //   252: getfield 315	com/winca/music/audioutil/Header:h_vbr_toc	[B
    //   255: iconst_0
    //   256: aload_0
    //   257: getfield 315	com/winca/music/audioutil/Header:h_vbr_toc	[B
    //   260: arraylength
    //   261: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   264: iload 9
    //   266: aload_0
    //   267: getfield 315	com/winca/music/audioutil/Header:h_vbr_toc	[B
    //   270: arraylength
    //   271: iadd
    //   272: istore 9
    //   274: bipush 8
    //   276: aload 8
    //   278: iconst_3
    //   279: baload
    //   280: iand
    //   281: ifeq +64 -> 345
    //   284: aload_1
    //   285: iload_3
    //   286: iload 9
    //   288: iadd
    //   289: aload_2
    //   290: iconst_0
    //   291: aload_2
    //   292: arraylength
    //   293: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   296: aload_0
    //   297: ldc_w 316
    //   300: aload_2
    //   301: iconst_0
    //   302: baload
    //   303: bipush 24
    //   305: ishl
    //   306: iand
    //   307: ldc_w 317
    //   310: aload_2
    //   311: iconst_1
    //   312: baload
    //   313: bipush 16
    //   315: ishl
    //   316: iand
    //   317: ior
    //   318: ldc_w 318
    //   321: aload_2
    //   322: iconst_2
    //   323: baload
    //   324: bipush 8
    //   326: ishl
    //   327: iand
    //   328: ior
    //   329: sipush 255
    //   332: aload_2
    //   333: iconst_3
    //   334: baload
    //   335: iand
    //   336: ior
    //   337: putfield 313	com/winca/music/audioutil/Header:h_vbr_scale	I
    //   340: iload 9
    //   342: iconst_4
    //   343: iadd
    //   344: pop
    //   345: aload_1
    //   346: bipush 32
    //   348: aload_2
    //   349: iconst_0
    //   350: iconst_4
    //   351: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   354: ldc_w 320
    //   357: new 91	java/lang/String
    //   360: dup
    //   361: aload_2
    //   362: invokespecial 307	java/lang/String:<init>	([B)V
    //   365: invokevirtual 311	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   368: ifeq +150 -> 518
    //   371: aload_0
    //   372: iconst_1
    //   373: putfield 169	com/winca/music/audioutil/Header:h_vbr	Z
    //   376: aload_0
    //   377: iconst_m1
    //   378: putfield 177	com/winca/music/audioutil/Header:h_vbr_frames	I
    //   381: aload_0
    //   382: iconst_m1
    //   383: putfield 171	com/winca/music/audioutil/Header:h_vbr_bytes	I
    //   386: aload_0
    //   387: iconst_m1
    //   388: putfield 313	com/winca/music/audioutil/Header:h_vbr_scale	I
    //   391: aload_0
    //   392: bipush 100
    //   394: newarray byte
    //   396: putfield 315	com/winca/music/audioutil/Header:h_vbr_toc	[B
    //   399: aload_1
    //   400: bipush 42
    //   402: aload_2
    //   403: iconst_0
    //   404: aload_2
    //   405: arraylength
    //   406: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   409: aload_0
    //   410: ldc_w 316
    //   413: aload_2
    //   414: iconst_0
    //   415: baload
    //   416: bipush 24
    //   418: ishl
    //   419: iand
    //   420: ldc_w 317
    //   423: aload_2
    //   424: iconst_1
    //   425: baload
    //   426: bipush 16
    //   428: ishl
    //   429: iand
    //   430: ior
    //   431: ldc_w 318
    //   434: aload_2
    //   435: iconst_2
    //   436: baload
    //   437: bipush 8
    //   439: ishl
    //   440: iand
    //   441: ior
    //   442: sipush 255
    //   445: aload_2
    //   446: iconst_3
    //   447: baload
    //   448: iand
    //   449: ior
    //   450: putfield 171	com/winca/music/audioutil/Header:h_vbr_bytes	I
    //   453: bipush 10
    //   455: iconst_4
    //   456: iadd
    //   457: istore 6
    //   459: aload_1
    //   460: bipush 46
    //   462: aload_2
    //   463: iconst_0
    //   464: aload_2
    //   465: arraylength
    //   466: invokestatic 303	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   469: aload_0
    //   470: ldc_w 316
    //   473: aload_2
    //   474: iconst_0
    //   475: baload
    //   476: bipush 24
    //   478: ishl
    //   479: iand
    //   480: ldc_w 317
    //   483: aload_2
    //   484: iconst_1
    //   485: baload
    //   486: bipush 16
    //   488: ishl
    //   489: iand
    //   490: ior
    //   491: ldc_w 318
    //   494: aload_2
    //   495: iconst_2
    //   496: baload
    //   497: bipush 8
    //   499: ishl
    //   500: iand
    //   501: ior
    //   502: sipush 255
    //   505: aload_2
    //   506: iconst_3
    //   507: baload
    //   508: iand
    //   509: ior
    //   510: putfield 177	com/winca/music/audioutil/Header:h_vbr_frames	I
    //   513: iload 6
    //   515: iconst_4
    //   516: iadd
    //   517: pop
    //   518: return
    //   519: bipush 32
    //   521: istore_3
    //   522: goto -499 -> 23
    //   525: aload_0
    //   526: getfield 223	com/winca/music/audioutil/Header:h_mode	I
    //   529: iconst_3
    //   530: if_icmpne +9 -> 539
    //   533: bipush 9
    //   535: istore_3
    //   536: goto -513 -> 23
    //   539: bipush 17
    //   541: istore_3
    //   542: goto -519 -> 23
    //   545: astore 4
    //   547: new 295	com/winca/music/audioutil/BitstreamException
    //   550: dup
    //   551: ldc_w 322
    //   554: aload 4
    //   556: invokespecial 325	com/winca/music/audioutil/BitstreamException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   559: athrow
    //   560: astore 5
    //   562: new 295	com/winca/music/audioutil/BitstreamException
    //   565: dup
    //   566: ldc_w 327
    //   569: aload 5
    //   571: invokespecial 325	com/winca/music/audioutil/BitstreamException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   574: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   23	166	545	java/lang/ArrayIndexOutOfBoundsException
    //   169	234	545	java/lang/ArrayIndexOutOfBoundsException
    //   237	274	545	java/lang/ArrayIndexOutOfBoundsException
    //   274	340	545	java/lang/ArrayIndexOutOfBoundsException
    //   345	453	560	java/lang/ArrayIndexOutOfBoundsException
    //   459	513	560	java/lang/ArrayIndexOutOfBoundsException
  }

  void read_header(Bitstream paramBitstream, Crc16[] paramArrayOfCrc16)
    throws BitstreamException
  {
    int i = 0;
    while (true)
    {
      int j = paramBitstream.syncHeader(this.syncmode);
      this._headerstring = j;
      if (this.syncmode == Bitstream.INITIAL_SYNC)
      {
        this.h_version = (0x1 & j >>> 19);
        if ((0x1 & j >>> 20) == 0)
        {
          if (this.h_version == 0)
            this.h_version = 2;
        }
        else
        {
          int n = 0x3 & j >>> 10;
          this.h_sample_frequency = n;
          if (n != 3)
            break label98;
          throw paramBitstream.newBitstreamException(256);
        }
        throw paramBitstream.newBitstreamException(256);
      }
      label98: this.h_layer = (0x3 & 4 - (j >>> 17));
      this.h_protection_bit = (0x1 & j >>> 16);
      this.h_bitrate_index = (0xF & j >>> 12);
      this.h_padding_bit = (0x1 & j >>> 9);
      this.h_mode = (0x3 & j >>> 6);
      this.h_mode_extension = (0x3 & j >>> 4);
      if (this.h_mode == 1)
      {
        this.h_intensity_stereo_bound = (4 + (this.h_mode_extension << 2));
        if ((0x1 & j >>> 3) == 1)
          this.h_copyright = true;
        if ((0x1 & j >>> 2) == 1)
          this.h_original = true;
        if (this.h_layer != 1)
          break label296;
        this.h_number_of_subbands = 32;
      }
      while (true)
      {
        if (this.h_intensity_stereo_bound > this.h_number_of_subbands)
          this.h_intensity_stereo_bound = this.h_number_of_subbands;
        calculate_framesize();
        int m = paramBitstream.read_frame_data(this.framesize);
        if ((this.framesize < 0) || (m == this.framesize))
          break label401;
        throw paramBitstream.newBitstreamException(261);
        this.h_intensity_stereo_bound = 0;
        break;
        label296: int k = this.h_bitrate_index;
        if (this.h_mode != 3)
          if (k != 4)
            break label348;
        label348: for (k = 1; ; k -= 4)
        {
          if ((k != 1) && (k != 2))
            break label363;
          if (this.h_sample_frequency != 2)
            break label354;
          this.h_number_of_subbands = 12;
          break;
        }
        label354: this.h_number_of_subbands = 8;
        continue;
        label363: if ((this.h_sample_frequency == 1) || ((k >= 3) && (k <= 5)))
        {
          this.h_number_of_subbands = 27;
          continue;
        }
        this.h_number_of_subbands = 30;
      }
      label401: if (paramBitstream.isSyncCurrentPosition(this.syncmode))
      {
        if (this.syncmode == Bitstream.INITIAL_SYNC)
        {
          this.syncmode = Bitstream.STRICT_SYNC;
          paramBitstream.set_syncword(0xFFF80CC0 & j);
        }
        i = 1;
      }
      while (i != 0)
      {
        paramBitstream.parse_frame();
        if (this.h_protection_bit != 0)
          break label511;
        this.checksum = (short)paramBitstream.get_bits(16);
        if (this.crc == null)
          this.crc = new Crc16();
        this.crc.add_bits(j, 16);
        paramArrayOfCrc16[0] = this.crc;
        return;
        paramBitstream.unreadFrame();
      }
    }
    label511: paramArrayOfCrc16[0] = null;
  }

  public int sample_frequency()
  {
    return this.h_sample_frequency;
  }

  public String sample_frequency_string()
  {
    switch (this.h_sample_frequency)
    {
    default:
      return null;
    case 2:
      if (this.h_version == 1)
        return "32 kHz";
      if (this.h_version == 0)
        return "16 kHz";
      return "8 kHz";
    case 0:
      if (this.h_version == 1)
        return "44.1 kHz";
      if (this.h_version == 0)
        return "22.05 kHz";
      return "11.025 kHz";
    case 1:
    }
    if (this.h_version == 1)
      return "48 kHz";
    if (this.h_version == 0)
      return "24 kHz";
    return "12 kHz";
  }

  public int slots()
  {
    return this.nSlots;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(200);
    localStringBuffer.append("Layer ");
    localStringBuffer.append(layer_string());
    localStringBuffer.append(" frame ");
    localStringBuffer.append(mode_string());
    localStringBuffer.append(' ');
    localStringBuffer.append(version_string());
    if (!checksums())
      localStringBuffer.append(" no");
    localStringBuffer.append(" checksums");
    localStringBuffer.append(' ');
    localStringBuffer.append(sample_frequency_string());
    localStringBuffer.append(',');
    localStringBuffer.append(' ');
    localStringBuffer.append(bitrate_string());
    return localStringBuffer.toString();
  }

  public float total_ms(int paramInt)
  {
    return max_number_of_frames(paramInt) * ms_per_frame();
  }

  public boolean vbr()
  {
    return this.h_vbr;
  }

  public int vbr_scale()
  {
    return this.h_vbr_scale;
  }

  public byte[] vbr_toc()
  {
    return this.h_vbr_toc;
  }

  public int version()
  {
    return this.h_version;
  }

  public String version_string()
  {
    switch (this.h_version)
    {
    default:
      return null;
    case 1:
      return "MPEG-1";
    case 0:
      return "MPEG-2 LSF";
    case 2:
    }
    return "MPEG-2.5 LSF";
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.Header
 * JD-Core Version:    0.6.0
 */