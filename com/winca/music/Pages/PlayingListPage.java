package com.winca.music.Pages;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageButton;
import android.widget.ListView;
import com.winca.music.MusicActivity;
import com.winca.music.adapter.SongAdapter;
import com.winca.music.player.MusicOperaUtil;
import com.winca.music.player.MusicPlayerDataManager;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import java.util.Map;

public class PlayingListPage extends Page
  implements MusicPlayerDef, AdapterView.OnItemClickListener, View.OnClickListener
{
  private IntentFilter filter = null;
  private MusicActivity mActivity = null;
  private MyBroadcastReceiver mBroadcaseReceiver;
  private ListView mPlayList = null;
  private ImageButton mPlaying = null;
  private SongAdapter mSongAdapter = null;

  public PlayingListPage(MusicActivity paramMusicActivity)
  {
    super(paramMusicActivity);
    this.mActivity = paramMusicActivity;
  }

  private void initAdapter()
  {
    Map localMap = this.mActivity.mDataManager.getPlayingSongMap();
    this.mSongAdapter = new SongAdapter(this.mActivity, localMap, 2130903051);
    this.mPlayList.setAdapter(this.mSongAdapter);
  }

  private void initBrocastReceiver()
  {
    this.mBroadcaseReceiver = new MyBroadcastReceiver(null);
    this.filter = new IntentFilter();
    this.filter.addAction("com.winca.kkcmh.UPDATA_ADAPTER");
    this.filter.addAction("com.winca.service.scannerMedia.SCAN_TASK_FINISHED");
    this.mActivity.registerReceiver(this.mBroadcaseReceiver, this.filter);
  }

  private void initWidgets()
  {
    this.mPlayList = ((ListView)findViewById(2131361839));
    this.mPlaying = ((ImageButton)findViewById(2131361840));
  }

  private void setListener()
  {
    this.mPlayList.setOnItemClickListener(this);
    this.mPlaying.setOnClickListener(this);
  }

  private void setSelection()
  {
    if (MusicPlayerDataManager.curPlayPos != -1)
    {
      int i = MusicPlayerDataManager.getSelectionPos();
      this.mPlayList.setSelection(i);
    }
  }

  private void unRegisterBrocast()
  {
    this.mActivity.unregisterReceiver(this.mBroadcaseReceiver);
  }

  public void OnDestrory()
  {
    unRegisterBrocast();
    super.OnDestrory();
  }

  public void create()
  {
    createLayout(2130903049);
    setVisibility(8);
    initWidgets();
    initAdapter();
    setListener();
    initBrocastReceiver();
    super.create();
  }

  public void onClick(View paramView)
  {
    if (paramView == this.mPlaying)
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    MusicOperaUtil.SetPlay(this.mActivity, paramInt);
  }

  public void onKeyBack()
  {
    this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_MUSIC);
  }

  public void onShow()
  {
    setSelection();
    super.onShow();
  }

  private class MyBroadcastReceiver extends BroadcastReceiver
  {
    private MyBroadcastReceiver()
    {
    }

    private void getUpdataAdapter()
    {
      if (PlayingListPage.this.mSongAdapter != null)
      {
        PlayingListPage.this.setSelection();
        PlayingListPage.this.mSongAdapter.notifyDataSetChanged();
      }
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      if (str.compareTo("com.winca.kkcmh.UPDATA_ADAPTER") == 0)
        getUpdataAdapter();
      do
        return;
      while (!str.equals("com.winca.service.scannerMedia.SCAN_TASK_FINISHED"));
      PlayingListPage.this.mActivity.mDataManager.updataPlayingMap();
      getUpdataAdapter();
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.PlayingListPage
 * JD-Core Version:    0.6.0
 */