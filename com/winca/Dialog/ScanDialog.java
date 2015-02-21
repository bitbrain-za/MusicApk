package com.winca.Dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

public class ScanDialog extends Dialog
{
  public static final int TIME_OUT = 45546;
  public static TextView searchInfo = null;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      if (paramMessage.what == 45546)
        ScanDialog.this.cancel();
    }
  };

  public ScanDialog(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    setContentView(2130903044);
    setTitle(paramContext.getResources().getString(2131165197));
    searchInfo = (TextView)findViewById(2131361806);
    setCanceledOnTouchOutside(false);
  }

  public void onBackPressed()
  {
  }

  public void show()
  {
    super.show();
  }

  public void showSearchinfo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      showSearchinfo("Searching SdCard.....");
      return;
    case 1:
      showSearchinfo("Searching UDisk......");
      return;
    case 2:
    }
    showSearchinfo("Searching Hardisk....");
  }

  public void showSearchinfo(String paramString)
  {
    if (searchInfo != null)
      searchInfo.setText(paramString);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.Dialog.ScanDialog
 * JD-Core Version:    0.6.0
 */