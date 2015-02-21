.class public Lcom/winca/music/player/LocalMusicPlayer;
.super Lcom/winca/music/player/Player;
.source "LocalMusicPlayer.java"

# interfaces
.implements Lcom/winca/music/player/MultiPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;,
        Lcom/winca/music/player/LocalMusicPlayer$MyTask;,
        Lcom/winca/music/player/LocalMusicPlayer$Shuffler;
    }
.end annotation


# static fields
.field private static final FADEIN:I = 0x4

.field private static final IDLE_DELAY:I = 0xea60

.field private static final LOGTAG:Ljava/lang/String; = "LocalMusicPlayer"

.field private static final PLAY_MODE_ALL:I = 0x3

.field private static final PLAY_MODE_CURRENT:I = 0x1

.field private static final PLAY_MODE_ORDER:I = 0x0

.field private static final PLAY_MODE_SHUFFLE:I = 0x2

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final SERVER_DIED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalMusicPlayer"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field private lCurPos:J

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Lcom/winca/music/service/MusicService;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mIsSupposedToBePlaying:Z

.field private mLocalMusicReceivr:Landroid/content/BroadcastReceiver;

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayList:[Ljava/lang/String;

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

.field private mPlayingMusic:Ljava/lang/String;

.field private mQuietMode:Z

.field private final mRand:Lcom/winca/music/player/LocalMusicPlayer$Shuffler;

.field private mRepeatAll:Z

.field private mRepeatMode:I

.field private mServiceInUse:Z

.field private mShuffleMode:I

.field private mTimer:Ljava/util/Timer;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbReset:Z

.field private processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;


# direct methods
.method public constructor <init>(Lcom/winca/music/service/MusicService;)V
    .locals 6
    .parameter "serviceContext"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 187
    invoke-direct {p0}, Lcom/winca/music/player/Player;-><init>()V

    .line 53
    iput v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    .line 54
    iput v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    .line 55
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayingMusic:Ljava/lang/String;

    .line 57
    iput v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    .line 58
    const/4 v2, -0x1

    iput v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 60
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$Shuffler;

    invoke-direct {v2, v3}, Lcom/winca/music/player/LocalMusicPlayer$Shuffler;-><init>(Lcom/winca/music/player/LocalMusicPlayer$Shuffler;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRand:Lcom/winca/music/player/LocalMusicPlayer$Shuffler;

    .line 61
    iput v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    .line 63
    iput-boolean v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mServiceInUse:Z

    .line 64
    iput-boolean v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 65
    iput-boolean v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mQuietMode:Z

    .line 67
    iput-boolean v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z

    .line 69
    iput-boolean v5, p0, Lcom/winca/music/player/LocalMusicPlayer;->mbReset:Z

    .line 76
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    .line 77
    iput-boolean v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatAll:Z

    .line 78
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    .line 79
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    .line 80
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->lCurPos:J

    .line 98
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$1;

    invoke-direct {v2, p0}, Lcom/winca/music/player/LocalMusicPlayer$1;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    .line 153
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$2;

    invoke-direct {v2, p0}, Lcom/winca/music/player/LocalMusicPlayer$2;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 276
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$3;

    invoke-direct {v2, p0}, Lcom/winca/music/player/LocalMusicPlayer$3;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mLocalMusicReceivr:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$4;

    invoke-direct {v2, p0}, Lcom/winca/music/player/LocalMusicPlayer$4;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    .line 189
    const-string v2, "LocalMusicPlayer"

    const-string v3, "LocalMusicPlayer++"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    .line 191
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    .line 192
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/winca/music/service/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 191
    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 194
    new-instance v2, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-direct {v2, p0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    .line 195
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 196
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 198
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    .line 199
    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/winca/music/service/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    check-cast v1, Landroid/os/PowerManager;

    .line 201
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 207
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 210
    const-string v2, "LocalMusicPlayer"

    const-string v3, "LocalMusicPlayer--"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private StartSendProgressTimeTask()V
    .locals 6

    .prologue
    .line 918
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    .line 920
    new-instance v0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    invoke-direct {v0, p0}, Lcom/winca/music/player/LocalMusicPlayer$MyTask;-><init>(Lcom/winca/music/player/LocalMusicPlayer;)V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    .line 921
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 924
    :cond_0
    return-void
.end method

.method private StopSendProgressTimeTask()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 929
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->processTask:Lcom/winca/music/player/LocalMusicPlayer$MyTask;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->cancel()Z

    .line 933
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/winca/music/player/LocalMusicPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$11(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    return-object v0
.end method

.method static synthetic access$12(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendMcuAudioCurrentPlayTime()V

    return-void
.end method

.method static synthetic access$2(Lcom/winca/music/player/LocalMusicPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$3(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V

    return-void
.end method

.method static synthetic access$4(Lcom/winca/music/player/LocalMusicPlayer;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$5(Lcom/winca/music/player/LocalMusicPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatAll:Z

    return v0
.end method

.method static synthetic access$6(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7(Lcom/winca/music/player/LocalMusicPlayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z

    return-void
.end method

.method static synthetic access$8(Lcom/winca/music/player/LocalMusicPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$9(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->startAndFadeIn()V

    return-void
.end method

.method private doAutoShuffleUpdate()V
    .locals 0

    .prologue
    .line 792
    return-void
.end method

.method private getPlayMode()I
    .locals 2

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, mode:I
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    packed-switch v1, :pswitch_data_0

    .line 497
    :goto_0
    return v0

    .line 465
    :pswitch_0
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 467
    :pswitch_1
    const/4 v0, 0x0

    .line 468
    goto :goto_0

    .line 470
    :pswitch_2
    const/4 v0, 0x1

    .line 471
    goto :goto_0

    .line 473
    :pswitch_3
    const/4 v0, 0x3

    .line 474
    goto :goto_0

    .line 480
    :pswitch_4
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 482
    :pswitch_5
    const/4 v0, 0x2

    .line 483
    goto :goto_0

    .line 485
    :pswitch_6
    const/4 v0, 0x1

    .line 486
    goto :goto_0

    .line 488
    :pswitch_7
    const/4 v0, 0x2

    .line 489
    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 465
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 480
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private gotoIdleState()V
    .locals 4

    .prologue
    .line 781
    const-string v1, "LocalMusicPlayer"

    const-string v2, "gotoIdleState++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 783
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    const-string v1, "LocalMusicPlayer"

    const-string v2, "gotoIdleState--"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method

.method private initBrocast()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.winca.audio.returnVolume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mLocalMusicReceivr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/winca/music/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-void
.end method

.method private openCurrent()V
    .locals 2

    .prologue
    .line 767
    const-string v0, "LocalMusicPlayer"

    const-string v1, "openCurrent++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    monitor-enter p0

    .line 770
    :try_start_0
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    if-gt v0, v1, :cond_1

    .line 771
    :cond_0
    monitor-exit p0

    .line 778
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->open(Ljava/lang/String;Z)V

    .line 768
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    const-string v0, "LocalMusicPlayer"

    const-string v1, "openCurrent----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private requreVolumeValue()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.audio.askVolume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v1, v0}, Lcom/winca/music/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method private sendMcuAudioCurrentPlayTime()V
    .locals 13

    .prologue
    const-wide/16 v11, 0xe10

    const-wide/16 v9, 0x3c

    .line 878
    iget-object v5, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v5}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->position()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v3, v5, v7

    .line 880
    .local v3, totoalSec:J
    iget-wide v5, p0, Lcom/winca/music/player/LocalMusicPlayer;->lCurPos:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 881
    iput-wide v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->lCurPos:J

    .line 882
    div-long v5, v3, v11

    long-to-int v0, v5

    .line 883
    .local v0, hour:I
    rem-long v5, v3, v11

    div-long/2addr v5, v9

    long-to-int v1, v5

    .line 884
    .local v1, min:I
    rem-long v5, v3, v9

    long-to-int v2, v5

    .line 885
    .local v2, sec:I
    iget-object v5, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v5}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 886
    iget-object v5, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v5}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Lcom/winca/service/media/MediaOperationManager;->audioCurrentPlayTime(III)Z

    .line 889
    .end local v0           #hour:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :cond_0
    return-void
.end method

.method private sendMcuAudioData()V
    .locals 12

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->getCurPlayPosInPlayList()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 903
    .local v1, currentNum:I
    iget v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    .line 905
    .local v2, totleNum:I
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 906
    .local v6, totoalSec:J
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v3, v8

    .line 907
    .local v3, totleTime_H:I
    const-wide/16 v8, 0xe10

    rem-long v8, v6, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v4, v8

    .line 908
    .local v4, totleTime_M:I
    const-wide/16 v8, 0x3c

    rem-long v8, v6, v8

    long-to-int v5, v8

    .line 910
    .local v5, totleTime_S:I
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/winca/service/media/MediaOperationManager;->audioData(IIIII)Z

    .line 915
    :cond_0
    return-void
.end method

.method private sendMcuDataType()V
    .locals 3

    .prologue
    .line 892
    invoke-static {}, Lcom/winca/music/util/VolumeUtil;->getInstance()Lcom/winca/music/util/VolumeUtil;

    move-result-object v1

    .line 893
    .local v1, uti:Lcom/winca/music/util/VolumeUtil;
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winca/music/util/VolumeUtil;->GetVolumeValue(Ljava/lang/String;)I

    move-result v0

    .line 895
    .local v0, type:I
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v2}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 896
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v2}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/winca/service/media/MediaOperationManager;->setDataType(I)Z

    .line 898
    :cond_0
    return-void
.end method

.method private sendPauseForNoise()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->audioPause()Z

    .line 872
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->audioStopVoice()Z

    .line 875
    :cond_0
    return-void
.end method

.method private sendPlayseForNoise()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->audioPlay()Z

    .line 865
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->audioStartVoice()Z

    .line 867
    :cond_0
    return-void
.end method

.method private setPlayPos(ZZ)Z
    .locals 4
    .parameter "next"
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->getPlayMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 501
    :goto_0
    monitor-exit p0

    .line 552
    :goto_1
    return v3

    .line 504
    :pswitch_0
    if-eqz p1, :cond_2

    .line 505
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 506
    if-eqz p2, :cond_0

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 510
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->setPlayPause(Landroid/content/Context;)V

    .line 511
    monitor-exit p0

    goto :goto_1

    .line 514
    :cond_1
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 517
    :cond_2
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 518
    :cond_3
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 524
    :pswitch_1
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    iget v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    .line 525
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatAll:Z

    if-nez v1, :cond_4

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 527
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->setPlayPause(Landroid/content/Context;)V

    .line 528
    monitor-exit p0

    goto :goto_1

    .line 532
    :cond_4
    if-eqz p1, :cond_6

    .line 533
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    iget v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_3
    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 534
    :cond_5
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 536
    :cond_6
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 537
    :cond_7
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 541
    :pswitch_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->seek(J)J

    .line 542
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    goto :goto_0

    .line 546
    :pswitch_3
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRand:Lcom/winca/music/player/LocalMusicPlayer$Shuffler;

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private startAndFadeIn()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    return-void
.end method

.method private stop(Z)V
    .locals 2
    .parameter "remove_status_icon"

    .prologue
    .line 705
    const-string v0, "LocalMusicPlayer"

    const-string v1, "stop++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendPauseForNoise()V

    .line 707
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->stop()V

    .line 711
    :cond_0
    if-eqz p1, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->gotoIdleState()V

    .line 716
    :cond_1
    if-eqz p1, :cond_2

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 719
    :cond_2
    const-string v0, "LocalMusicPlayer"

    const-string v1, "stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 2
    .parameter "storagePath"

    .prologue
    .line 333
    const-string v0, "LocalMusicPlayer"

    const-string v1, "closeExternalStorageFiles++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 335
    const-string v0, "LocalMusicPlayer"

    const-string v1, "closeExternalStorageFiles--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public deInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    const-string v1, "LocalMusicPlayer"

    const-string v2, "deInit++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->pause()V

    .line 219
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->release()V

    .line 220
    iput-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    .line 222
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 223
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->resetLocalPlayer()V

    .line 227
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 229
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-direct {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, sp:Lcom/winca/music/preference/MusicSharePreference;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;->storyIsPlayHistory(Z)V

    .line 232
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->StopSendProgressTimeTask()V

    .line 233
    const-string v1, "LocalMusicPlayer"

    const-string v2, "deInit--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public duration()J
    .locals 4

    .prologue
    .line 561
    const-wide/16 v0, -0x1

    .line 563
    .local v0, duration:J
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    move-result-wide v0

    move-wide v2, v0

    .line 569
    :goto_0
    return-wide v2

    .line 566
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 824
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurPlayPosInPlayList()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayingMusic:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getQueue()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 754
    const-string v3, "LocalMusicPlayer"

    const-string v4, "getQueue++"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    .line 757
    .local v1, len:I
    new-array v2, v1, [Ljava/lang/String;

    .line 758
    .local v2, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 761
    const-string v3, "LocalMusicPlayer"

    const-string v4, "getQueue--"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    monitor-exit p0

    return-object v2

    .line 759
    :cond_0
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 2

    .prologue
    .line 833
    const-string v0, "LocalMusicPlayer"

    const-string v1, "getQueuePosition++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    monitor-enter p0

    .line 835
    :try_start_0
    const-string v0, "LocalMusicPlayer"

    const-string v1, "getQueuePosition--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    return v0
.end method

.method public initPlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    const-string v1, "LocalMusicPlayer"

    const-string v2, "initLocalMusicPlayer++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 256
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->initBrocast()V

    .line 258
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->requreVolumeValue()V

    .line 259
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->StartSendProgressTimeTask()V

    .line 261
    const-string v1, "LocalMusicPlayer"

    const-string v2, "initLocalMusicPlayer--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mbReset:Z

    return v0
.end method

.method public next(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 441
    const-string v0, "LocalMusicPlayer"

    const-string v1, "next++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendPauseForNoise()V

    .line 443
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 444
    const-string v0, "LocalMusicPlayer"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_0
    return-void

    .line 448
    :cond_0
    monitor-enter p0

    .line 449
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/winca/music/player/LocalMusicPlayer;->setPlayPos(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 451
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V

    .line 452
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 448
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    const-string v0, "LocalMusicPlayer"

    const-string v1, "next--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 454
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->pause()V

    goto :goto_1

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public open(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "oneshot"

    .prologue
    const/4 v3, 0x1

    .line 667
    const-string v0, "LocalMusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open(String path, boolean oneshot)++++:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    monitor-enter p0

    .line 669
    if-nez p1, :cond_0

    .line 670
    :try_start_0
    monitor-exit p0

    .line 702
    :goto_0
    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 675
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 679
    :cond_1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayingMusic:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 682
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 683
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-le v0, v3, :cond_2

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->next(Z)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    if-eqz v0, :cond_4

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    .line 690
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mQuietMode:Z

    if-nez v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    .line 692
    const-string v1, "Failed to open file for playback"

    .line 693
    const/4 v2, 0x0

    .line 691
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 695
    :cond_3
    const-string v0, "LocalMusicPlayer"

    const-string v1, "Failed to open file for playback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    const-string v0, "LocalMusicPlayer"

    const-string v1, "open(String path, boolean oneshot)----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mOpenFailedCounter:I

    goto :goto_1

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public open([Ljava/lang/String;I)V
    .locals 3
    .parameter "list"
    .parameter "position"

    .prologue
    .line 723
    const-string v1, "LocalMusicPlayer"

    const-string v2, "open(String [] list, int position)++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    monitor-enter p0

    .line 725
    :try_start_0
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 726
    const/4 v1, 0x1

    iput v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    .line 728
    :cond_0
    if-ltz p2, :cond_1

    .line 729
    iput p2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 734
    :goto_0
    array-length v1, p1

    iput v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    .line 735
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mbReset:Z

    .line 736
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-lt v0, v1, :cond_2

    .line 741
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V

    .line 724
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    const-string v1, "LocalMusicPlayer"

    const-string v2, "open(long [] list, int position)----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 731
    .end local v0           #i:I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRand:Lcom/winca/music/player/LocalMusicPlayer$Shuffler;

    iget v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    invoke-virtual {v1, v2}, Lcom/winca/music/player/LocalMusicPlayer$Shuffler;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 738
    .restart local v0       #i:I
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayList:[Ljava/lang/String;

    aget-object v2, p1, v0

    aput-object v2, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "LocalMusicPlayer"

    const-string v1, "pause++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendPauseForNoise()V

    .line 390
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->pause()V

    .line 391
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->gotoIdleState()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 387
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    const-string v0, "LocalMusicPlayer"

    const-string v1, "pause--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 387
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 8

    .prologue
    const-wide/16 v5, 0x7d0

    const/4 v7, 0x1

    .line 340
    const-string v3, "LocalMusicPlayer"

    const-string v4, "play++"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 344
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    move-result-wide v0

    .line 347
    .local v0, duration:J
    iget v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    if-eq v3, v7, :cond_0

    cmp-long v3, v0, v5

    if-lez v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->position()J

    move-result-wide v3

    sub-long v5, v0, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 349
    invoke-virtual {p0, v7}, Lcom/winca/music/player/LocalMusicPlayer;->next(Z)V

    .line 352
    :cond_0
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    .line 353
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->start()V

    .line 355
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendPlayseForNoise()V

    .line 356
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendMcuDataType()V

    .line 357
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendMcuAudioData()V

    .line 359
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    iget v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    invoke-static {v3, v4}, Lcom/winca/music/player/MusicOperaUtil;->BrocastCurPlayId(Landroid/content/Context;I)V

    .line 361
    new-instance v2, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;

    invoke-direct {v2, v3}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 362
    .local v2, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPlay(Ljava/lang/String;)V

    .line 364
    iget-boolean v3, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    if-nez v3, :cond_1

    .line 365
    iput-boolean v7, p0, Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z

    .line 370
    .end local v0           #duration:J
    .end local v2           #sp:Lcom/winca/music/preference/MusicSharePreference;
    :cond_1
    const-string v3, "LocalMusicPlayer"

    const-string v4, "play--"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method public position()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 577
    const-wide/16 v0, -0x1

    .line 579
    .local v0, position:J
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-nez v4, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-wide v2

    .line 583
    :cond_1
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->position()J

    move-result-wide v0

    move-wide v2, v0

    .line 589
    goto :goto_0
.end method

.method public postInit()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "LocalMusicPlayer"

    const-string v1, "postInit++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mServiceInUse:Z

    .line 246
    const-string v0, "LocalMusicPlayer"

    const-string v1, "postInit--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public preDeInit()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 293
    const-string v1, "LocalMusicPlayer"

    const-string v2, "preDeInit++"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mServiceInUse:Z

    .line 304
    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v4

    .line 310
    :cond_1
    const-string v1, "LocalMusicPlayer"

    const-string v2, "preDeInit--"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 424
    const-string v0, "LocalMusicPlayer"

    const-string v1, "prev++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->sendPauseForNoise()V

    .line 426
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 427
    const-string v0, "LocalMusicPlayer"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 430
    :cond_0
    monitor-enter p0

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->setPlayPos(ZZ)Z

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 433
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V

    .line 434
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 430
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    const-string v0, "LocalMusicPlayer"

    const-string v1, "prev--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resetLocalPlayer()V
    .locals 1

    .prologue
    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayingMusic:Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mbReset:Z

    .line 91
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->stop()V

    .line 92
    return-void
.end method

.method public seek(J)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 600
    const-wide/16 v0, -0x1

    .line 602
    .local v0, seek:J
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 603
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 604
    const-wide/16 p1, 0x0

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->duration()J

    move-result-wide p1

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 609
    :cond_2
    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 847
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setQueuePosition++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    monitor-enter p0

    .line 849
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 850
    iput p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayPos:I

    .line 851
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V

    .line 852
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 854
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 855
    invoke-direct {p0}, Lcom/winca/music/player/LocalMusicPlayer;->doAutoShuffleUpdate()V

    .line 848
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setQueuePosition--"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void

    .line 848
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setRepeatAll(Z)V
    .locals 0
    .parameter "bRpeatAll"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatAll:Z

    .line 614
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2
    .parameter "repeatmode"

    .prologue
    .line 644
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setRepeatMode++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    iput p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I

    .line 645
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setRepeatMode--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void

    .line 645
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "shufflemode"

    .prologue
    .line 618
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setShuffleMode++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer;->mPlayListLen:I

    if-lez v0, :cond_0

    .line 621
    monitor-exit p0

    .line 635
    :goto_0
    return-void

    .line 623
    :cond_0
    iput p1, p0, Lcom/winca/music/player/LocalMusicPlayer;->mShuffleMode:I

    .line 619
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    const-string v0, "LocalMusicPlayer"

    const-string v1, "setShuffleMode--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop(Z)V

    .line 379
    return-void
.end method
