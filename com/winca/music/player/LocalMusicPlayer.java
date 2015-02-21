package com.winca.music.player;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import com.winca.music.preference.MusicSharePreference;
import com.winca.music.service.MusicService;
import com.winca.music.util.VolumeUtil;
import com.winca.service.media.MediaOperationManager;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class LocalMusicPlayer extends Player
  implements MultiPlayerDef
{
  private static final int FADEIN = 4;
  private static final int IDLE_DELAY = 60000;
  private static final String LOGTAG = "LocalMusicPlayer";
  private static final int PLAY_MODE_ALL = 3;
  private static final int PLAY_MODE_CURRENT = 1;
  private static final int PLAY_MODE_ORDER = 0;
  private static final int PLAY_MODE_SHUFFLE = 2;
  private static final int RELEASE_WAKELOCK = 2;
  private static final int SERVER_DIED = 3;
  private static final String TAG = "LocalMusicPlayer";
  private static final int TRACK_ENDED = 1;
  private long lCurPos = -1L;
  private AudioManager.OnAudioFocusChangeListener mAudioFocusListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public void onAudioFocusChange(int paramInt)
    {
      switch (paramInt)
      {
      case 0:
      default:
        Log.e("LocalMusicPlayer", "Unknown audio focus change code");
      case -1:
      case -3:
      case -2:
      case 1:
      }
      do
      {
        do
        {
          do
          {
            return;
            Log.v("LocalMusicPlayer", "AudioFocus: received AUDIOFOCUS_LOSS");
          }
          while (!LocalMusicPlayer.this.isPlaying());
          LocalMusicPlayer.this.mPausedByTransientLossOfFocus = false;
          LocalMusicPlayer.this.pause();
          return;
          Log.v("LocalMusicPlayer", "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT");
        }
        while (!LocalMusicPlayer.this.isPlaying());
        LocalMusicPlayer.this.mPausedByTransientLossOfFocus = true;
        LocalMusicPlayer.this.pause();
        return;
        Log.v("LocalMusicPlayer", "AudioFocus: received AUDIOFOCUS_GAIN");
      }
      while ((LocalMusicPlayer.this.isPlaying()) || (!LocalMusicPlayer.this.mPausedByTransientLossOfFocus));
      LocalMusicPlayer.this.mPausedByTransientLossOfFocus = false;
      LocalMusicPlayer.this.startAndFadeIn();
    }
  };
  private AudioManager mAudioManager;
  private MusicService mContext = null;
  private Handler mDelayedStopHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      if ((!LocalMusicPlayer.this.isPlaying()) && (!LocalMusicPlayer.this.mPausedByTransientLossOfFocus) && (!LocalMusicPlayer.this.mServiceInUse) && (LocalMusicPlayer.this.mMediaplayerHandler.hasMessages(1)));
    }
  };
  private boolean mIsSupposedToBePlaying = false;
  private BroadcastReceiver mLocalMusicReceivr = new BroadcastReceiver()
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction().equals("com.winca.audio.returnVolume"))
      {
        int i = paramIntent.getIntExtra("com.winca.audio.key_volume_value", -1);
        if (i != -1)
        {
          float f = (float)(i / 17.0D);
          LocalMusicPlayer.this.mPlayer.setVolume(f);
        }
      }
    }
  };
  private Handler mMediaplayerHandler = new Handler()
  {
    float mCurrentVolume = 1.0F;

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        return;
      case 4:
        if (!LocalMusicPlayer.this.isPlaying())
        {
          this.mCurrentVolume = 0.0F;
          if (LocalMusicPlayer.this.mPlayer != null)
            LocalMusicPlayer.this.mPlayer.setVolume(this.mCurrentVolume);
          LocalMusicPlayer.this.play();
          LocalMusicPlayer.this.mMediaplayerHandler.sendEmptyMessageDelayed(4, 10L);
          return;
        }
        this.mCurrentVolume = (0.01F + this.mCurrentVolume);
        if (this.mCurrentVolume < 1.0F)
          LocalMusicPlayer.this.mMediaplayerHandler.sendEmptyMessageDelayed(4, 10L);
        while (true)
        {
          LocalMusicPlayer.this.mPlayer.setVolume(this.mCurrentVolume);
          return;
          this.mCurrentVolume = 1.0F;
        }
      case 3:
        if (LocalMusicPlayer.this.mIsSupposedToBePlaying)
        {
          Log.e("LocalMusicPlayer", "next(true)");
          LocalMusicPlayer.this.next(true);
          return;
        }
        LocalMusicPlayer.this.openCurrent();
        return;
      case 1:
        if (LocalMusicPlayer.this.mRepeatMode == 1)
        {
          LocalMusicPlayer.this.seek(0L);
          LocalMusicPlayer.this.play();
          return;
        }
        LocalMusicPlayer.this.next(LocalMusicPlayer.this.mRepeatAll);
        return;
      case 2:
      }
      LocalMusicPlayer.this.mWakeLock.release();
    }
  };
  private int mOpenFailedCounter = 0;
  private boolean mPausedByTransientLossOfFocus = false;
  private String[] mPlayList = null;
  private int mPlayListLen = 0;
  private int mPlayPos = -1;
  private MultiPlayer mPlayer;
  private String mPlayingMusic = null;
  private boolean mQuietMode = false;
  private final Shuffler mRand = new Shuffler(null);
  private boolean mRepeatAll = false;
  private int mRepeatMode = 0;
  private boolean mServiceInUse = false;
  private int mShuffleMode = 0;
  private Timer mTimer = null;
  private PowerManager.WakeLock mWakeLock;
  private boolean mbReset = true;
  private MyTask processTask = null;

  public LocalMusicPlayer(MusicService paramMusicService)
  {
    Log.i("LocalMusicPlayer", "LocalMusicPlayer++");
    this.mContext = paramMusicService;
    this.mAudioManager = ((AudioManager)this.mContext.getSystemService("audio"));
    this.mPlayer = new MultiPlayer();
    this.mPlayer.setHandler(this.mMediaplayerHandler);
    Debug.waitingForDebugger();
    this.mWakeLock = ((PowerManager)this.mContext.getSystemService("power")).newWakeLock(1, getClass().getName());
    this.mWakeLock.setReferenceCounted(false);
    Message localMessage = this.mDelayedStopHandler.obtainMessage();
    this.mDelayedStopHandler.sendMessageDelayed(localMessage, 60000L);
    Log.i("LocalMusicPlayer", "LocalMusicPlayer--");
  }

  private void StartSendProgressTimeTask()
  {
    if (this.mTimer == null)
    {
      this.mTimer = new Timer();
      this.processTask = new MyTask();
      this.mTimer.schedule(this.processTask, 0L, 300L);
    }
  }

  private void StopSendProgressTimeTask()
  {
    if (this.mTimer != null)
    {
      this.mTimer.cancel();
      if (this.processTask != null)
        this.processTask.cancel();
    }
  }

  private void doAutoShuffleUpdate()
  {
  }

  private int getPlayMode()
  {
    switch (this.mShuffleMode)
    {
    default:
      return 0;
    case 0:
      switch (this.mRepeatMode)
      {
      default:
        return 0;
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
      }
      return 3;
    case 1:
    }
    switch (this.mRepeatMode)
    {
    default:
      return 0;
    case 0:
      return 2;
    case 1:
      return 1;
    case 2:
    }
    return 2;
  }

  private void gotoIdleState()
  {
    Log.d("LocalMusicPlayer", "gotoIdleState++");
    this.mDelayedStopHandler.removeCallbacksAndMessages(null);
    Message localMessage = this.mDelayedStopHandler.obtainMessage();
    this.mDelayedStopHandler.sendMessageDelayed(localMessage, 60000L);
    Log.d("LocalMusicPlayer", "gotoIdleState--");
  }

  private void initBrocast()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.winca.audio.returnVolume");
    this.mContext.registerReceiver(this.mLocalMusicReceivr, localIntentFilter);
  }

  private void openCurrent()
  {
    Log.d("LocalMusicPlayer", "openCurrent++++");
    monitorenter;
    try
    {
      if ((this.mPlayListLen == 0) || (this.mPlayPos < 0) || (this.mPlayListLen <= this.mPlayPos))
        return;
      open(this.mPlayList[this.mPlayPos], false);
      monitorexit;
      Log.d("LocalMusicPlayer", "openCurrent----");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void requreVolumeValue()
  {
    Intent localIntent = new Intent("com.winca.audio.askVolume");
    this.mContext.sendBroadcast(localIntent);
  }

  private void sendMcuAudioCurrentPlayTime()
  {
    long l = this.mPlayer.position() / 1000L;
    if (this.lCurPos != l)
    {
      this.lCurPos = l;
      int i = (int)(l / 3600L);
      int j = (int)(l % 3600L / 60L);
      int k = (int)(l % 60L);
      if (this.mContext.getMediaOperationManager() != null)
        this.mContext.getMediaOperationManager().audioCurrentPlayTime(i, j, k);
    }
  }

  private void sendMcuAudioData()
  {
    int i = 1 + getCurPlayPosInPlayList();
    int j = this.mPlayListLen;
    long l = this.mPlayer.duration() / 1000L;
    int k = (int)(l / 3600L);
    int m = (int)(l % 3600L / 60L);
    int n = (int)(l % 60L);
    if (this.mContext.getMediaOperationManager() != null)
      this.mContext.getMediaOperationManager().audioData(i, j, k, m, n);
  }

  private void sendMcuDataType()
  {
    int i = VolumeUtil.getInstance().GetVolumeValue(getPath());
    if (this.mContext.getMediaOperationManager() != null)
      this.mContext.getMediaOperationManager().setDataType(i);
  }

  private void sendPauseForNoise()
  {
    if ((this.mContext != null) && (this.mContext.getMediaOperationManager() != null))
    {
      this.mContext.getMediaOperationManager().audioPause();
      this.mContext.getMediaOperationManager().audioStopVoice();
    }
  }

  private void sendPlayseForNoise()
  {
    if ((this.mContext != null) && (this.mContext.getMediaOperationManager() != null))
    {
      this.mContext.getMediaOperationManager().audioPlay();
      this.mContext.getMediaOperationManager().audioStartVoice();
    }
  }

  private boolean setPlayPos(boolean paramBoolean1, boolean paramBoolean2)
  {
    monitorenter;
    while (true)
    {
      try
      {
        switch (getPlayMode())
        {
        default:
          return true;
        case 0:
          if (!paramBoolean1)
            break label103;
          if (this.mPlayPos != -1 + this.mPlayListLen)
            break label90;
          if (paramBoolean2)
          {
            this.mPlayPos = 0;
            continue;
          }
        case 3:
        case 1:
        case 2:
        }
      }
      finally
      {
        monitorexit;
      }
      this.mPlayPos = 0;
      MusicOperaUtil.setPlayPause(this.mContext);
      monitorexit;
      return true;
      label90: this.mPlayPos = (1 + this.mPlayPos);
      continue;
      label103: if (this.mPlayPos == 0);
      for (int n = -1 + this.mPlayListLen; ; n = -1 + this.mPlayPos)
      {
        this.mPlayPos = n;
        break;
      }
      if ((this.mPlayPos == -1 + this.mPlayListLen) && (paramBoolean1) && (!this.mRepeatAll))
      {
        this.mPlayPos = 0;
        MusicOperaUtil.setPlayPause(this.mContext);
        monitorexit;
        return true;
      }
      if (paramBoolean1)
      {
        int i = this.mPlayPos;
        int j = -1 + this.mPlayListLen;
        int k = 0;
        if (i == j);
        while (true)
        {
          this.mPlayPos = k;
          break;
          k = 1 + this.mPlayPos;
        }
      }
      if (this.mPlayPos == 0);
      for (int m = -1 + this.mPlayListLen; ; m = -1 + this.mPlayPos)
      {
        this.mPlayPos = m;
        break;
      }
      seek(0L);
      play();
      continue;
      this.mPlayPos = this.mRand.nextInt(this.mPlayListLen);
    }
  }

  private void startAndFadeIn()
  {
    this.mMediaplayerHandler.sendEmptyMessageDelayed(4, 10L);
  }

  private void stop(boolean paramBoolean)
  {
    Log.i("LocalMusicPlayer", "stop++");
    sendPauseForNoise();
    if ((this.mPlayer != null) && (this.mPlayer.isInitialized()))
      this.mPlayer.stop();
    if (paramBoolean)
      gotoIdleState();
    if (paramBoolean)
      this.mIsSupposedToBePlaying = false;
    Log.i("LocalMusicPlayer", "stop--");
  }

  public void closeExternalStorageFiles(String paramString)
  {
    Log.i("LocalMusicPlayer", "closeExternalStorageFiles++");
    stop(true);
    Log.i("LocalMusicPlayer", "closeExternalStorageFiles--");
  }

  public void deInit()
  {
    Log.i("LocalMusicPlayer", "deInit++");
    this.mPlayer.pause();
    this.mPlayer.release();
    this.mPlayer = null;
    this.mAudioManager.abandonAudioFocus(this.mAudioFocusListener);
    this.mDelayedStopHandler.removeCallbacksAndMessages(null);
    this.mMediaplayerHandler.removeCallbacksAndMessages(null);
    resetLocalPlayer();
    this.mWakeLock.release();
    new MusicSharePreference(this.mContext).storyIsPlayHistory(true);
    StopSendProgressTimeTask();
    Log.i("LocalMusicPlayer", "deInit--");
  }

  public long duration()
  {
    if ((this.mPlayer != null) && (this.mPlayer.isInitialized()))
      return this.mPlayer.duration();
    return -1L;
  }

  public long getAudioId()
  {
    return -1L;
  }

  public int getCurPlayPosInPlayList()
  {
    return this.mPlayPos;
  }

  public String getPath()
  {
    return this.mPlayingMusic;
  }

  public int getPlayingCount()
  {
    if (this.mPlayList == null)
      return 0;
    return this.mPlayList.length;
  }

  public String[] getQueue()
  {
    Log.i("LocalMusicPlayer", "getQueue++");
    monitorenter;
    try
    {
      int i = this.mPlayListLen;
      String[] arrayOfString = new String[i];
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          Log.i("LocalMusicPlayer", "getQueue--");
          return arrayOfString;
        }
        arrayOfString[j] = this.mPlayList[j];
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int getQueuePosition()
  {
    Log.d("LocalMusicPlayer", "getQueuePosition++");
    monitorenter;
    try
    {
      Log.d("LocalMusicPlayer", "getQueuePosition--");
      int i = this.mPlayPos;
      return i;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public int getRepeatMode()
  {
    return this.mRepeatMode;
  }

  public int getShuffleMode()
  {
    return this.mShuffleMode;
  }

  public void initPlayer()
  {
    Log.i("LocalMusicPlayer", "initLocalMusicPlayer++");
    this.mDelayedStopHandler.removeCallbacksAndMessages(null);
    this.mDelayedStopHandler.removeCallbacksAndMessages(null);
    Message localMessage = this.mDelayedStopHandler.obtainMessage();
    this.mDelayedStopHandler.sendMessageDelayed(localMessage, 60000L);
    initBrocast();
    requreVolumeValue();
    StartSendProgressTimeTask();
    Log.i("LocalMusicPlayer", "initLocalMusicPlayer--");
  }

  public boolean isPlaying()
  {
    return this.mIsSupposedToBePlaying;
  }

  public boolean isReset()
  {
    return this.mbReset;
  }

  public void next(boolean paramBoolean)
  {
    Log.i("LocalMusicPlayer", "next++");
    sendPauseForNoise();
    if (this.mPlayListLen <= 0)
    {
      Log.d("LocalMusicPlayer", "No play queue");
      return;
    }
    monitorenter;
    try
    {
      if (setPlayPos(true, paramBoolean))
      {
        stop(false);
        openCurrent();
        play();
      }
      while (true)
      {
        monitorexit;
        Log.i("LocalMusicPlayer", "next--");
        return;
        pause();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  // ERROR //
  public void open(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 15
    //   2: new 489	java/lang/StringBuilder
    //   5: dup
    //   6: ldc_w 491
    //   9: invokespecial 492	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_1
    //   13: invokevirtual 496	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: invokevirtual 499	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   19: invokestatic 269	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   22: pop
    //   23: aload_0
    //   24: monitorenter
    //   25: aload_1
    //   26: ifnonnull +6 -> 32
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_0
    //   33: iconst_0
    //   34: invokespecial 417	com/winca/music/player/LocalMusicPlayer:stop	(Z)V
    //   37: aload_0
    //   38: getfield 160	com/winca/music/player/LocalMusicPlayer:mPlayer	Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    //   41: ifnull +11 -> 52
    //   44: aload_0
    //   45: getfield 160	com/winca/music/player/LocalMusicPlayer:mPlayer	Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    //   48: aload_1
    //   49: invokevirtual 502	com/winca/music/player/LocalMusicPlayer$MultiPlayer:setDataSource	(Ljava/lang/String;)V
    //   52: aload_0
    //   53: aload_1
    //   54: putfield 78	com/winca/music/player/LocalMusicPlayer:mPlayingMusic	Ljava/lang/String;
    //   57: aload_0
    //   58: getfield 160	com/winca/music/player/LocalMusicPlayer:mPlayer	Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    //   61: invokevirtual 406	com/winca/music/player/LocalMusicPlayer$MultiPlayer:isInitialized	()Z
    //   64: ifne +106 -> 170
    //   67: aload_0
    //   68: iconst_1
    //   69: invokespecial 417	com/winca/music/player/LocalMusicPlayer:stop	(Z)V
    //   72: aload_0
    //   73: getfield 91	com/winca/music/player/LocalMusicPlayer:mOpenFailedCounter	I
    //   76: istore 6
    //   78: aload_0
    //   79: iload 6
    //   81: iconst_1
    //   82: iadd
    //   83: putfield 91	com/winca/music/player/LocalMusicPlayer:mOpenFailedCounter	I
    //   86: iload 6
    //   88: bipush 10
    //   90: if_icmpge +16 -> 106
    //   93: aload_0
    //   94: getfield 80	com/winca/music/player/LocalMusicPlayer:mPlayListLen	I
    //   97: iconst_1
    //   98: if_icmple +8 -> 106
    //   101: aload_0
    //   102: iconst_0
    //   103: invokevirtual 504	com/winca/music/player/LocalMusicPlayer:next	(Z)V
    //   106: aload_0
    //   107: getfield 160	com/winca/music/player/LocalMusicPlayer:mPlayer	Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    //   110: invokevirtual 406	com/winca/music/player/LocalMusicPlayer$MultiPlayer:isInitialized	()Z
    //   113: ifne +45 -> 158
    //   116: aload_0
    //   117: getfield 91	com/winca/music/player/LocalMusicPlayer:mOpenFailedCounter	I
    //   120: ifeq +38 -> 158
    //   123: aload_0
    //   124: iconst_0
    //   125: putfield 91	com/winca/music/player/LocalMusicPlayer:mOpenFailedCounter	I
    //   128: aload_0
    //   129: getfield 97	com/winca/music/player/LocalMusicPlayer:mQuietMode	Z
    //   132: ifne +17 -> 149
    //   135: aload_0
    //   136: getfield 103	com/winca/music/player/LocalMusicPlayer:mContext	Lcom/winca/music/service/MusicService;
    //   139: ldc_w 506
    //   142: iconst_0
    //   143: invokestatic 512	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   146: invokevirtual 515	android/widget/Toast:show	()V
    //   149: ldc 15
    //   151: ldc_w 506
    //   154: invokestatic 269	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: aload_0
    //   159: monitorexit
    //   160: ldc 15
    //   162: ldc_w 517
    //   165: invokestatic 269	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: return
    //   170: aload_0
    //   171: iconst_0
    //   172: putfield 91	com/winca/music/player/LocalMusicPlayer:mOpenFailedCounter	I
    //   175: goto -17 -> 158
    //   178: astore 4
    //   180: aload_0
    //   181: monitorexit
    //   182: aload 4
    //   184: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   29	31	178	finally
    //   32	52	178	finally
    //   52	86	178	finally
    //   93	106	178	finally
    //   106	149	178	finally
    //   149	158	178	finally
    //   158	160	178	finally
    //   170	175	178	finally
    //   180	182	178	finally
  }

  public void open(String[] paramArrayOfString, int paramInt)
  {
    Log.d("LocalMusicPlayer", "open(String [] list, int position)++++");
    monitorenter;
    while (true)
    {
      int i;
      try
      {
        if (this.mShuffleMode != 2)
          continue;
        this.mShuffleMode = 1;
        if (paramInt < 0)
          continue;
        this.mPlayPos = paramInt;
        this.mPlayListLen = paramArrayOfString.length;
        this.mbReset = false;
        this.mPlayList = new String[this.mPlayListLen];
        i = 0;
        if (i >= this.mPlayListLen)
        {
          openCurrent();
          monitorexit;
          Log.d("LocalMusicPlayer", "open(long [] list, int position)----");
          return;
          this.mPlayPos = this.mRand.nextInt(this.mPlayListLen);
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      this.mPlayList[i] = paramArrayOfString[i];
      i++;
    }
  }

  public void pause()
  {
    Log.i("LocalMusicPlayer", "pause++");
    monitorenter;
    try
    {
      if ((isPlaying()) && (this.mPlayer != null))
      {
        sendPauseForNoise();
        this.mPlayer.pause();
        gotoIdleState();
        this.mIsSupposedToBePlaying = false;
      }
      monitorexit;
      Log.i("LocalMusicPlayer", "pause--");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void play()
  {
    Log.i("LocalMusicPlayer", "play++");
    this.mAudioManager.registerAudioFocusListener(this.mAudioFocusListener);
    if ((this.mPlayer != null) && (this.mPlayer.isInitialized()))
    {
      long l = this.mPlayer.duration();
      if ((this.mRepeatMode != 1) && (l > 2000L) && (this.mPlayer.position() >= l - 2000L))
        next(true);
      this.mPlayer.duration();
      this.mPlayer.start();
      sendPlayseForNoise();
      sendMcuDataType();
      sendMcuAudioData();
      MusicOperaUtil.BrocastCurPlayId(this.mContext, this.mPlayPos);
      new MusicSharePreference(this.mContext).StoryLastPlay(getPath());
      if (!this.mIsSupposedToBePlaying)
        this.mIsSupposedToBePlaying = true;
    }
    Log.i("LocalMusicPlayer", "play--");
  }

  public long position()
  {
    if (this.mPlayer == null);
    do
      return -1L;
    while (!this.mPlayer.isInitialized());
    return this.mPlayer.position();
  }

  public void postInit()
  {
    Log.i("LocalMusicPlayer", "postInit++");
    this.mDelayedStopHandler.removeCallbacksAndMessages(null);
    this.mServiceInUse = true;
    Log.i("LocalMusicPlayer", "postInit--");
  }

  public boolean preDeInit()
  {
    Log.i("LocalMusicPlayer", "preDeInit++");
    this.mServiceInUse = false;
    if ((this.mPlayListLen > 0) || (this.mMediaplayerHandler.hasMessages(1)))
    {
      Message localMessage = this.mDelayedStopHandler.obtainMessage();
      this.mDelayedStopHandler.sendMessageDelayed(localMessage, 60000L);
      return true;
    }
    Log.i("LocalMusicPlayer", "preDeInit--");
    return true;
  }

  public void prev()
  {
    Log.i("LocalMusicPlayer", "prev++");
    sendPauseForNoise();
    if (this.mPlayListLen <= 0)
    {
      Log.d("LocalMusicPlayer", "No play queue");
      return;
    }
    monitorenter;
    try
    {
      setPlayPos(false, true);
      stop(false);
      openCurrent();
      play();
      monitorexit;
      Log.i("LocalMusicPlayer", "prev--");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void resetLocalPlayer()
  {
    this.mPlayingMusic = "";
    this.mPlayPos = -1;
    this.mPlayListLen = 0;
    this.mbReset = true;
    stop();
  }

  public long seek(long paramLong)
  {
    long l = -1L;
    if ((this.mPlayer != null) && (this.mPlayer.isInitialized()))
    {
      if (paramLong < 0L)
        paramLong = 0L;
      if (paramLong > this.mPlayer.duration())
        paramLong = this.mPlayer.duration();
      l = this.mPlayer.seek(paramLong);
    }
    return l;
  }

  public void setQueuePosition(int paramInt)
  {
    Log.d("LocalMusicPlayer", "setQueuePosition++");
    monitorenter;
    try
    {
      stop(false);
      this.mPlayPos = paramInt;
      openCurrent();
      play();
      if (this.mShuffleMode == 2)
        doAutoShuffleUpdate();
      monitorexit;
      Log.d("LocalMusicPlayer", "setQueuePosition--");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void setRepeatAll(boolean paramBoolean)
  {
    this.mRepeatAll = paramBoolean;
  }

  public void setRepeatMode(int paramInt)
  {
    Log.i("LocalMusicPlayer", "setRepeatMode++");
    monitorenter;
    try
    {
      this.mRepeatMode = paramInt;
      monitorexit;
      Log.i("LocalMusicPlayer", "setRepeatMode--");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void setShuffleMode(int paramInt)
  {
    Log.i("LocalMusicPlayer", "setShuffleMode++");
    monitorenter;
    try
    {
      if ((this.mShuffleMode == paramInt) && (this.mPlayListLen > 0))
        return;
      this.mShuffleMode = paramInt;
      monitorexit;
      Log.i("LocalMusicPlayer", "setShuffleMode--");
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void stop()
  {
    stop(true);
  }

  private class MultiPlayer
  {
    MediaPlayer.OnCompletionListener mCompletionListener = new MediaPlayer.OnCompletionListener()
    {
      public void onCompletion(MediaPlayer paramMediaPlayer)
      {
        LocalMusicPlayer.this.mWakeLock.acquire(30000L);
        LocalMusicPlayer.MultiPlayer.this.mHandler.sendEmptyMessage(1);
        LocalMusicPlayer.MultiPlayer.this.mHandler.sendEmptyMessage(2);
      }
    };
    MediaPlayer.OnErrorListener mErrorListener = new MediaPlayer.OnErrorListener()
    {
      public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        Log.e("LocalMusicPlayer", "LocalPlayer Get An Error:" + paramInt1);
        switch (paramInt1)
        {
        default:
          Log.e("LocalMusicPlayer", "Music Error -->" + paramInt1);
          return false;
        case 100:
        }
        Log.e("LocalMusicPlayer", "kkcmh --> MEDIA_ERROR_SERVER_DIED");
        LocalMusicPlayer.MultiPlayer.this.mIsInitialized = false;
        LocalMusicPlayer.MultiPlayer.this.mMediaPlayer.release();
        LocalMusicPlayer.MultiPlayer.this.mMediaPlayer = new MediaPlayer();
        LocalMusicPlayer.MultiPlayer.this.mMediaPlayer.setWakeMode(LocalMusicPlayer.this.mContext, 1);
        LocalMusicPlayer.MultiPlayer.this.mHandler.sendMessageDelayed(LocalMusicPlayer.MultiPlayer.this.mHandler.obtainMessage(3), 2000L);
        return true;
      }
    };
    private Handler mHandler;
    private boolean mIsInitialized = false;
    private MediaPlayer mMediaPlayer = new MediaPlayer();
    MediaPlayer.OnPreparedListener mPreparedlistener = new MediaPlayer.OnPreparedListener()
    {
      public void onPrepared(MediaPlayer paramMediaPlayer)
      {
      }
    };

    public MultiPlayer()
    {
      this.mMediaPlayer.setWakeMode(LocalMusicPlayer.this.mContext, 1);
    }

    public long duration()
    {
      return this.mMediaPlayer.getDuration();
    }

    public boolean isInitialized()
    {
      return this.mIsInitialized;
    }

    public void pause()
    {
      this.mMediaPlayer.pause();
    }

    public long position()
    {
      return this.mMediaPlayer.getCurrentPosition();
    }

    public void release()
    {
      stop();
      this.mMediaPlayer.release();
    }

    public long seek(long paramLong)
    {
      this.mMediaPlayer.seekTo((int)paramLong);
      return paramLong;
    }

    // ERROR //
    public void setDataSource(String paramString)
    {
      // Byte code:
      //   0: ldc 110
      //   2: new 112	java/lang/StringBuilder
      //   5: dup
      //   6: ldc 114
      //   8: invokespecial 116	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   11: aload_1
      //   12: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   15: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   18: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   21: pop
      //   22: aload_0
      //   23: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   26: invokevirtual 133	android/media/MediaPlayer:reset	()V
      //   29: ldc2_w 134
      //   32: invokestatic 141	java/lang/Thread:sleep	(J)V
      //   35: aload_0
      //   36: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   39: aconst_null
      //   40: invokevirtual 145	android/media/MediaPlayer:setOnPreparedListener	(Landroid/media/MediaPlayer$OnPreparedListener;)V
      //   43: aload_1
      //   44: ldc 147
      //   46: invokevirtual 153	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   49: ifeq +114 -> 163
      //   52: aload_0
      //   53: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   56: aload_0
      //   57: getfield 22	com/winca/music/player/LocalMusicPlayer$MultiPlayer:this$0	Lcom/winca/music/player/LocalMusicPlayer;
      //   60: invokestatic 55	com/winca/music/player/LocalMusicPlayer:access$11	(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;
      //   63: aload_1
      //   64: invokestatic 159	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   67: invokevirtual 162	android/media/MediaPlayer:setDataSource	(Landroid/content/Context;Landroid/net/Uri;)V
      //   70: aload_0
      //   71: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   74: iconst_3
      //   75: invokevirtual 165	android/media/MediaPlayer:setAudioStreamType	(I)V
      //   78: aload_0
      //   79: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   82: invokevirtual 168	android/media/MediaPlayer:prepare	()V
      //   85: aload_0
      //   86: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   89: aload_0
      //   90: getfield 39	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mCompletionListener	Landroid/media/MediaPlayer$OnCompletionListener;
      //   93: invokevirtual 172	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
      //   96: aload_0
      //   97: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   100: aload_0
      //   101: getfield 49	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mErrorListener	Landroid/media/MediaPlayer$OnErrorListener;
      //   104: invokevirtual 176	android/media/MediaPlayer:setOnErrorListener	(Landroid/media/MediaPlayer$OnErrorListener;)V
      //   107: aload_0
      //   108: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   111: aload_0
      //   112: getfield 44	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mPreparedlistener	Landroid/media/MediaPlayer$OnPreparedListener;
      //   115: invokevirtual 145	android/media/MediaPlayer:setOnPreparedListener	(Landroid/media/MediaPlayer$OnPreparedListener;)V
      //   118: aload_0
      //   119: iconst_1
      //   120: putfield 32	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mIsInitialized	Z
      //   123: ldc 110
      //   125: new 112	java/lang/StringBuilder
      //   128: dup
      //   129: ldc 178
      //   131: invokespecial 116	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   134: aload_1
      //   135: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   138: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   141: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   144: pop
      //   145: return
      //   146: astore 5
      //   148: aload 5
      //   150: invokevirtual 181	java/lang/InterruptedException:printStackTrace	()V
      //   153: goto -118 -> 35
      //   156: astore_3
      //   157: aload_0
      //   158: iconst_0
      //   159: putfield 32	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mIsInitialized	Z
      //   162: return
      //   163: aload_0
      //   164: getfield 30	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mMediaPlayer	Landroid/media/MediaPlayer;
      //   167: aload_1
      //   168: invokevirtual 183	android/media/MediaPlayer:setDataSource	(Ljava/lang/String;)V
      //   171: goto -101 -> 70
      //   174: astore_2
      //   175: aload_0
      //   176: iconst_0
      //   177: putfield 32	com/winca/music/player/LocalMusicPlayer$MultiPlayer:mIsInitialized	Z
      //   180: return
      //   181: astore 6
      //   183: ldc 110
      //   185: aload 6
      //   187: invokevirtual 184	java/lang/Exception:toString	()Ljava/lang/String;
      //   190: invokestatic 130	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   193: pop
      //   194: goto -109 -> 85
      //
      // Exception table:
      //   from	to	target	type
      //   29	35	146	java/lang/InterruptedException
      //   0	29	156	java/io/IOException
      //   29	35	156	java/io/IOException
      //   35	70	156	java/io/IOException
      //   70	78	156	java/io/IOException
      //   78	85	156	java/io/IOException
      //   148	153	156	java/io/IOException
      //   163	171	156	java/io/IOException
      //   183	194	156	java/io/IOException
      //   0	29	174	java/lang/IllegalArgumentException
      //   29	35	174	java/lang/IllegalArgumentException
      //   35	70	174	java/lang/IllegalArgumentException
      //   70	78	174	java/lang/IllegalArgumentException
      //   78	85	174	java/lang/IllegalArgumentException
      //   148	153	174	java/lang/IllegalArgumentException
      //   163	171	174	java/lang/IllegalArgumentException
      //   183	194	174	java/lang/IllegalArgumentException
      //   78	85	181	java/lang/Exception
    }

    public void setHandler(Handler paramHandler)
    {
      this.mHandler = paramHandler;
    }

    public void setVolume(float paramFloat)
    {
      this.mMediaPlayer.setVolume(paramFloat, paramFloat);
    }

    public void start()
    {
      this.mMediaPlayer.start();
    }

    public void stop()
    {
      Log.i("LocalMusicPlayer", "mMediaPlayer.reset()");
      this.mMediaPlayer.reset();
      this.mIsInitialized = false;
    }
  }

  class MyTask extends TimerTask
  {
    MyTask()
    {
    }

    public void run()
    {
      Intent localIntent = new Intent("com.winca.music.progress");
      if (LocalMusicPlayer.this.isPlaying())
        localIntent.putExtra("isPause", true);
      try
      {
        while (true)
        {
          if (!LocalMusicPlayer.this.isReset())
          {
            int i = (int)LocalMusicPlayer.this.position();
            int j = (int)LocalMusicPlayer.this.duration();
            if ((i != -1) && (j != -1) && (i != j))
            {
              localIntent.putExtra("isPlaying", true);
              localIntent.putExtra("position", i);
              localIntent.putExtra("total", j);
              LocalMusicPlayer.this.mContext.sendBroadcast(localIntent);
              LocalMusicPlayer.this.sendMcuAudioCurrentPlayTime();
            }
          }
          return;
          localIntent.putExtra("isPause", false);
        }
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localIllegalStateException.printStackTrace();
      }
    }
  }

  private static class Shuffler
  {
    private int mPrevious;
    private Random mRandom = new Random();

    public int nextInt(int paramInt)
    {
      int i;
      do
        i = this.mRandom.nextInt(paramInt);
      while ((i == this.mPrevious) && (paramInt > 1));
      this.mPrevious = i;
      return i;
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.LocalMusicPlayer
 * JD-Core Version:    0.6.0
 */