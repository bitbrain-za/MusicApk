package com.winca.music.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.winca.music.preference.MusicSharePreference;
import com.winca.music.service.MusicService;
import java.util.Timer;

public class MusicPlayerControler
  implements MusicPlayerDef
{
  public static final int REPEAT_ALL = 2;
  public static final int REPEAT_CURRENT = 1;
  public static final int REPEAT_NONE = 0;
  public static final String TAG = "MusicPlayer";
  private static boolean bResetPlayer;
  private static boolean isPlayHistory;
  public static boolean isPlaying = false;
  private int CurPlayMode = 2;
  private IntentFilter commandFilter = null;
  private int curPlayState = 2;
  private boolean isSoundSourceSelected = false;
  private MusicService mContext = null;
  private MyBroadcastReceiver mIntentReceiver = null;
  private LocalMusicPlayer mLocalPlayer;
  private MusicPlayBrocastReceiver mOperaReceiver = null;
  private SeekBarBroadcastReceiver mReceiver = null;
  private Timer mTimer = null;
  private IntentFilter musicFilter = null;
  private boolean repeatAll = false;

  static
  {
    bResetPlayer = true;
    isPlayHistory = false;
  }

  public MusicPlayerControler(MusicService paramMusicService)
  {
    this.mContext = paramMusicService;
    init();
  }

  private void EnterAudio()
  {
    if (getPlayState() == 1)
      Play();
  }

  private void InitialPlayer()
  {
    this.mLocalPlayer = new LocalMusicPlayer(this.mContext);
    this.mLocalPlayer.initPlayer();
  }

  private void WatchOnPlayerState(int paramInt)
  {
    Log.i("MusicActivity", "Get New State:" + paramInt);
    if (this.curPlayState == 0)
      isPlaying = true;
    while (true)
    {
      MusicOperaUtil.BrocastPlayState(this.mContext, this.curPlayState);
      return;
      isPlaying = false;
    }
  }

  private void getNewMode(int paramInt)
  {
    if ((paramInt < 0) && (paramInt > 3))
      return;
    this.CurPlayMode = paramInt;
    setPlayMode(this.CurPlayMode);
  }

  public static boolean getResetState()
  {
    return bResetPlayer;
  }

  private void init()
  {
    InitialPlayer();
    requreVoiceSource();
    initBrocast();
    setPlayState(2);
  }

  private void initBrocast()
  {
    this.mOperaReceiver = new MusicPlayBrocastReceiver(null);
    this.musicFilter = new IntentFilter();
    this.musicFilter.addAction("com.winca.MusicPlay.OPERATION_BROCAST");
    this.musicFilter.addAction("com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE");
    this.musicFilter.addAction("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE");
    this.mContext.registerReceiver(this.mOperaReceiver, this.musicFilter);
    this.mReceiver = new SeekBarBroadcastReceiver(null);
    IntentFilter localIntentFilter = new IntentFilter("com.winca.music.seekBar");
    this.mContext.registerReceiver(this.mReceiver, localIntentFilter);
    this.mIntentReceiver = new MyBroadcastReceiver(null);
    this.commandFilter = new IntentFilter();
    this.commandFilter.addAction("CHANNEL_NOTIFICATION");
    this.commandFilter.addAction("com.winca.service.audiochannel.audio");
    this.commandFilter.addAction("com.winca.video.VIDEO_ACTION");
    this.commandFilter.addAction("com.winca.music_EXIT_ACTION");
    this.commandFilter.addAction("com.winca.filemanager.VIDEO_ACTION");
    this.commandFilter.addAction("com.winca.filemanager.MUSIC_ACTION");
    this.commandFilter.addAction("com.winca.service.audioplayer.action.KEY_TYPE");
    this.commandFilter.addAction("com.winca.service.audioplayer.action.AUDIO_PLAYER_ONNEWINTENT");
    this.mContext.registerReceiver(this.mIntentReceiver, this.commandFilter);
  }

  public static boolean isPlayHistory()
  {
    return isPlayHistory;
  }

  public static boolean isPlaying()
  {
    return isPlaying;
  }

  private void requreVoiceSource()
  {
    MusicOperaUtil.BrocastInquireSoundSounce(this.mContext);
  }

  public static void setIsPlayHistory(boolean paramBoolean)
  {
    isPlayHistory = paramBoolean;
  }

  public static void setIsPlayint(boolean paramBoolean)
  {
    isPlaying = paramBoolean;
  }

  private void setPlayState(int paramInt)
  {
    if (this.curPlayState == paramInt)
      return;
    this.curPlayState = paramInt;
    WatchOnPlayerState(this.curPlayState);
  }

  public static void setResetState(boolean paramBoolean)
  {
    bResetPlayer = paramBoolean;
  }

  private void unResigerBrocast()
  {
    this.mContext.unregisterReceiver(this.mOperaReceiver);
    this.mContext.unregisterReceiver(this.mReceiver);
    this.mContext.unregisterReceiver(this.mIntentReceiver);
  }

  public boolean Continue()
  {
    LocalMusicPlayer localLocalMusicPlayer = this.mLocalPlayer;
    int i = 0;
    if (localLocalMusicPlayer != null)
    {
      Log.i("MusicPlayer", "Continue()");
      setPlayState(0);
      this.mLocalPlayer.play();
      i = 1;
    }
    return i;
  }

  public void Next()
  {
    if (this.mLocalPlayer != null)
    {
      setPlayState(0);
      this.mLocalPlayer.next(true);
    }
  }

  public boolean Pause()
  {
    if (this.mLocalPlayer != null)
    {
      if (this.mLocalPlayer.isPlaying())
      {
        Log.e("MusicPlayer", "Pause");
        setPlayState(1);
        this.mLocalPlayer.pause();
        return true;
      }
      Log.e("MusicPlayer", "Play");
      setPlayState(0);
      this.mLocalPlayer.play();
      return true;
    }
    return false;
  }

  public void Play()
  {
    if (this.mLocalPlayer != null)
    {
      setPlayState(0);
      this.mLocalPlayer.play();
    }
  }

  public void Play(int paramInt)
  {
    this.mLocalPlayer.setQueuePosition(paramInt);
    setPlayState(0);
  }

  public void Pre()
  {
    if (this.mLocalPlayer != null)
    {
      setPlayState(0);
      this.mLocalPlayer.prev();
    }
  }

  public void ResetPlayer()
  {
    Log.i("MusicPlayer", "ResetPlayer!");
    isPlaying = false;
    setResetState(true);
    setPlayState(2);
    this.mLocalPlayer.resetLocalPlayer();
  }

  public void Stop()
  {
    if (this.mLocalPlayer != null)
    {
      Log.i("MusicPlayer", "Stop");
      setPlayState(2);
      this.mLocalPlayer.stop();
    }
  }

  public int getCurPlayMode()
  {
    return this.CurPlayMode;
  }

  public String getCurPlayPath()
  {
    return this.mLocalPlayer.getPath();
  }

  public int getCurPos()
  {
    return this.mLocalPlayer.getQueuePosition();
  }

  public int getPlayState()
  {
    return this.curPlayState;
  }

  public void leaveAudio()
  {
    Log.e("MusicPlayer", "leaveAudio---");
    if (getPlayState() == 0)
      Pause();
  }

  public void onDestory()
  {
    Log.i("MusicPlayer", "onDestory");
    unResigerBrocast();
    ResetPlayer();
    this.mLocalPlayer.deInit();
  }

  public void setPlayMode(int paramInt)
  {
    if (paramInt == 0)
    {
      this.mLocalPlayer.setShuffleMode(1);
      if (paramInt != 3)
        break label69;
      this.repeatAll = true;
      this.mLocalPlayer.setRepeatAll(this.repeatAll);
    }
    while (true)
    {
      this.CurPlayMode = paramInt;
      this.mLocalPlayer.setRepeatMode(paramInt);
      MusicOperaUtil.BrocastPlayMode(this.mContext, this.CurPlayMode);
      return;
      this.mLocalPlayer.setShuffleMode(0);
      break;
      label69: this.repeatAll = false;
      this.mLocalPlayer.setRepeatAll(this.repeatAll);
    }
  }

  public void updatePlayerPlayList(String[] paramArrayOfString)
  {
    this.mLocalPlayer.open(paramArrayOfString, 0);
  }

  private class MusicPlayBrocastReceiver extends BroadcastReceiver
  {
    private MusicPlayBrocastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str1 = paramIntent.getAction();
      Log.i("MusicPlayer", "MusicPlayBrocastReceiver Get Action:" + str1);
      String str2;
      if (str1.compareTo("com.winca.MusicPlay.OPERATION_BROCAST") == 0)
      {
        str2 = paramIntent.getStringExtra("com.winca.MusicPlay.COMMAND_KEY");
        Log.i("MusicBrocast", "Mucic Command :" + str2);
        if (str2 != null)
        {
          if (str2.compareTo("winca.music.paly") != 0)
            break label107;
          int j = paramIntent.getIntExtra("Id", -1);
          if (j != -1)
            MusicPlayerControler.this.Play(j);
        }
      }
      label107: int i;
      do
      {
        do
        {
          do
          {
            return;
            if (str2.compareTo("winca.music.pause") == 0)
            {
              MusicPlayerControler.this.Pause();
              return;
            }
            if (str2.compareTo("winca.music.Next") == 0)
            {
              MusicPlayerControler.this.Next();
              return;
            }
            if (str2.compareTo("winca.music.Pre") == 0)
            {
              MusicPlayerControler.this.Pre();
              return;
            }
            if (str2.compareTo("winca.music.stop") != 0)
              continue;
            MusicPlayerControler.this.Stop();
            return;
          }
          while (str2.compareTo("winca.music.reset") != 0);
          MusicPlayerControler.this.ResetPlayer();
          return;
          if (str1.compareTo("com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE") != 0)
            continue;
          MusicPlayerControler localMusicPlayerControler = MusicPlayerControler.this;
          localMusicPlayerControler.CurPlayMode = (1 + localMusicPlayerControler.CurPlayMode);
          if (MusicPlayerControler.this.CurPlayMode > 3)
            MusicPlayerControler.this.CurPlayMode = 0;
          new MusicSharePreference(MusicPlayerControler.this.mContext).StoryPlayMode(MusicPlayerControler.this.CurPlayMode);
          MusicPlayerControler.this.setPlayMode(MusicPlayerControler.this.CurPlayMode);
          return;
        }
        while (str1.compareTo("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE") != 0);
        i = paramIntent.getIntExtra("com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY", -1);
      }
      while (i == -1);
      MusicPlayerControler.this.getNewMode(i);
    }
  }

  private class MyBroadcastReceiver extends BroadcastReceiver
  {
    private MyBroadcastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      String str1 = paramIntent.getStringExtra("CHANNEL_NOTIFICATION");
      String str2 = paramIntent.getAction();
      Log.i("MusicPlayer", "MyBroadcastReceiver: " + str2);
      if (str2.equals("com.winca.service.audiochannel.audio"))
        if (str1.compareTo("CHANNEL_DESELECTED") == 0)
        {
          MusicPlayerControler.this.isSoundSourceSelected = false;
          MusicPlayerControler.this.leaveAudio();
        }
      label70: int i;
      do
      {
        do
          while (true)
          {
            break label70;
            break label70;
            break label70;
            do
              return;
            while (str1.compareTo("CHANNEL_SELECTED") != 0);
            MusicPlayerControler.this.EnterAudio();
            MusicPlayerControler.this.isSoundSourceSelected = true;
            return;
            if ((str2.equals("com.winca.video.VIDEO_ACTION")) || (str2.equals("com.winca.filemanager.VIDEO_ACTION")))
            {
              if (!MusicPlayerControler.this.isSoundSourceSelected)
                continue;
              if (paramIntent.getBooleanExtra("isStartVideo", false))
              {
                MusicPlayerControler.this.leaveAudio();
                return;
              }
              MusicPlayerControler.this.EnterAudio();
              return;
            }
            if (str2.equals("CHANNEL_NOTIFICATION"))
            {
              int j = paramIntent.getIntExtra("CHANNEL_SELECTED", -1);
              if ((j == 8) || (j == 14))
                continue;
              MusicPlayerControler.this.leaveAudio();
              return;
            }
            if (str2.equals("com.winca.music_EXIT_ACTION"))
            {
              Log.i("MusicPlayer", "stopService------------>>> ");
              MusicPlayerControler.this.mContext.stopService(new Intent("com.winca.music.MUSICSERVICE_ACTION"));
              return;
            }
            if (!str2.equals("com.winca.filemanager.MUSIC_ACTION"))
              break;
            if (!MusicPlayerControler.this.isSoundSourceSelected)
              continue;
            if (paramIntent.getBooleanExtra("isStartMusic", false))
            {
              MusicPlayerControler.this.leaveAudio();
              return;
            }
            MusicPlayerControler.this.EnterAudio();
            return;
          }
        while ((str2.equals("com.winca.service.audioplayer.action.AUDIO_PLAYER_ONNEWINTENT")) || (!str2.equals("com.winca.service.audioplayer.action.KEY_TYPE")));
        i = paramIntent.getIntExtra("com.winca.service.audioplayer.KEY_TYPE", -1);
        if (i == 2)
        {
          MusicPlayerControler.this.Next();
          return;
        }
        if (i != 3)
          continue;
        MusicPlayerControler.this.Pre();
        return;
      }
      while (i != 4);
      if (MusicPlayerControler.isPlaying())
      {
        MusicPlayerControler.this.Pause();
        return;
      }
      MusicPlayerControler.this.Play();
    }
  }

  private class SeekBarBroadcastReceiver extends BroadcastReceiver
  {
    private SeekBarBroadcastReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      Log.i("MusicPlayer", "SeekBarBroadcastReceiver()");
      int i = paramIntent.getIntExtra("seekBarPosition", 0);
      MusicPlayerControler.this.mLocalPlayer.seek(i * MusicPlayerControler.this.mLocalPlayer.duration() / 100L);
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MusicPlayerControler
 * JD-Core Version:    0.6.0
 */