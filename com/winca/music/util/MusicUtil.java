package com.winca.music.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.winca.music.player.MusicPlayerDef;
import java.io.File;
import java.io.FileInputStream;
import java.util.Formatter;
import java.util.Locale;

public class MusicUtil
  implements MusicPlayerDef
{
  private static final String MUSIC_ALBUM_THUMBNAIL_FOLDER = "/.thumbnail/album/";
  public static String mCurrentPlayAlbum;
  public static String mCurrentPlayArtist;
  private static StringBuilder sFormatBuilder = new StringBuilder();
  private static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
  private static final Object[] sTimeArgs = new Object[5];

  public static Bitmap initialInherentImage(String paramString)
  {
    File localFile = new File(paramString);
    Bitmap localBitmap = null;
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(localFile);
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = false;
      localOptions.inSampleSize = 1;
      localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
      localOptions.inDither = false;
      localBitmap = BitmapFactory.decodeFileDescriptor(localFileInputStream.getFD(), null, localOptions);
      localFileInputStream.close();
      return localBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localBitmap;
  }

  public static String makeTimeString(Context paramContext, long paramLong)
  {
    if (paramLong < 3600L);
    for (int i = 2131165192; ; i = 2131165193)
    {
      String str = paramContext.getString(i);
      sFormatBuilder.setLength(0);
      Object[] arrayOfObject = sTimeArgs;
      arrayOfObject[0] = Long.valueOf(paramLong / 3600L);
      arrayOfObject[1] = Long.valueOf(paramLong / 60L);
      arrayOfObject[2] = Long.valueOf(paramLong / 60L % 60L);
      arrayOfObject[3] = Long.valueOf(paramLong);
      arrayOfObject[4] = Long.valueOf(paramLong % 60L);
      return sFormatter.format(str, arrayOfObject).toString();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.util.MusicUtil
 * JD-Core Version:    0.6.0
 */