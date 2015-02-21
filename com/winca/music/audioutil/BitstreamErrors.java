package com.winca.music.audioutil;

public abstract interface BitstreamErrors extends JavaLayerErrors
{
  public static final int BITSTREAM_LAST = 511;
  public static final int INVALIDFRAME = 261;
  public static final int STREAM_EOF = 260;
  public static final int STREAM_ERROR = 258;
  public static final int UNEXPECTED_EOF = 259;
  public static final int UNKNOWN_ERROR = 256;
  public static final int UNKNOWN_SAMPLE_RATE = 257;
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.BitstreamErrors
 * JD-Core Version:    0.6.0
 */