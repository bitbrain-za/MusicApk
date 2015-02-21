package com.winca.service.scannerMedia;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.winca.music.MusicActivity;
import com.winca.music.player.MusicPlayerDef;

public class AudioConnectService
  implements MusicPlayerDef
{
  private boolean isBind = false;
  private MusicActivity mContext = null;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
      }
      Intent localIntent = new Intent("com.winca.music.REMOTE_SERVER_CONNECT_ACTION");
      AudioConnectService.this.mContext.sendBroadcast(localIntent);
    }
  };
  private IScanMediaService mService = null;
  private ServiceConnection mServiceConnection = null;

  public AudioConnectService(MusicActivity paramMusicActivity)
  {
    this.mContext = paramMusicActivity;
    this.mServiceConnection = new AudioConnectServiceImpl();
    Intent localIntent = new Intent();
    localIntent.setAction("com.winca.service.scannerMedia.IScanMediaService");
    this.mContext.bindService(localIntent, this.mServiceConnection, 1);
  }

  private boolean getBind()
  {
    return this.isBind;
  }

  private void setBind(boolean paramBoolean)
  {
    this.isBind = paramBoolean;
  }

  public void doUnBindService()
  {
    this.mContext.unbindService(this.mServiceConnection);
    setBind(false);
  }

  public Album[] getAlbum(int paramInt)
  {
    if (this.mService != null)
      try
      {
        Album[] arrayOfAlbum = this.mService.getAlbum(paramInt);
        return arrayOfAlbum;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return null;
  }

  public AlbumSong[] getAlbumSong(String paramString, int paramInt)
  {
    if (this.mService != null)
      try
      {
        AlbumSong[] arrayOfAlbumSong = this.mService.getAlbumSong(paramString, paramInt);
        return arrayOfAlbumSong;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return null;
  }

  public Artist[] getArtist(int paramInt)
  {
    if (this.mService != null)
      try
      {
        Artist[] arrayOfArtist = this.mService.getArtist(paramInt);
        return arrayOfArtist;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return null;
  }

  public ArtistSong[] getArtistSong(String paramString, int paramInt)
  {
    if (this.mService != null)
      try
      {
        ArtistSong[] arrayOfArtistSong = this.mService.getArtistSong(paramString, paramInt);
        return arrayOfArtistSong;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return null;
  }

  public Audio[] getAudio(int paramInt)
  {
    if (this.mService != null)
      try
      {
        Audio[] arrayOfAudio = this.mService.getAudio(paramInt);
        return arrayOfAudio;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return null;
  }

  public boolean isScanning()
  {
    if (this.mService != null)
      try
      {
        boolean bool = this.mService.isScanning();
        return bool;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
      }
    return false;
  }

  class AudioConnectServiceImpl
    implements ServiceConnection
  {
    AudioConnectServiceImpl()
    {
    }

    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Log.i("AudioConnect", "onServiceConnected------------->>> ");
      AudioConnectService.this.mService = IScanMediaService.Stub.asInterface(paramIBinder);
      if (!AudioConnectService.this.getBind())
      {
        Message localMessage = AudioConnectService.this.mHandler.obtainMessage();
        localMessage.what = 1;
        AudioConnectService.this.mHandler.sendMessage(localMessage);
        AudioConnectService.this.setBind(true);
      }
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Log.i("AudioConnect", "onServiceDisconnected------------->>> ");
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.AudioConnectService
 * JD-Core Version:    0.6.0
 */