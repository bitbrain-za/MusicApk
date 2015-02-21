package com.winca.music.util;

import com.winca.music.player.MusicPlayerDef;

public class VolumeUtil
  implements MusicPlayerDef
{
  public static VolumeUtil mContext = null;
  private String str = null;
  private int type = -1;

  public static VolumeUtil getInstance()
  {
    if (mContext == null)
      mContext = new VolumeUtil();
    return mContext;
  }

  public int GetVolumeValue()
  {
    if (this.str == null)
      return -1;
    if (this.str.startsWith("/mnt/sdcard/sdcard"))
      this.type = 0;
    while (true)
    {
      return this.type;
      if (this.str.startsWith("/mnt/udisk/"))
      {
        this.type = 1;
        continue;
      }
      if (this.str.startsWith("/mnt/udisk1/"))
      {
        this.type = 3;
        continue;
      }
      if (this.str.startsWith("/mnt/harddisk/"))
      {
        this.type = 2;
        continue;
      }
      this.type = -1;
    }
  }

  public int GetVolumeValue(String paramString)
  {
    this.str = paramString;
    return GetVolumeValue();
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.util.VolumeUtil
 * JD-Core Version:    0.6.0
 */