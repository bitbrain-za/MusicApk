.class public Lcom/winca/music/player/MusicPlayerControler;
.super Ljava/lang/Object;
.source "MusicPlayerControler.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;,
        Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;,
        Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MusicPlayer"

.field private static bResetPlayer:Z

.field private static isPlayHistory:Z

.field public static isPlaying:Z


# instance fields
.field private CurPlayMode:I

.field private commandFilter:Landroid/content/IntentFilter;

.field private curPlayState:I

.field private isSoundSourceSelected:Z

.field private mContext:Lcom/winca/music/service/MusicService;

.field private mIntentReceiver:Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

.field private mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

.field private mOperaReceiver:Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

.field private mReceiver:Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

.field private mTimer:Ljava/util/Timer;

.field private musicFilter:Landroid/content/IntentFilter;

.field private repeatAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sput-boolean v1, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->bResetPlayer:Z

    .line 43
    sput-boolean v1, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory:Z

    return-void
.end method

.method public constructor <init>(Lcom/winca/music/service/MusicService;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    .line 30
    iput-boolean v1, p0, Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z

    .line 31
    iput v2, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    .line 32
    iput v2, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    .line 34
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mOperaReceiver:Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

    .line 35
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mIntentReceiver:Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

    .line 36
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mReceiver:Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

    .line 37
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    .line 38
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    .line 39
    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mTimer:Ljava/util/Timer;

    .line 41
    iput-boolean v1, p0, Lcom/winca/music/player/MusicPlayerControler;->repeatAll:Z

    .line 76
    iput-object p1, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    .line 77
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->init()V

    .line 79
    return-void
.end method

.method private EnterAudio()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPlayerControler;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPlayerControler;->Play()V

    .line 269
    :cond_0
    return-void
.end method

.method private InitialPlayer()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/winca/music/player/LocalMusicPlayer;

    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    invoke-direct {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;-><init>(Lcom/winca/music/service/MusicService;)V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    .line 215
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->initPlayer()V

    .line 217
    return-void
.end method

.method private WatchOnPlayerState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 228
    const-string v0, "MusicActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get New State:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget v1, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicOperaUtil;->BrocastPlayState(Landroid/content/Context;I)V

    .line 238
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/player/LocalMusicPlayer;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/music/player/MusicPlayerControler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z

    return-void
.end method

.method static synthetic access$2(Lcom/winca/music/player/MusicPlayerControler;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->EnterAudio()V

    return-void
.end method

.method static synthetic access$3(Lcom/winca/music/player/MusicPlayerControler;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z

    return v0
.end method

.method static synthetic access$4(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/service/MusicService;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/winca/music/player/MusicPlayerControler;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    return v0
.end method

.method static synthetic access$6(Lcom/winca/music/player/MusicPlayerControler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    return-void
.end method

.method static synthetic access$7(Lcom/winca/music/player/MusicPlayerControler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/winca/music/player/MusicPlayerControler;->getNewMode(I)V

    return-void
.end method

.method private getNewMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 242
    if-gez p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iput p1, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    .line 246
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    invoke-virtual {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayMode(I)V

    goto :goto_0
.end method

.method public static getResetState()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->bResetPlayer:Z

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->InitialPlayer()V

    .line 304
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->requreVoiceSource()V

    .line 305
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->initBrocast()V

    .line 306
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 308
    return-void
.end method

.method private initBrocast()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    new-instance v1, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;)V

    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mOperaReceiver:Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

    .line 274
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    .line 275
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerControler;->mOperaReceiver:Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

    iget-object v3, p0, Lcom/winca/music/player/MusicPlayerControler;->musicFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lcom/winca/music/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    new-instance v1, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;)V

    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mReceiver:Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.winca.music.seekBar"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerControler;->mReceiver:Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/winca/music/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    new-instance v1, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;)V

    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mIntentReceiver:Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

    .line 285
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    .line 286
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "CHANNEL_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.service.audiochannel.audio"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.video.VIDEO_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.music_EXIT_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.filemanager.VIDEO_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.filemanager.MUSIC_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.service.audioplayer.action.KEY_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.service.audioplayer.action.AUDIO_PLAYER_ONNEWINTENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerControler;->mIntentReceiver:Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

    iget-object v3, p0, Lcom/winca/music/player/MusicPlayerControler;->commandFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lcom/winca/music/service/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method public static isPlayHistory()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory:Z

    return v0
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    return v0
.end method

.method private requreVoiceSource()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->BrocastInquireSoundSounce(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method public static setIsPlayHistory(Z)V
    .locals 0
    .parameter "ispalay"

    .prologue
    .line 51
    sput-boolean p0, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory:Z

    .line 52
    return-void
.end method

.method public static setIsPlayint(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 59
    sput-boolean p0, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    .line 60
    return-void
.end method

.method private setPlayState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 251
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iput p1, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    .line 255
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->WatchOnPlayerState(I)V

    goto :goto_0
.end method

.method public static setResetState(Z)V
    .locals 0
    .parameter "bstate"

    .prologue
    .line 67
    sput-boolean p0, Lcom/winca/music/player/MusicPlayerControler;->bResetPlayer:Z

    .line 68
    return-void
.end method

.method private unResigerBrocast()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mOperaReceiver:Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/service/MusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mReceiver:Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/service/MusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mIntentReceiver:Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/service/MusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    return-void
.end method


# virtual methods
.method public Continue()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "MusicPlayer"

    const-string v2, "Continue()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 167
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 168
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public Next()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 186
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->next(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public Pause()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v2}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-string v1, "MusicPlayer"

    const-string v2, "Pause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 151
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/LocalMusicPlayer;->pause()V

    .line 160
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v2, "MusicPlayer"

    const-string v3, "Play"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 155
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public Play()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 142
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 144
    :cond_0
    return-void
.end method

.method public Play(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0, p1}, Lcom/winca/music/player/LocalMusicPlayer;->setQueuePosition(I)V

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 137
    return-void
.end method

.method public Pre()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 194
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->prev()V

    .line 196
    :cond_0
    return-void
.end method

.method public ResetPlayer()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "MusicPlayer"

    const-string v1, "ResetPlayer!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winca/music/player/MusicPlayerControler;->isPlaying:Z

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/winca/music/player/MusicPlayerControler;->setResetState(Z)V

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 86
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->resetLocalPlayer()V

    .line 87
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "MusicPlayer"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPlayerControler;->setPlayState(I)V

    .line 178
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->stop()V

    .line 180
    :cond_0
    return-void
.end method

.method public getCurPlayMode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    return v0
.end method

.method public getCurPlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurPos()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/winca/music/player/MusicPlayerControler;->curPlayState:I

    return v0
.end method

.method public leaveAudio()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "MusicPlayer"

    const-string v1, "leaveAudio---"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPlayerControler;->getPlayState()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPlayerControler;->Pause()Z

    .line 263
    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "MusicPlayer"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerControler;->unResigerBrocast()V

    .line 201
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPlayerControler;->ResetPlayer()V

    .line 202
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->deInit()V

    .line 204
    return-void
.end method

.method public setPlayMode(I)V
    .locals 3
    .parameter "curPlayMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0, v2}, Lcom/winca/music/player/LocalMusicPlayer;->setShuffleMode(I)V

    .line 118
    :goto_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 120
    iput-boolean v2, p0, Lcom/winca/music/player/MusicPlayerControler;->repeatAll:Z

    .line 121
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    iget-boolean v1, p0, Lcom/winca/music/player/MusicPlayerControler;->repeatAll:Z

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->setRepeatAll(Z)V

    .line 128
    :goto_1
    iput p1, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    .line 129
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0, p1}, Lcom/winca/music/player/LocalMusicPlayer;->setRepeatMode(I)V

    .line 130
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;

    iget v1, p0, Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicOperaUtil;->BrocastPlayMode(Landroid/content/Context;I)V

    .line 132
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->setShuffleMode(I)V

    goto :goto_0

    .line 124
    :cond_1
    iput-boolean v1, p0, Lcom/winca/music/player/MusicPlayerControler;->repeatAll:Z

    .line 125
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    iget-boolean v1, p0, Lcom/winca/music/player/MusicPlayerControler;->repeatAll:Z

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->setRepeatAll(Z)V

    goto :goto_1
.end method

.method public updatePlayerPlayList([Ljava/lang/String;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/winca/music/player/LocalMusicPlayer;->open([Ljava/lang/String;I)V

    .line 72
    return-void
.end method
