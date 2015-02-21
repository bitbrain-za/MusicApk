package com.winca.customView;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;

public class WincaTextView extends TextView
{
  private final int MSG_STARTANIM = 1;
  private Animation mAnimation = null;
  private Context mContext = null;
  private Handler viewHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 1:
      }
      while (true)
      {
        super.handleMessage(paramMessage);
        return;
        WincaTextView.this.startAnimation(WincaTextView.this.mAnimation);
      }
    }
  };

  public WincaTextView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968581);
  }

  public WincaTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    this.mAnimation = AnimationUtils.loadAnimation(this.mContext, 2130968581);
  }

  public WincaTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public boolean isFocused()
  {
    return true;
  }

  public void setVisibility(int paramInt)
  {
    if (paramInt == 0)
      this.viewHandler.sendEmptyMessageDelayed(1, 500L);
    super.setVisibility(paramInt);
  }

  public void setVisibility(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
    {
      this.mAnimation.setDuration(paramInt2);
      this.viewHandler.sendEmptyMessageDelayed(1, 0L);
    }
    super.setVisibility(paramInt1);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.customView.WincaTextView
 * JD-Core Version:    0.6.0
 */