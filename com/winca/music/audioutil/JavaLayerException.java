package com.winca.music.audioutil;

import java.io.PrintStream;

public class JavaLayerException extends Exception
{
  private static final long serialVersionUID = 1L;
  private Throwable exception;

  public JavaLayerException()
  {
  }

  public JavaLayerException(String paramString)
  {
    super(paramString);
  }

  public JavaLayerException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.exception = paramThrowable;
  }

  public Throwable getException()
  {
    return this.exception;
  }

  public void printStackTrace()
  {
    printStackTrace(System.err);
  }

  public void printStackTrace(PrintStream paramPrintStream)
  {
    if (this.exception == null)
    {
      super.printStackTrace(paramPrintStream);
      return;
    }
    this.exception.printStackTrace();
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.audioutil.JavaLayerException
 * JD-Core Version:    0.6.0
 */