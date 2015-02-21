package com.winca.music.player;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;

public abstract class Player
{
  public void actionLastModeRead(Context paramContext, Intent paramIntent)
  {
  }

  public void actionLastModeSave(Context paramContext, Intent paramIntent)
  {
  }

  public abstract void deInit();

  public abstract long duration();

  public Bitmap getAlbumDrawable()
  {
    return null;
  }

  public long getAlbumId()
  {
    return 0L;
  }

  public String getAlbumName()
  {
    return null;
  }

  public String getArtistName()
  {
    return null;
  }

  public long getAudioId()
  {
    return 0L;
  }

  public int getCurPlayPosInPlayList()
  {
    return 0;
  }

  public String getPath()
  {
    return null;
  }

  public int getPlayingCount()
  {
    return 0;
  }

  public int getQueuePosition()
  {
    return 0;
  }

  public abstract int getRepeatMode();

  public abstract int getShuffleMode();

  public String getTrackName()
  {
    return null;
  }

  public abstract void initPlayer();

  public abstract boolean isPlaying();

  public abstract void next(boolean paramBoolean);

  public void open(String[] paramArrayOfString, int paramInt)
  {
  }

  public abstract void pause();

  public abstract void play();

  public abstract long position();

  public abstract void postInit();

  public abstract boolean preDeInit();

  public abstract void prev();

  public abstract long seek(long paramLong);

  public void setQueuePosition(int paramInt)
  {
  }

  public abstract void setRepeatMode(int paramInt);

  public abstract void setShuffleMode(int paramInt);

  public abstract void stop();
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.Player
 * JD-Core Version:    0.6.0
 */