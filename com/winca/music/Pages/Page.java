package com.winca.music.Pages;

import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.winca.music.MusicActivity;

public class Page
{
  private Animation inAnimation = null;
  private boolean isFirstAnimation = true;
  public MusicActivity mActivity;
  private RelativeLayout mCurrentLayout;
  public LayoutInflater mInflater = null;
  private RelativeLayout mMainLayout;
  private Animation oututAnimation = null;

  public Page(MusicActivity paramMusicActivity)
  {
    this.mActivity = paramMusicActivity;
    this.mMainLayout = ((RelativeLayout)this.mActivity.findViewById(2131361814));
    this.mInflater = ((LayoutInflater)this.mActivity.getSystemService("layout_inflater"));
    setDefaultAnimation();
  }

  private boolean isFirstAnimination()
  {
    return this.isFirstAnimation;
  }

  public void OnDestrory()
  {
  }

  public void create()
  {
  }

  public void createLayout(int paramInt)
  {
    this.mCurrentLayout = ((RelativeLayout)this.mInflater.inflate(paramInt, null));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.leftMargin = getLeftMargin();
    localLayoutParams.topMargin = getTopMargin();
    this.mMainLayout.addView(this.mCurrentLayout, localLayoutParams);
  }

  protected View findViewById(int paramInt)
  {
    return this.mCurrentLayout.findViewById(paramInt);
  }

  public int getLeftMargin()
  {
    return 0;
  }

  public int getTopMargin()
  {
    return 0;
  }

  public void onKeyBack()
  {
  }

  public void onResume()
  {
  }

  public void onShow()
  {
  }

  public void setDefaultAnimation()
  {
    setInAniDef();
    setOutAniDef();
  }

  public void setInAniDef()
  {
    this.inAnimation = AnimationUtils.loadAnimation(this.mActivity, 2130968581);
  }

  public void setInAnimation(Animation paramAnimation)
  {
    this.inAnimation = paramAnimation;
  }

  public void setIsFirstShow(boolean paramBoolean)
  {
    this.isFirstAnimation = paramBoolean;
  }

  public void setOutAniDef()
  {
    this.oututAnimation = AnimationUtils.loadAnimation(this.mActivity, 2130968580);
  }

  public void setOutAnimation(Animation paramAnimation)
  {
    this.oututAnimation = paramAnimation;
  }

  public void setVisibility(int paramInt)
  {
    Animation localAnimation;
    if (this.mCurrentLayout != null)
    {
      localAnimation = this.inAnimation;
      if (paramInt != 0)
        break label49;
      localAnimation = this.inAnimation;
    }
    while (true)
    {
      this.mCurrentLayout.setVisibility(paramInt);
      if (!isFirstAnimination())
        break;
      this.mCurrentLayout.setAnimation(localAnimation);
      localAnimation.start();
      return;
      label49: if (paramInt != 8)
        continue;
      localAnimation = this.oututAnimation;
    }
    setIsFirstShow(true);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.Page
 * JD-Core Version:    0.6.0
 */