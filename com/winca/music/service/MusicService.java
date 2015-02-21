package com.winca.music.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.player.MusicPlayerDef;
import com.winca.service.media.MediaOperationManager;

public class MusicService extends Service
  implements MusicPlayerDef
{
  public static MusicPlayerControler mMusicPlayer = null;
  private final String TAG = "MusicService";
  private MediaOperationManager mMediaOperationManager = null;
  private MusicPlayerImpl musicBinder = null;

  public static MusicPlayerControler getMusicPlayer()
  {
    return mMusicPlayer;
  }

  public MediaOperationManager getMediaOperationManager()
  {
    if (this.mMediaOperationManager == null)
    {
      this.mMediaOperationManager = new MediaOperationManager(this);
      this.mMediaOperationManager.doBindService();
    }
    return this.mMediaOperationManager;
  }

  public IBinder onBind(Intent paramIntent)
  {
    return this.musicBinder;
  }

  public void onCreate()
  {
    mMusicPlayer = new MusicPlayerControler(this);
    this.musicBinder = new MusicPlayerImpl();
    super.onCreate();
    this.mMediaOperationManager = new MediaOperationManager(this);
    this.mMediaOperationManager.doBindService();
  }

  public void onDestroy()
  {
    if (mMusicPlayer != null)
      mMusicPlayer.onDestory();
    super.onDestroy();
    this.mMediaOperationManager.doUnbindService();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    if (paramIntent == null);
  }

  public void stopPlayMusic()
  {
    if (mMusicPlayer != null)
      mMusicPlayer.leaveAudio();
  }

  class MusicPlayerImpl extends MusicInterface.Stub
  {
    MusicPlayerImpl()
    {
    }

    public void next()
      throws RemoteException
    {
      MusicService.mMusicPlayer.Next();
    }

    public void pre()
      throws RemoteException
    {
      MusicService.mMusicPlayer.Pre();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.service.MusicService
 * JD-Core Version:    0.6.0
 */