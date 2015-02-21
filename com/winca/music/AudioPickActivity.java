package com.winca.music;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.player.MusicPickerPlayer;
import com.winca.music.player.MusicPickerPlayer.IPlayStateListener;

public class AudioPickActivity extends Activity
  implements View.OnClickListener, MusicPickerPlayer.IPlayStateListener
{
  public final int HANDLER_MSG_UPDATE_TIME = 1;
  private final String TAG = AudioPickActivity.class.getName();
  private TextView curTimeTv = null;
  private String filePath = null;
  private boolean isTouch = false;
  private Handler mMusicHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 1:
      }
      int i;
      int j;
      do
      {
        String str1;
        String str2;
        do
        {
          return;
          i = AudioPickActivity.this.player.getCurPos();
          j = AudioPickActivity.this.player.getTotolTime();
          str1 = AudioPickActivity.this.player.getCurPosStr();
          str2 = AudioPickActivity.this.player.getTotalTimeStr();
        }
        while ((str1 == null) || (str2 == null));
        AudioPickActivity.this.curTimeTv.setText(str1);
        AudioPickActivity.this.totalTimeTv.setText(str2);
      }
      while (AudioPickActivity.this.isTouch);
      int k = i * 100 / j;
      AudioPickActivity.this.timeSeekBar.setProgress(k);
    }
  };
  private SeekBar.OnSeekBarChangeListener mSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener()
  {
    public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
    {
      AudioPickActivity.this.isTouch = paramBoolean;
      Log.i(AudioPickActivity.this.TAG, "ProgressBar:" + paramInt + "  fromUsr:" + paramBoolean);
    }

    public void onStartTrackingTouch(SeekBar paramSeekBar)
    {
      Log.i(AudioPickActivity.this.TAG, "On Start Touch:");
      AudioPickActivity.this.isTouch = true;
    }

    public void onStopTrackingTouch(SeekBar paramSeekBar)
    {
      AudioPickActivity.this.isTouch = false;
      int i = paramSeekBar.getProgress();
      AudioPickActivity.this.timeSeekBar.setProgress(paramSeekBar.getProgress());
      int j = 1000 * (int)(AudioPickActivity.this.player.getTotolTime() * (i / 100.0D));
      AudioPickActivity.this.player.seek(j);
      Log.i(AudioPickActivity.this.TAG, "Stop Touch");
    }
  };
  private TimeProgressThread mTimeThread = null;
  private TextView musicNameTx = null;
  private Button pauseBtn = null;
  private Button playBtn = null;
  private MusicPickerPlayer player = null;
  private SeekBar timeSeekBar = null;
  private TextView totalTimeTv = null;

  private void getPlaySrcFromOtherApps(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      Uri localUri = paramIntent.getData();
      if (localUri != null)
      {
        this.filePath = localUri.getPath();
        this.player = new MusicPickerPlayer(this, this.filePath);
        this.player.setStateListener(this);
        this.player.play();
        AudioEntity localAudioEntity = this.player.getAudioEntity();
        this.musicNameTx.setText(localAudioEntity.getTitle());
        startThread();
      }
    }
  }

  private void init()
  {
    initWidagets();
    setListener();
    showPlayState();
  }

  private void initWidagets()
  {
    this.playBtn = ((Button)findViewById(2131361838));
    this.pauseBtn = ((Button)findViewById(2131361837));
    this.musicNameTx = ((TextView)findViewById(2131361832));
    this.totalTimeTv = ((TextView)findViewById(2131361836));
    this.curTimeTv = ((TextView)findViewById(2131361834));
    this.timeSeekBar = ((SeekBar)findViewById(2131361835));
  }

  private void killActivity()
  {
    stopThread();
    finish();
  }

  private void setListener()
  {
    this.playBtn.setOnClickListener(this);
    this.pauseBtn.setOnClickListener(this);
    this.timeSeekBar.setOnSeekBarChangeListener(this.mSeekBarChangeListener);
  }

  private void showCurTime()
  {
    if (this.player != null)
      this.curTimeTv.setText(this.player.getCurPosStr());
  }

  private void showPlayState()
  {
    int i = 2;
    if (this.player != null)
      i = this.player.getPlayerState();
    Log.i(this.TAG, "getPlayState:" + i);
    if (i == 2)
    {
      this.playBtn.setVisibility(0);
      this.pauseBtn.setVisibility(8);
    }
    do
      return;
    while (i != 1);
    this.playBtn.setVisibility(8);
    this.pauseBtn.setVisibility(0);
  }

  private void showTime()
  {
    showCurTime();
    showTotalTime();
  }

  private void showTotalTime()
  {
    if (this.player != null)
      this.totalTimeTv.setText(this.player.getTotalTimeStr());
  }

  private void startThread()
  {
    if (this.mTimeThread == null)
    {
      this.mTimeThread = new TimeProgressThread();
      this.mTimeThread.start();
      return;
    }
    this.mTimeThread.setThreadState(true);
  }

  private void stopThread()
  {
    if (this.mTimeThread != null)
    {
      this.mTimeThread.setThreadState(false);
      this.mTimeThread = null;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131361838:
    case 2131361837:
    }
    do
    {
      do
        return;
      while (this.player == null);
      this.player.play();
      return;
    }
    while (this.player == null);
    this.player.pause();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903048);
    init();
    getPlaySrcFromOtherApps(getIntent());
  }

  protected void onDestroy()
  {
    Log.e(this.TAG, "On Destory");
    this.player.deInit();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      killActivity();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onMusicComplete()
  {
    killActivity();
  }

  public void onMusicPause()
  {
    Log.i(this.TAG, "On MusicPause");
    showPlayState();
  }

  public void onMusicPlay()
  {
    Log.i(this.TAG, "On MusicPlay");
    showPlayState();
  }

  public void onPause()
  {
    super.onPause();
    killActivity();
  }

  class TimeProgressThread extends Thread
  {
    boolean isRun = false;

    public TimeProgressThread()
    {
    }

    public boolean isEnd()
    {
      return this.isRun;
    }

    public void run()
    {
      while (true)
      {
        if (!this.isRun)
          return;
        try
        {
          AudioPickActivity.this.mMusicHandler.sendEmptyMessage(1);
          sleep(500L);
        }
        catch (InterruptedException localInterruptedException)
        {
          setThreadState(false);
          localInterruptedException.printStackTrace();
        }
      }
    }

    public void setThreadState(boolean paramBoolean)
    {
      this.isRun = paramBoolean;
    }

    public void start()
    {
      monitorenter;
      try
      {
        setThreadState(true);
        super.start();
        monitorexit;
        return;
      }
      finally
      {
        localObject = finally;
        monitorexit;
      }
      throw localObject;
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.AudioPickActivity
 * JD-Core Version:    0.6.0
 */