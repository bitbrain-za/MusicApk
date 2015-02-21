package com.winca.service.media;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.widget.Toast;
import java.util.Iterator;
import java.util.List;

public class ServiceOperation
{
  public static final String MEDIA_SERVICE_CHANGE = "MEDIA_SERVICE_CHANGE";
  public static final String MEDIA_SERVICE_CHANGE_STATUS = "MEDIA_SERVICE_CHANGE_STATUS";
  protected Context mContext = null;
  protected Boolean mIsBind = Boolean.valueOf(false);
  protected boolean mIsBinding = false;
  protected IInterface mService = null;
  protected ServiceConnection mServiceConnection = null;

  public ServiceOperation(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public boolean checkService(String paramString)
  {
    return false;
  }

  public boolean doBindService()
  {
    return isServiceRunning();
  }

  public void doUnbindService()
  {
    if (this.mIsBinding)
    {
      this.mContext.unbindService(this.mServiceConnection);
      this.mServiceConnection = null;
      this.mService = null;
      this.mContext = null;
    }
  }

  public IInterface getService()
  {
    if (this.mService == null)
      Toast.makeText(this.mContext, "MediaService is Over", 1).show();
    return this.mService;
  }

  public boolean isServiceRunning()
  {
    Iterator localIterator = ((ActivityManager)this.mContext.getSystemService("activity")).getRunningServices(2147483647).iterator();
    do
      if (!localIterator.hasNext())
        return false;
    while (!checkService(((ActivityManager.RunningServiceInfo)localIterator.next()).service.getClassName()));
    return true;
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder, int paramInt)
  {
    Intent localIntent = new Intent("MEDIA_SERVICE_CHANGE");
    localIntent.putExtra("MEDIA_SERVICE_CHANGE_STATUS", true);
    if (this.mContext != null)
      this.mContext.sendBroadcast(localIntent);
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    this.mIsBinding = false;
    this.mIsBind = Boolean.valueOf(false);
    this.mService = null;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.media.ServiceOperation
 * JD-Core Version:    0.6.0
 */