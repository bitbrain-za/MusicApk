package com.winca.music.Pages;

import android.util.Log;
import com.winca.music.MusicActivity;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import java.util.HashMap;

public class PageManager
{
  public final String TAG = "PageManager";
  MusicActivity mActivity;
  MusicPlayerDef.PageEnum mCurPageID = MusicPlayerDef.PageEnum.PAGE_UNKNOW;
  private HashMap<Enum, Page> mPageList = new HashMap();
  MusicPlayerDef.PageEnum mPrePageID = MusicPlayerDef.PageEnum.PAGE_UNKNOW;

  public PageManager(MusicActivity paramMusicActivity)
  {
    this.mActivity = paramMusicActivity;
  }

  private void checkView(MusicPlayerDef.PageEnum paramPageEnum)
  {
    if (!this.mPageList.containsKey(paramPageEnum))
    {
      Page localPage = PageFactory.createView(this.mActivity, paramPageEnum);
      if (localPage != null)
      {
        localPage.create();
        this.mPageList.put(paramPageEnum, localPage);
      }
    }
  }

  public MusicPlayerDef.PageEnum GetCurPageId()
  {
    return this.mCurPageID;
  }

  public MusicPlayerDef.PageEnum GetPrePage()
  {
    return this.mPrePageID;
  }

  public void JumpPage(MusicPlayerDef.PageEnum paramPageEnum)
  {
    if ((this.mCurPageID == paramPageEnum) && (this.mCurPageID != MusicPlayerDef.PageEnum.PAGE_UNKNOW))
      return;
    checkView(paramPageEnum);
    if (this.mCurPageID != MusicPlayerDef.PageEnum.PAGE_UNKNOW)
    {
      Page localPage2 = (Page)this.mPageList.get(this.mCurPageID);
      if (localPage2 != null)
        localPage2.setVisibility(8);
    }
    this.mPrePageID = this.mCurPageID;
    this.mCurPageID = paramPageEnum;
    Page localPage1 = (Page)this.mPageList.get(paramPageEnum);
    localPage1.onShow();
    localPage1.setVisibility(0);
    Log.i("PageManager", "Jump To Page" + paramPageEnum);
  }

  public Page getCuPage()
  {
    return (Page)this.mPageList.get(GetCurPageId());
  }

  public void initial()
  {
    JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
  }

  public void onDestrory()
  {
    MusicPlayerDef.PageEnum[] arrayOfPageEnum = MusicPlayerDef.PageEnum.values();
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfPageEnum.length)
        return;
      Log.i("PageManager", "Destroyr:" + arrayOfPageEnum[i]);
      Page localPage = (Page)this.mPageList.get(arrayOfPageEnum[i]);
      if (localPage == null)
        continue;
      localPage.OnDestrory();
    }
  }

  public boolean onKeyBack()
  {
    Page localPage = getCuPage();
    if (localPage != null)
      localPage.onKeyBack();
    return false;
  }

  public void onResume()
  {
    MusicPlayerDef.PageEnum[] arrayOfPageEnum = MusicPlayerDef.PageEnum.values();
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfPageEnum.length)
      {
        if (MusicPlayerControler.isPlaying())
          JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
        return;
      }
      Log.i("PageManager", "Destroyr:" + arrayOfPageEnum[i]);
      Page localPage = (Page)this.mPageList.get(arrayOfPageEnum[i]);
      if (localPage == null)
        continue;
      localPage.onResume();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.PageManager
 * JD-Core Version:    0.6.0
 */