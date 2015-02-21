.class public Lcom/winca/music/Pages/PlayMusicPage;
.super Lcom/winca/music/Pages/Page;
.source "PlayMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;,
        Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayMusicView"

.field private static mChangeCDBrack:Z


# instance fields
.field public final PLAY_STATE_PAUSE:I

.field public final PLAY_STATE_PLAY:I

.field public final PLAY_STATE_STOP:I

.field private curPlayMode:I

.field private filter:Landroid/content/IntentFilter;

.field private isSeekBarTouching:Z

.field private mAlbumImage:Landroid/widget/ImageView;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mNext:Landroid/widget/ImageView;

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPause:Landroid/widget/ImageView;

.field private mPlay:Landroid/widget/ImageView;

.field private mPlayCDBack:Landroid/widget/ImageView;

.field private mPlayList:Landroid/widget/ImageView;

.field private mPlayRandom:Landroid/widget/ImageView;

.field private mPlayRepeatAll:Landroid/widget/ImageView;

.field private mPlayRepeatList:Landroid/widget/ImageView;

.field private mPlayRepeatOnce:Landroid/widget/ImageView;

.field private mPlaySeekBar:Landroid/widget/SeekBar;

.field private mPlayingAlbum:Lcom/winca/customView/WincaTextView;

.field private mPlayingArtist:Lcom/winca/customView/WincaTextView;

.field private mPlayingSong:Lcom/winca/customView/WincaTextView;

.field private mPrevious:Landroid/widget/ImageView;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTotalTime:Landroid/widget/TextView;

.field private mViewSatateReceiver:Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

.field private miTotoalTime:I

.field private receiver:Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    return-void
.end method

.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 4
    .parameter "a"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/Page;-><init>(Lcom/winca/music/MusicActivity;)V

    .line 34
    iput v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->PLAY_STATE_PLAY:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->PLAY_STATE_PAUSE:I

    .line 36
    iput v3, p0, Lcom/winca/music/Pages/PlayMusicPage;->PLAY_STATE_STOP:I

    .line 38
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;

    .line 39
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayList:Landroid/widget/ImageView;

    .line 40
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    .line 41
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    .line 42
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPrevious:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mNext:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    .line 47
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    .line 48
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayCDBack:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mAlbumImage:Landroid/widget/ImageView;

    .line 51
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    .line 52
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    .line 53
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    .line 54
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mCurrentTime:Landroid/widget/TextView;

    .line 55
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;

    .line 56
    iput v3, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    .line 57
    iput-boolean v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z

    .line 58
    iput v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I

    .line 61
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mViewSatateReceiver:Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

    .line 62
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    .line 64
    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mNotificationManager:Landroid/app/NotificationManager;

    .line 187
    new-instance v0, Lcom/winca/music/Pages/PlayMusicPage$1;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/PlayMusicPage$1;-><init>(Lcom/winca/music/Pages/PlayMusicPage;)V

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 69
    return-void
.end method

.method private ShowViewByState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    if-nez p1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 333
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 335
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {v0, v2}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPlayState(I)V

    .line 350
    .end local v0           #sp:Lcom/winca/music/preference/MusicSharePreference;
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-ne p1, v3, :cond_2

    .line 338
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 342
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 343
    .restart local v0       #sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {v0, v3}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPlayState(I)V

    goto :goto_0

    .line 344
    .end local v0           #sp:Lcom/winca/music/preference/MusicSharePreference;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 347
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/winca/music/Pages/PlayMusicPage;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I

    return v0
.end method

