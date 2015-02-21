package com.winca.music.player;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.mediautil.MediaUtil;
import java.io.IOException;
import java.util.Formatter;
import java.util.Locale;

public class MusicPickerPlayer
  implements MediaPlayer.OnCompletionListener
{
  public static final int STATE_PAUSE = 2;
  public static final int STATE_PLAY = 1;
  private String filePath = null;
  private boolean isPlayerUserable = false;
  private AudioEntity mAudioEntity = null;
  private Context mContext = null;
  private MediaPlayer mMediaPlayer = null;
  private MediaUtil mMediaUtil = null;
  private IPlayStateListener mSListener = null;
  private int playState = 2;

  public MusicPickerPlayer(Context paramContext, String paramString)
  {
    this.filePath = paramString;
    this.mContext = paramContext;
    this.mMediaUtil = new MediaUtil(paramContext);
    this.mMediaPlayer = new MediaPlayer();
    this.mMediaPlayer.setOnCompletionListener(this);
    initPlayer();
  }

  private boolean isUsable()
  {
    return this.isPlayerUserable;
  }

  public static String makeTimeString(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject = new Object[5];
    Formatter localFormatter = new Formatter(localStringBuilder, Locale.getDefault());
    if (paramLong < 3600L);
    for (String str = "%2$d:%5$02d"; ; str = "%1$d:%3$02d:%5$02d")
    {
      localStringBuilder.setLength(0);
      arrayOfObject[0] = Long.valueOf(paramLong / 3600L);
      arrayOfObject[1] = Long.valueOf(paramLong / 60L);
      arrayOfObject[2] = Long.valueOf(paramLong / 60L % 60L);
      arrayOfObject[3] = Long.valueOf(paramLong);
      arrayOfObject[4] = Long.valueOf(paramLong % 60L);
      return localFormatter.format(str, arrayOfObject).toString();
    }
  }

  private void postDeinit()
  {
  }

  private void postInit()
  {
  }

  private void prepare()
  {
    try
    {
      this.mMediaPlayer.prepare();
      this.mAudioEntity = this.mMediaUtil.readAudioFile(this.filePath);
      setPlayUsable(true);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      setPlayUsable(false);
      localIllegalStateException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      setPlayUsable(false);
      localIOException.printStackTrace();
    }
  }

  private boolean setPlayPath(String paramString)
  {
    if (paramString == null)
      return false;
    try
    {
      this.mMediaPlayer.setDataSource(paramString);
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      setPlayUsable(false);
      return false;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      setPlayUsable(false);
      return false;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
      setPlayUsable(false);
      return false;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      setPlayUsable(false);
    }
    return false;
  }

  private void setPlayState(int paramInt)
  {
    this.playState = paramInt;
  }

  private void setPlayUsable(boolean paramBoolean)
  {
    this.isPlayerUserable = paramBoolean;
  }

  public void deInit()
  {
    this.mMediaPlayer.stop();
    this.mMediaPlayer.release();
    postDeinit();
  }

  public String duration()
  {
    if (isUsable())
      return makeTimeString(this.mMediaPlayer.getDuration());
    return null;
  }

  public AudioEntity getAudioEntity()
  {
    return this.mAudioEntity;
  }

  public int getCurPos()
  {
    if (isUsable())
      return this.mMediaPlayer.getCurrentPosition() / 1000;
    return -1;
  }

  public String getCurPosStr()
  {
    if (isUsable())
      return makeTimeString(this.mMediaPlayer.getCurrentPosition() / 1000);
    return null;
  }

  public int getPlayerState()
  {
    return this.playState;
  }

  public int getRepeatMode()
  {
    return 0;
  }

  public String getTotalTimeStr()
  {
    if (isUsable())
      return makeTimeString(this.mMediaPlayer.getDuration() / 1000);
    return null;
  }

  public int getTotolTime()
  {
    if (isUsable())
      return this.mMediaPlayer.getDuration() / 1000;
    return -1;
  }

  public void initPlayer()
  {
    if (setPlayPath(this.filePath))
      prepare();
    postInit();
  }

  public boolean isPlaying()
  {
    return this.mMediaPlayer.isPlaying();
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (this.mSListener != null)
      this.mSListener.onMusicComplete();
  }

  public void pause()
  {
    if (isUsable())
    {
      this.mMediaPlayer.pause();
      setPlayState(2);
      if (this.mSListener != null)
        this.mSListener.onMusicPause();
    }
  }

  public void play()
  {
    if (isUsable())
    {
      this.mMediaPlayer.start();
      setPlayState(1);
      if (this.mSListener != null)
        this.mSListener.onMusicPlay();
    }
  }

  public long position()
  {
    if (isUsable())
      return this.mMediaPlayer.getCurrentPosition();
    return 0L;
  }

  public void seek(int paramInt)
  {
    if (isUsable())
      this.mMediaPlayer.seekTo(paramInt);
  }

  public void setRepeatMode(int paramInt)
  {
  }

  public void setStateListener(IPlayStateListener paramIPlayStateListener)
  {
    this.mSListener = paramIPlayStateListener;
  }

  public void setVolume(float paramFloat)
  {
    if (isUsable())
      this.mMediaPlayer.setVolume(paramFloat, paramFloat);
  }

  public static abstract interface IPlayStateListener
  {
    public abstract void onMusicComplete();

    public abstract void onMusicPause();

    public abstract void onMusicPlay();
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MusicPickerPlayer
 * JD-Core Version:    0.6.0
 */