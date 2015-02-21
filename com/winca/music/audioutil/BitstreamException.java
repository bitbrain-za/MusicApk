package com.winca.music.audioutil;

public class BitstreamException extends JavaLayerException
  implements BitstreamErrors
{
  private static final long serialVersionUID = 1L;
  private int errorcode = 256;

  public BitstreamException(int paramInt, Throwable paramThrowable)
  {
    this(getErrorString(paramInt), paramThrowable);
    this.errorcode = paramInt;
  }

  public BitstreamException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public static String getErrorString(int paramInt)
  {
    return "Bitstream errorcode " + Integer.toHexString(paramInt);
  }

  public int getErrorCode()
  {
    return this.errorcode;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.BitstreamException
 * JD-Core Version:    0.6.0
 */