.method static synthetic access$1(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/winca/music/Pages/PlayMusicPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    return-void
.end method

.method static synthetic access$11(Lcom/winca/music/Pages/PlayMusicPage;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    return v0
.end method

.method static synthetic access$2(Lcom/winca/music/Pages/PlayMusicPage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z

    return-void
.end method

.method static synthetic access$3(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/winca/music/Pages/PlayMusicPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I

    return-void
.end method

.method static synthetic access$5(Lcom/winca/music/Pages/PlayMusicPage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PlayMusicPage;->cdTrackAnimination(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/winca/music/Pages/PlayMusicPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z

    return v0
.end method

.method static synthetic access$7(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/winca/music/Pages/PlayMusicPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PlayMusicPage;->ShowViewByState(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/winca/music/Pages/PlayMusicPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PlayMusicPage;->getNewPlay(I)V

    return-void
.end method

.method private cdTrackAnimination(Z)V
    .locals 4
    .parameter "bRotate"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    sget-boolean v2, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayCDBack:Landroid/widget/ImageView;

    const v3, 0x7f02006a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 222
    sget-boolean v2, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    if-eqz v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    .line 228
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayCDBack:Landroid/widget/ImageView;

    const v3, 0x7f02006b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    sget-boolean v2, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    if-eqz v2, :cond_3

    :goto_2
    sput-boolean v0, Lcom/winca/music/Pages/PlayMusicPage;->mChangeCDBrack:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private getNewPlay(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v2}, Lcom/winca/music/player/MusicPlayerDataManager;->getPlayerMap()Ljava/util/Map;

    move-result-object v1

    .line 355
    .local v1, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 356
    .local v0, audio:Lcom/winca/music/mediautil/AudioEntity;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/winca/music/mediautil/AudioEntity;
    check-cast v0, Lcom/winca/music/mediautil/AudioEntity;

    .line 357
    .restart local v0       #audio:Lcom/winca/music/mediautil/AudioEntity;
    if-eqz v0, :cond_0

    .line 358
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v4, v3}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 369
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    const/16 v3, 0x190

    invoke-virtual {v2, v4, v3}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 370
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    const/16 v3, 0x258

    invoke-virtual {v2, v4, v3}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 373
    :cond_0
    return-void
.end method

.method private initBrocast()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;-><init>(Lcom/winca/music/Pages/PlayMusicPage;Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;)V

    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mViewSatateReceiver:Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    .line 147
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.BROCAST_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.BROCAST_PLAYING_INFO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.MusicPlay.BROCAST_PLAY_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.winca.kkcmh.CURENT_PLAY_ID"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mViewSatateReceiver:Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

    iget-object v3, p0, Lcom/winca/music/Pages/PlayMusicPage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v1, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;

    invoke-direct {v1, p0}, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;-><init>(Lcom/winca/music/Pages/PlayMusicPage;)V

    iput-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->receiver:Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.winca.music.progress"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->receiver:Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method

.method private initWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;

    .line 162
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayList:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPrevious:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mNext:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 173
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 177
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayCDBack:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winca/customView/WincaTextView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    .line 180
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winca/customView/WincaTextView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    .line 181
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/winca/customView/WincaTextView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    .line 182
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mCurrentTime:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mAlbumImage:Landroid/widget/ImageView;

    .line 185
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayList:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 140
    return-void
.end method

.method private setPlayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0, p1}, Lcom/winca/music/player/MusicOperaUtil;->setPlayMode(Landroid/content/Context;I)V

    .line 267
    return-void
.end method

.method private showCurPlayInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v0, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    .line 75
    sget-object v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    .line 77
    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    .line 79
    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/winca/customView/WincaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingSong:Lcom/winca/customView/WincaTextView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 82
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingAlbum:Lcom/winca/customView/WincaTextView;

    const/16 v1, 0x190

    invoke-virtual {v0, v2, v1}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 83
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayingArtist:Lcom/winca/customView/WincaTextView;

    const/16 v1, 0x258

    invoke-virtual {v0, v2, v1}, Lcom/winca/customView/WincaTextView;->setVisibility(II)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public OnDestrory()V
    .locals 2

    .prologue
    .line 322
    const-string v0, "PlayMusicView"

    const-string v1, "PlayMusicView   OnDestrory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->mViewSatateReceiver:Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage;->receiver:Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->OnDestrory()V

    .line 326
    return-void
.end method

.method public ShowCurPlayMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 278
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    if-ne v0, v4, :cond_1

    .line 279
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 306
    :cond_3
    iget v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public create()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->createLayout(I)V

    .line 95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->setVisibility(I)V

    .line 97
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayMusicPage;->initWidget()V

    .line 98
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayMusicPage;->setListener()V

    .line 99
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayMusicPage;->initBrocast()V

    .line 100
    invoke-virtual {p0}, Lcom/winca/music/Pages/PlayMusicPage;->ShowCurPlayMode()V

    .line 101
    invoke-virtual {p0}, Lcom/winca/music/Pages/PlayMusicPage;->readLastMode()V

    .line 102
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->create()V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayList:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPrevious:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->SetPre(Landroid/content/Context;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPause:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlay:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->setPlayPause(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mNext:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 114
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->SetNext(Landroid/content/Context;)V

    goto :goto_0

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRandom:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatAll:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatOnce:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mPlayRepeatList:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->ChangePlayMode(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onKeyBack()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 125
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayMusicPage;->showCurPlayInfo()V

    .line 91
    return-void
.end method

.method public readLastMode()V
    .locals 3

    .prologue
    .line 270
    new-instance v1, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v1, v2}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {v1}, Lcom/winca/music/preference/MusicSharePreference;->ReadPlayMode()I

    move-result v0

    .line 272
    .local v0, mode:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 273
    invoke-direct {p0, v0}, Lcom/winca/music/Pages/PlayMusicPage;->setPlayMode(I)V

    .line 275
    :cond_0
    return-void
.end method
