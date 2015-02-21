package com.winca.service.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

public class MediaService extends ServiceOperation
{
  public static final String MEDIA_SERVICE_CHANGE = "MEDIA_SERVICE_CHANGE";
  public static final String MEDIA_SERVICE_CHANGE_STATUS = "MEDIA_SERVICE_CHANGE_STATUS";
  private static final String TAG = null;
  MediaOperationManager mMediaOperationManager = null;

  public MediaService(Context paramContext, MediaOperationManager paramMediaOperationManager)
  {
    super(paramContext);
    this.mServiceConnection = new MpegServiceConnection(null);
    this.mMediaOperationManager = paramMediaOperationManager;
  }

  public boolean checkService(String paramString)
  {
    return "com.winca.service.media.MediaService".equals(paramString);
  }

  public boolean doBindService()
  {
    boolean bool1 = super.doBindService();
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = this.mContext.bindService(new Intent(IMediaInterface.class.getName()), this.mServiceConnection, 0);
      if (bool2)
        this.mIsBinding = true;
    }
    return bool2;
  }

  private class MpegServiceConnection
    implements ServiceConnection
  {
    private MpegServiceConnection()
    {
    }

    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      Log.e(MediaService.TAG, "onMpegServiceConnected");
      MediaService.this.mService = IMediaInterface.Stub.asInterface(paramIBinder);
      MediaService.this.mIsBind = Boolean.valueOf(true);
      MediaService.this.mMediaOperationManager.setMpegServiceInterface();
      MediaService.this.onServiceConnected(paramComponentName, paramIBinder, 222);
      MediaService.this.mContext.sendBroadcast(new Intent("MEDIA_SERVICE_CHANGE"));
    }

    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      Log.e(MediaService.TAG, "onMpegServiceDisconnected");
      MediaService.this.onServiceDisconnected(paramComponentName);
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.media.MediaService
 * JD-Core Version:    0.6.0
 */