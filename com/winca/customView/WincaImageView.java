package com.winca.customView;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;

public class WincaImageView extends ImageView
{
  private final int MSG_STARTANIM = 1;
  private Handler viewHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 1:
      }
      super.handleMessage(paramMessage);
    }
  };

  public WincaImageView(Context paramContext)
  {
    super(paramContext);
  }

  public WincaImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
  }

  public void setVisibility(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
      this.viewHandler.sendEmptyMessageDelayed(1, 0L);
    super.setVisibility(paramInt1);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.customView.WincaImageView
 * JD-Core Version:    0.6.0
 */