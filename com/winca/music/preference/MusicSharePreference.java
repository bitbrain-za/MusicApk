package com.winca.music.preference;

import android.content.Context;
import com.winca.music.player.MusicPlayerDef;

public class MusicSharePreference extends SharedPreferenceUtil
  implements MusicPlayerDef
{
  public MusicSharePreference(Context paramContext)
  {
    super(paramContext);
  }

  public int ReadLastPlayId()
  {
    return GetInt("MUSIC_ID_KEY");
  }

  public String ReadLastPlayPath()
  {
    return GetString("MUSIC_PATH_KEY");
  }

  public int ReadLastPlayState()
  {
    return GetInt("MUSIC_PLAY_STATE_KEY");
  }

  public int ReadLastPosition()
  {
    return GetInt("MUSIC_POSITION_KEY");
  }

  public int ReadLastUSBType()
  {
    return GetInt("MUSIC_SHARE_LAST_USB_VOLUME");
  }

  public int ReadPlayMode()
  {
    return GetInt("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY");
  }

  public void StoryLastPlay(String paramString)
  {
    PutString("MUSIC_PATH_KEY", paramString);
  }

  public void StoryLastPlayState(int paramInt)
  {
    PutInt("MUSIC_PLAY_STATE_KEY", paramInt);
  }

  public void StoryLastPosition(int paramInt)
  {
    PutInt("MUSIC_POSITION_KEY", paramInt);
  }

  public void StoryLastUSBType(int paramInt)
  {
    PutInt("MUSIC_SHARE_LAST_USB_VOLUME", paramInt);
  }

  public void StoryPlayMode(int paramInt)
  {
    PutInt("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY", paramInt);
  }

  public boolean getIsPlayHistory()
  {
    return getBoolean("MUSIC_SP_ISHISTORY").booleanValue();
  }

  public int readMusicLib()
  {
    return GetInt("MUSIC_SP_MUSIC_LIB");
  }

  public void storyIsPlayHistory(boolean paramBoolean)
  {
    putBoolean("MUSIC_SP_ISHISTORY", paramBoolean);
  }

  public void storyMusicLib(int paramInt)
  {
    PutInt("MUSIC_SP_MUSIC_LIB", paramInt);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.preference.MusicSharePreference
 * JD-Core Version:    0.6.0
 */