package com.winca.Dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.winca.music.MusicActivity;

public class LoadingDialog extends Dialog
{
  public final int CHECK_PERIOD = 15000;
  public final int MSG_CHECK = 1;
  private Context ctx = null;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
      }
      LoadingDialog.this.hideDialog(false);
    }
  };
  private DialogListener listener = null;
  private boolean loadingState = false;

  public LoadingDialog(MusicActivity paramMusicActivity)
  {
    super(paramMusicActivity, 16973935);
    setContentView(2130903045);
    this.ctx = paramMusicActivity;
  }

  private boolean getLoadingState()
  {
    return this.loadingState;
  }

  private void hideDialog(boolean paramBoolean)
  {
    hide();
    if ((this.listener != null) && (paramBoolean))
      this.listener.onHideDialog();
    setLoadingState(false);
  }

  private void resendMsg(int paramInt)
  {
    this.handler.removeMessages(paramInt);
    this.handler.sendEmptyMessageDelayed(paramInt, 15000L);
  }

  private void setLoadState(boolean paramBoolean)
  {
    this.loadingState = paramBoolean;
  }

  private void showDialog()
  {
    show();
    if (this.listener != null)
      this.listener.onShowDialog();
    update();
  }

  public boolean isShow()
  {
    return this.loadingState;
  }

  public void setDialogLisener(DialogListener paramDialogListener)
  {
    this.listener = paramDialogListener;
  }

  public void setLoadingState(boolean paramBoolean)
  {
    if (this.loadingState == paramBoolean)
      return;
    setLoadState(paramBoolean);
    if (this.loadingState)
    {
      showDialog();
      return;
    }
    hideDialog(true);
  }

  public void update()
  {
    if (this.ctx == null)
      return;
    resendMsg(1);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.Dialog.LoadingDialog
 * JD-Core Version:    0.6.0
 */