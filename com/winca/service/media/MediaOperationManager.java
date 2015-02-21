package com.winca.service.media;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.winca.music.service.MusicService;

public class MediaOperationManager
{
  private static final int SOURCE_CHANGE = 44;
  private static final String TAG = "SERVICE_MEDIA_MCU";
  private MusicService mContext = null;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      if ((paramMessage.what == 44) && (paramMessage.arg1 != 8))
      {
        Log.e("SERVICE_MEDIA_MCU", "Callback,stop music");
        MediaOperationManager.this.mContext.stopPlayMusic();
      }
    }
  };
  private IMediaInterface mIMediaInterface = null;
  private MediaService mMediaService = null;
  public OnSourceChangeListener mOnSourceChangeListener = new OnSourceChangeListener.Stub()
  {
    public void OnSourceChange(int paramInt)
      throws RemoteException
    {
      MediaOperationManager.this.mHandler.removeMessages(44);
      Message localMessage = MediaOperationManager.this.mHandler.obtainMessage(44, paramInt, 0);
      MediaOperationManager.this.mHandler.sendMessage(localMessage);
    }
  };

  public MediaOperationManager(MusicService paramMusicService)
  {
    this.mContext = paramMusicService;
    this.mMediaService = new MediaService(paramMusicService, this);
  }

  public boolean audioCurrentPlayTime(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.mIMediaInterface == null)
    {
      Log.e("SERVICE_MEDIA_MCU", "Service audioCurrentPlayTime ");
      doBindService();
      return false;
    }
    try
    {
      boolean bool = this.mIMediaInterface.audioCurrentPlayTime(paramInt1, paramInt2, paramInt3);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean audioData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      Log.i("SERVICE_MEDIA_MCU", "Service audioData: cur:" + paramInt1 + "  Total:" + paramInt2 + " h:" + paramInt3 + " min:" + paramInt4 + " sec:" + paramInt5);
      boolean bool = this.mIMediaInterface.audioData(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean audioPause()
  {
    Log.i("SERVICE_MEDIA_MCU", "Service audioPause ");
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      boolean bool = this.mIMediaInterface.audioPuase();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean audioPlay()
  {
    Log.e("SERVICE_MEDIA_MCU", "Service audioPlay ");
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      boolean bool = this.mIMediaInterface.audioPlay();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean audioStartVoice()
  {
    Log.e("SERVICE_MEDIA_MCU", "Service audioStartVoice ");
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      boolean bool = this.mIMediaInterface.audioStartVoice();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public boolean audioStopVoice()
  {
    Log.i("SERVICE_MEDIA_MCU", "Service audioStopVoice++++++ ");
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      boolean bool2 = this.mIMediaInterface.audioStopVoice();
      bool1 = bool2;
      Log.i("SERVICE_MEDIA_MCU", "Service audioStopVoice---- ");
      return bool1;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  public void doBindService()
  {
    this.mMediaService.doBindService();
  }

  public void doUnbindService()
  {
    this.mMediaService.doUnbindService();
  }

  public boolean registerSourceChange(OnSourceChangeListener paramOnSourceChangeListener)
  {
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      boolean bool2 = this.mIMediaInterface.registerSourceChange(paramOnSourceChangeListener);
      bool1 = bool2;
      Log.e("SERVICE_MEDIA_MCU", "registerSourceChange: ret =" + bool1);
      return bool1;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  public boolean setDataType(int paramInt)
  {
    if (this.mIMediaInterface == null)
    {
      doBindService();
      return false;
    }
    try
    {
      Log.i("SERVICE_MEDIA_MCU", "Service setDataType:" + paramInt);
      boolean bool = this.mIMediaInterface.setAudioDataType(paramInt);
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
    return false;
  }

  public void setMpegServiceInterface()
  {
    this.mIMediaInterface = ((IMediaInterface)this.mMediaService.getService());
    registerSourceChange(this.mOnSourceChangeListener);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.media.MediaOperationManager
 * JD-Core Version:    0.6.0
 */