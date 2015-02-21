package com.winca.music.Pages;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.winca.customView.WincaTextView;
import com.winca.music.MusicActivity;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.player.MusicOperaUtil;
import com.winca.music.player.MusicPlayerControler;
import com.winca.music.player.MusicPlayerDataManager;
import com.winca.music.player.MusicPlayerDef;
import com.winca.music.player.MusicPlayerDef.PageEnum;
import com.winca.music.preference.MusicSharePreference;
import com.winca.music.util.MusicUtil;
import java.util.Map;

public class PlayMusicPage extends Page
  implements View.OnClickListener, MusicPlayerDef
{
  private static final String TAG = "PlayMusicView";
  private static boolean mChangeCDBrack = false;
  public final int PLAY_STATE_PAUSE = 1;
  public final int PLAY_STATE_PLAY = 0;
  public final int PLAY_STATE_STOP = 2;
  private int curPlayMode = 2;
  private IntentFilter filter = null;
  private boolean isSeekBarTouching = false;
  private ImageView mAlbumImage = null;
  private TextView mCurrentTime = null;
  private ImageView mNext = null;
  NotificationManager mNotificationManager = null;
  private ImageView mPause = null;
  private ImageView mPlay = null;
  private ImageView mPlayCDBack = null;
  private ImageView mPlayList = null;
  private ImageView mPlayRandom = null;
  private ImageView mPlayRepeatAll = null;
  private ImageView mPlayRepeatList = null;
  private ImageView mPlayRepeatOnce = null;
  private SeekBar mPlaySeekBar = null;
  private WincaTextView mPlayingAlbum = null;
  private WincaTextView mPlayingArtist = null;
  private WincaTextView mPlayingSong = null;
  private ImageView mPrevious = null;
  private SeekBar.OnSeekBarChangeListener mSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener()
  {
    public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
    {
      int i = (int)((float)(0.01D * paramInt) * PlayMusicPage.this.miTotoalTime);
      PlayMusicPage.this.mCurrentTime.setText(MusicUtil.makeTimeString(PlayMusicPage.this.mActivity, i / 1000));
    }

    public void onStartTrackingTouch(SeekBar paramSeekBar)
    {
      PlayMusicPage.this.isSeekBarTouching = true;
    }

    public void onStopTrackingTouch(SeekBar paramSeekBar)
    {
      PlayMusicPage.this.mPlaySeekBar.setProgress(paramSeekBar.getProgress());
      Intent localIntent = new Intent("com.winca.music.seekBar");
      localIntent.putExtra("seekBarPosition", paramSeekBar.getProgress());
      PlayMusicPage.this.mActivity.sendBroadcast(localIntent);
      if (!MusicPlayerControler.isPlaying())
        MusicOperaUtil.setPlayPause(PlayMusicPage.this.mActivity);
      PlayMusicPage.this.isSeekBarTouching = false;
    }
  };
  private TextView mTotalTime = null;
  private MusicViewBrocastReceiver mViewSatateReceiver = null;
  private int miTotoalTime = 0;
  private MyProgressBroadCastReceiver receiver;

  public PlayMusicPage(MusicActivity paramMusicActivity)
  {
    super(paramMusicActivity);
  }

  private void ShowViewByState(int paramInt)
  {
    if (paramInt == 0)
    {
      this.mPause.setVisibility(0);
      this.mPause.setEnabled(true);
      this.mPlay.setVisibility(8);
      this.mPlay.setEnabled(false);
      new MusicSharePreference(this.mActivity).StoryLastPlayState(0);
    }
    do
    {
      return;
      if (paramInt != 1)
        continue;
      this.mPause.setVisibility(8);
      this.mPause.setEnabled(false);
      this.mPlay.setVisibility(0);
      this.mPlay.setEnabled(true);
      new MusicSharePreference(this.mActivity).StoryLastPlayState(1);
      return;
    }
    while (paramInt != 2);
    this.mPause.setVisibility(8);
    this.mPause.setEnabled(false);
    this.mPlay.setVisibility(0);
    this.mPlay.setEnabled(true);
  }

  private void cdTrackAnimination(boolean paramBoolean)
  {
    boolean bool4;
    if (paramBoolean)
    {
      if (!mChangeCDBrack)
        break label44;
      this.mPlayCDBack.setBackgroundResource(2130837610);
      boolean bool3 = mChangeCDBrack;
      bool4 = false;
      if (!bool3)
        break label38;
    }
    while (true)
    {
      mChangeCDBrack = bool4;
      return;
      label38: bool4 = true;
    }
    label44: this.mPlayCDBack.setBackgroundResource(2130837611);
    boolean bool1 = mChangeCDBrack;
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      mChangeCDBrack = bool2;
      return;
      bool2 = true;
    }
  }

  private void getNewPlay(int paramInt)
  {
    AudioEntity localAudioEntity = (AudioEntity)this.mActivity.mDataManager.getPlayerMap().get(Integer.valueOf(paramInt));
    if (localAudioEntity != null)
    {
      this.mPlayingSong.setText(localAudioEntity.getTitle());
      this.mPlayingAlbum.setText(localAudioEntity.getAlbum());
      this.mPlayingArtist.setText(localAudioEntity.getArtist());
      this.mPlayingSong.setVisibility(0, 200);
      this.mPlayingAlbum.setVisibility(0, 400);
      this.mPlayingArtist.setVisibility(0, 600);
    }
  }

  private void initBrocast()
  {
    this.mViewSatateReceiver = new MusicViewBrocastReceiver(null);
    this.filter = new IntentFilter();
    this.filter.addAction("com.winca.MusicPlay.BROCAST_STATE");
    this.filter.addAction("com.winca.MusicPlay.BROCAST_PLAYING_INFO");
    this.filter.addAction("com.winca.MusicPlay.BROCAST_PLAY_MODE");
    this.filter.addAction("com.winca.kkcmh.CURENT_PLAY_ID");
    this.mActivity.registerReceiver(this.mViewSatateReceiver, this.filter);
    this.receiver = new MyProgressBroadCastReceiver();
    IntentFilter localIntentFilter = new IntentFilter("com.winca.music.progress");
    this.mActivity.registerReceiver(this.receiver, localIntentFilter);
  }

  private void initWidget()
  {
    this.mPlaySeekBar = ((SeekBar)findViewById(2131361849));
    this.mPlayList = ((ImageView)findViewById(2131361851));
    this.mPlayRandom = ((ImageView)findViewById(2131361858));
    this.mPlayRepeatList = ((ImageView)findViewById(2131361861));
    this.mPlayRepeatAll = ((ImageView)findViewById(2131361859));
    this.mPlayRepeatOnce = ((ImageView)findViewById(2131361860));
    this.mPrevious = ((ImageView)findViewById(2131361852));
    this.mNext = ((ImageView)findViewById(2131361856));
    this.mPause = ((ImageView)findViewById(2131361854));
    this.mPause.setVisibility(8);
    this.mPause.setEnabled(false);
    this.mPlay = ((ImageView)findViewById(2131361855));
    this.mPlay.setVisibility(0);
    this.mPlay.setEnabled(true);
    this.mPlayCDBack = ((ImageView)findViewById(2131361844));
    this.mPlayingSong = ((WincaTextView)findViewById(2131361845));
    this.mPlayingAlbum = ((WincaTextView)findViewById(2131361846));
    this.mPlayingArtist = ((WincaTextView)findViewById(2131361847));
    this.mCurrentTime = ((TextView)findViewById(2131361848));
    this.mTotalTime = ((TextView)findViewById(2131361850));
    this.mAlbumImage = ((ImageView)findViewById(2131361843));
  }

  private void setListener()
  {
    this.mPlayRepeatList.setOnClickListener(this);
    this.mPlayList.setOnClickListener(this);
    this.mPlayRandom.setOnClickListener(this);
    this.mPlayRepeatAll.setOnClickListener(this);
    this.mPlayRepeatOnce.setOnClickListener(this);
    this.mPrevious.setOnClickListener(this);
    this.mPause.setOnClickListener(this);
    this.mPlay.setOnClickListener(this);
    this.mNext.setOnClickListener(this);
    this.mPlaySeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
  }

  private void setPlayMode(int paramInt)
  {
    MusicOperaUtil.setPlayMode(this.mActivity, paramInt);
  }

  private void showCurPlayInfo()
  {
    if (MusicPlayerDataManager.curPlayAudio != null)
    {
      this.mPlayingSong.setText(MusicPlayerDataManager.curPlayAudio.getTitle());
      this.mPlayingArtist.setText(MusicPlayerDataManager.curPlayAudio.getArtist());
      this.mPlayingAlbum.setText(MusicPlayerDataManager.curPlayAudio.getAlbum());
      this.mPlayingSong.setVisibility(0, 200);
      this.mPlayingAlbum.setVisibility(0, 400);
      this.mPlayingArtist.setVisibility(0, 600);
    }
  }

  public void OnDestrory()
  {
    Log.i("PlayMusicView", "PlayMusicView   OnDestrory");
    this.mActivity.unregisterReceiver(this.mViewSatateReceiver);
    this.mActivity.unregisterReceiver(this.receiver);
    super.OnDestrory();
  }

  public void ShowCurPlayMode()
  {
    if (this.curPlayMode == 1)
    {
      this.mPlayRandom.setVisibility(8);
      this.mPlayRepeatAll.setVisibility(8);
      this.mPlayRepeatList.setVisibility(8);
      this.mPlayRepeatOnce.setVisibility(0);
      this.mPlayRandom.setEnabled(false);
      this.mPlayRepeatAll.setEnabled(false);
      this.mPlayRepeatList.setEnabled(false);
      this.mPlayRepeatOnce.setEnabled(true);
    }
    do
    {
      return;
      if (this.curPlayMode == 2)
      {
        this.mPlayRandom.setVisibility(8);
        this.mPlayRepeatList.setVisibility(8);
        this.mPlayRepeatAll.setVisibility(0);
        this.mPlayRepeatOnce.setVisibility(8);
        this.mPlayRandom.setEnabled(false);
        this.mPlayRepeatAll.setEnabled(true);
        this.mPlayRepeatList.setEnabled(false);
        this.mPlayRepeatOnce.setEnabled(false);
        return;
      }
      if (this.curPlayMode != 0)
        continue;
      this.mPlayRandom.setVisibility(0);
      this.mPlayRepeatList.setVisibility(8);
      this.mPlayRepeatAll.setVisibility(8);
      this.mPlayRepeatOnce.setVisibility(8);
      this.mPlayRandom.setEnabled(true);
      this.mPlayRepeatAll.setEnabled(false);
      this.mPlayRepeatList.setEnabled(false);
      this.mPlayRepeatOnce.setEnabled(false);
      return;
    }
    while (this.curPlayMode != 3);
    this.mPlayRandom.setVisibility(8);
    this.mPlayRepeatAll.setVisibility(8);
    this.mPlayRepeatOnce.setVisibility(8);
    this.mPlayRepeatList.setVisibility(0);
    this.mPlayRandom.setEnabled(false);
    this.mPlayRepeatAll.setEnabled(false);
    this.mPlayRepeatList.setEnabled(true);
    this.mPlayRepeatOnce.setEnabled(false);
  }

  public void create()
  {
    createLayout(2130903050);
    setVisibility(8);
    initWidget();
    setListener();
    initBrocast();
    ShowCurPlayMode();
    readLastMode();
    super.create();
  }

  public void onClick(View paramView)
  {
    if (paramView == this.mPlayList)
      this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_PLAYING_LIST);
    do
    {
      return;
      if (paramView == this.mPrevious)
      {
        MusicOperaUtil.SetPre(this.mActivity);
        return;
      }
      if ((paramView == this.mPause) || (paramView == this.mPlay))
      {
        MusicOperaUtil.setPlayPause(this.mActivity);
        return;
      }
      if (paramView != this.mNext)
        continue;
      MusicOperaUtil.SetNext(this.mActivity);
      return;
    }
    while ((paramView != this.mPlayRandom) && (paramView != this.mPlayRepeatAll) && (paramView != this.mPlayRepeatOnce) && (paramView != this.mPlayRepeatList));
    MusicOperaUtil.ChangePlayMode(this.mActivity);
  }

  public void onKeyBack()
  {
    this.mActivity.JumpPage(MusicPlayerDef.PageEnum.PAGE_MAIN_PAGE);
  }

  public void onShow()
  {
    showCurPlayInfo();
  }

  public void readLastMode()
  {
    int i = new MusicSharePreference(this.mActivity).ReadPlayMode();
    if (i != -1)
      setPlayMode(i);
  }

  private class MusicViewBrocastReceiver extends BroadcastReceiver
  {
    private MusicViewBrocastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str = paramIntent.getAction();
      if (str.compareTo("com.winca.MusicPlay.BROCAST_STATE") == 0)
      {
        int k = paramIntent.getIntExtra("com.winca.MusicPlay.STATE_KEY", -1);
        Log.i("MusicActivity", "PlayingView Get:" + k);
        if (k != -1)
          PlayMusicPage.this.ShowViewByState(k);
      }
      int i;
      do
      {
        do
          while (true)
          {
            return;
            if (str.compareTo("com.winca.kkcmh.CURENT_PLAY_ID") != 0)
              break;
            int j = paramIntent.getIntExtra("cur_ID", -1);
            if (j == -1)
              continue;
            PlayMusicPage.this.getNewPlay(j);
            return;
          }
        while (str.compareTo("com.winca.MusicPlay.BROCAST_PLAY_MODE") != 0);
        i = paramIntent.getIntExtra("com.winca.MusicPlay.MODE_KEY", -1);
      }
      while (i == -1);
      PlayMusicPage.this.curPlayMode = i;
      Log.i("PlayMusicView", "Reveive Music Repeat Mode:" + PlayMusicPage.this.curPlayMode);
      new MusicSharePreference(PlayMusicPage.this.mActivity).StoryPlayMode(PlayMusicPage.this.curPlayMode);
      PlayMusicPage.this.ShowCurPlayMode();
    }
  }

  public class MyProgressBroadCastReceiver extends BroadcastReceiver
  {
    public MyProgressBroadCastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        PlayMusicPage.this.miTotoalTime = paramIntent.getIntExtra("total", 0);
        int i = paramIntent.getIntExtra("position", 0);
        int j = i * 100 / PlayMusicPage.this.miTotoalTime;
        boolean bool = paramIntent.getBooleanExtra("isPause", false);
        PlayMusicPage.this.cdTrackAnimination(bool);
        if (!PlayMusicPage.this.isSeekBarTouching)
        {
          if ((i == -1) || (PlayMusicPage.this.miTotoalTime == -1))
            PlayMusicPage.this.mTotalTime.setText("0:00");
          new MusicSharePreference(PlayMusicPage.this.mActivity).StoryLastPosition(j);
          PlayMusicPage.this.mCurrentTime.setText(MusicUtil.makeTimeString(paramContext, i / 1000));
          PlayMusicPage.this.mTotalTime.setText(MusicUtil.makeTimeString(paramContext, PlayMusicPage.this.miTotoalTime / 1000));
          PlayMusicPage.this.mPlaySeekBar.setProgress(j);
          PlayMusicPage.this.mPlaySeekBar.invalidate();
        }
        return;
      }
      catch (ArithmeticException localArithmeticException)
      {
        PlayMusicPage.this.mTotalTime.setText("0:00");
      }
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.Pages.PlayMusicPage
 * JD-Core Version:    0.6.0
 */