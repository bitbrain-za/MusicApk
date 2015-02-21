.class public Lcom/winca/music/Pages/MusicMainPage;
.super Lcom/winca/music/Pages/Page;
.source "MusicMainPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;,
        Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/winca/music/Pages/Page;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/winca/music/player/MusicPlayerDef;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicMainPage"


# instance fields
.field public final ERROR_FILE_NOT_EXIST:I

.field public final ERROR_NOT_PLAY_STATE:I

.field public final ERROR_PLAYING:I

.field private final MSG_PLAY_HISTORY:I

.field public final PLAY_STATE_PAUSE:I

.field public final PLAY_STATE_PLAY:I

.field public final PLAY_STATE_STOP:I

.field public final SUCCESS:I

.field private albumGridView:Landroid/widget/GridView;

.field private albumsLayout:Landroid/widget/LinearLayout;

.field private albumsMenu:Landroid/widget/TextView;

.field private artistGridView:Landroid/widget/GridView;

.field private artistsLayout:Landroid/widget/LinearLayout;

.field private artistsMenu:Landroid/widget/TextView;

.field private changeLayout:Landroid/widget/LinearLayout;

.field private changeMenu:Landroid/widget/TextView;

.field private curVolmue:I

.field private hdImageView:Landroid/widget/ImageView;

.field private interruptJump:Z

.field private listView:Landroid/widget/ListView;

.field private mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

.field private mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

.field private mBroadcastReceiver:Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastUsbVolmue:I

.field private mMountReceiver:Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

.field private mScanDialog:Lcom/winca/Dialog/ScanDialog;

.field private mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private noContentLayout:Landroid/widget/LinearLayout;

.field private playMusic:Landroid/widget/ImageButton;

.field private sdImageView:Landroid/widget/ImageView;

.field private songsLayout:Landroid/widget/LinearLayout;

.field private songsMenu:Landroid/widget/TextView;

.field private usbImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 4
    .parameter "a"

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/Page;-><init>(Lcom/winca/music/MusicActivity;)V

    .line 48
    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->MSG_PLAY_HISTORY:I

    .line 49
    iput v2, p0, Lcom/winca/music/Pages/MusicMainPage;->PLAY_STATE_PLAY:I

    .line 50
    iput v3, p0, Lcom/winca/music/Pages/MusicMainPage;->PLAY_STATE_PAUSE:I

    .line 51
    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->PLAY_STATE_STOP:I

    .line 53
    iput v2, p0, Lcom/winca/music/Pages/MusicMainPage;->SUCCESS:I

    .line 54
    iput v3, p0, Lcom/winca/music/Pages/MusicMainPage;->ERROR_PLAYING:I

    .line 55
    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->ERROR_NOT_PLAY_STATE:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->ERROR_FILE_NOT_EXIST:I

    .line 58
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    .line 65
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    .line 69
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->hdImageView:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    .line 74
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    .line 76
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->albumGridView:Landroid/widget/GridView;

    .line 77
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->artistGridView:Landroid/widget/GridView;

    .line 78
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    .line 79
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    .line 80
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    .line 82
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 83
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mBroadcastReceiver:Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

    .line 84
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mMountReceiver:Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

    .line 85
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mScanDialog:Lcom/winca/Dialog/ScanDialog;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->curVolmue:I

    .line 87
    iput v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mLastUsbVolmue:I

    .line 88
    iput-boolean v2, p0, Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z

    .line 1004
    new-instance v0, Lcom/winca/music/Pages/MusicMainPage$1;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/MusicMainPage$1;-><init>(Lcom/winca/music/Pages/MusicMainPage;)V

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mHandler:Landroid/os/Handler;

    .line 116
    const-string v0, "MusicMainPage"

    const-string v1, "MusicMainPage   MusicMianVireCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private JumpToHistoryPos()V
    .locals 3

    .prologue
    .line 991
    iget-boolean v1, p0, Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v1}, Lcom/winca/music/player/MusicOperaUtil;->setReset(Landroid/content/Context;)V

    .line 1002
    :goto_0
    return-void

    .line 996
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.music.seekBar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "seekBarPosition"

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget v2, v2, Lcom/winca/music/MusicActivity;->lastPlayPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 998
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v1, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1000
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v2, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1, v2}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    goto :goto_0
.end method

.method private PlayHistory()V
    .locals 6

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v2}, Lcom/winca/music/MusicActivity;->readPlayerData()V

    .line 1025
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->canPlayHistory()I

    move-result v0

    .line 1027
    .local v0, res:I
    if-eqz v0, :cond_1

    .line 1028
    const-string v2, "MusicMainPage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Play History Fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/winca/music/Pages/MusicMainPage;->getVolume(Ljava/lang/String;)I

    move-result v1

    .line 1034
    .local v1, vol:I
    invoke-direct {p0, v1}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    .line 1035
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->handlePlayHistory()V

    return-void
.end method

.method static synthetic access$1(Lcom/winca/music/Pages/MusicMainPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->PlayHistory()V

    return-void
.end method

.method static synthetic access$11(Lcom/winca/music/Pages/MusicMainPage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->showSearchDialog()V

    return-void
.end method

.method static synthetic access$13(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->hideSearchDialog()V

    return-void
.end method

.method static synthetic access$14(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->savePlayState()V

    return-void
.end method

.method static synthetic access$15(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->saveMusicLib()V

    return-void
.end method

.method static synthetic access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z

    return-void
.end method

.method static synthetic access$3(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V

    return-void
.end method

.method static synthetic access$4(Lcom/winca/music/Pages/MusicMainPage;)I
    .locals 1
    .parameter

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->setDefMusicLib()V

    return-void
.end method

.method static synthetic access$6(Lcom/winca/music/Pages/MusicMainPage;)Lcom/winca/music/adapter/SongAdapter;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->setSelection()V

    return-void
.end method

.method static synthetic access$8(Lcom/winca/music/Pages/MusicMainPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->isSdcardExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->showDialogByState()V

    return-void
.end method

.method private canPlayHistory()I
    .locals 4

    .prologue
    .line 931
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    const-string v1, "MusicMainPage"

    const-string v2, "PlayHistory Fail is Playing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v1, 0x1

    .line 953
    :goto_0
    return v1

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v1}, Lcom/winca/music/MusicActivity;->getLastPlayState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    const-string v1, "MusicMainPage"

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayHistory in get Play State:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v3}, Lcom/winca/music/MusicActivity;->getLastPlayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v1, 0x2

    goto :goto_0

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 946
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 948
    const/4 v1, 0x3

    goto :goto_0

    .line 953
    .end local v0           #file:Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeMusicLib(I)V
    .locals 6
    .parameter "volume"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, bSdState:Z
    const/4 v2, 0x0

    .line 603
    .local v2, busbState:Z
    const/4 v1, 0x0

    .line 605
    .local v1, bhardiskState:Z
    if-eqz p1, :cond_1

    .line 606
    if-eq p1, v4, :cond_1

    .line 607
    if-eq p1, v5, :cond_1

    .line 608
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    if-nez p1, :cond_4

    .line 612
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/mnt/sdcard/sdcard"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    :cond_2
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 627
    const-string v3, "MusicMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Change Music Lib old:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 628
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->setCurVolume(I)V

    .line 630
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v3}, Lcom/winca/music/player/MusicOperaUtil;->setReset(Landroid/content/Context;)V

    .line 633
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 647
    :goto_1
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v3, v3, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v3, p1}, Lcom/winca/music/player/MusicPlayerDataManager;->ChangeVolmue(I)V

    .line 648
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->initAdapter(I)V

    .line 650
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 651
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 652
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->hdImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 653
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->saveMusicLib()V

    goto :goto_0

    .line 615
    :cond_4
    if-ne p1, v4, :cond_5

    .line 616
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/mnt/udisk"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 619
    :cond_5
    if-ne p1, v5, :cond_2

    .line 620
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/mnt/udisk1"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 635
    :pswitch_0
    const/4 v0, 0x1

    .line 636
    goto :goto_1

    .line 639
    :pswitch_1
    const/4 v2, 0x1

    .line 640
    goto :goto_1

    .line 642
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_1

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private changeTab(I)V
    .locals 0
    .parameter "tabVolue"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->changeTabBG(I)V

    .line 540
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->setLayoutVisible(I)V

    .line 541
    return-void
.end method

.method private changeTabBG(I)V
    .locals 4
    .parameter "index"

    .prologue
    const v3, 0x7f050002

    const/16 v2, 0x8

    const v1, 0x7f020008

    .line 451
    const v0, 0x7f0a0017

    if-ne p1, v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 453
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 454
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 455
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 456
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const v0, 0x7f0a0018

    if-ne p1, v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 459
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 460
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 461
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 463
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    if-nez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_3
    const v0, 0x7f0a0019

    if-ne p1, v0, :cond_4

    .line 470
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 471
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 472
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 473
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 474
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 475
    :cond_4
    const v0, 0x7f0a001a

    if-ne p1, v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 477
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 478
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 479
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 480
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkUsbVolumeAndEndble()V
    .locals 2

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->isUdiskExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getAlbumName(I)Ljava/lang/String;
    .locals 4
    .parameter "pos"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v2}, Lcom/winca/music/player/MusicPlayerDataManager;->GetAlbumMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/service/scannerMedia/Album;

    .line 252
    .local v0, album:Lcom/winca/service/scannerMedia/Album;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Album;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, albumName:Ljava/lang/String;
    return-object v1
.end method

.method private getArttistName(I)Ljava/lang/String;
    .locals 4
    .parameter "pos"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v2}, Lcom/winca/music/player/MusicPlayerDataManager;->GetArtistMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/service/scannerMedia/Artist;

    .line 264
    .local v0, artist:Lcom/winca/service/scannerMedia/Artist;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Artist;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, artistName:Ljava/lang/String;
    return-object v1
.end method

.method private getCurVolume()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/winca/music/Pages/MusicMainPage;->curVolmue:I

    return v0
.end method

.method private getVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 957
    const-string v0, "/mnt/sdcard/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    .line 959
    :cond_0
    const-string v0, "/mnt/udisk/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 960
    const/4 v0, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const-string v0, "/mnt/udisk1/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    const/4 v0, 0x3

    goto :goto_0

    .line 963
    :cond_2
    const-string v0, "/mnt/harddisk/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    const/4 v0, 0x2

    goto :goto_0

    .line 967
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handlePlayHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 972
    iget-boolean v1, p0, Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z

    if-eqz v1, :cond_0

    .line 987
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-static {v3}, Lcom/winca/music/player/MusicPlayerControler;->setIsPlayint(Z)V

    .line 977
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iput-boolean v3, v1, Lcom/winca/music/MusicActivity;->isPlayHistoryAlready:Z

    .line 978
    const-string v1, "Audio"

    invoke-direct {p0, v1}, Lcom/winca/music/Pages/MusicMainPage;->updatePlayingListByListType(Ljava/lang/String;)V

    .line 979
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v1}, Lcom/winca/music/MusicActivity;->updaPlayerPlayList()V

    .line 981
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v2, v2, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winca/music/MusicActivity;->getIDfromPlayerPlaying(Ljava/lang/String;)I

    move-result v0

    .line 982
    .local v0, id:I
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v1, v0}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 983
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->JumpToHistoryPos()V

    .line 984
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/winca/music/MusicActivity;->setLoadingState(Z)V

    .line 985
    invoke-static {v3}, Lcom/winca/music/player/MusicPlayerControler;->setIsPlayHistory(Z)V

    .line 986
    const-string v1, "MusicMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PlayHistory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v3, v3, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideSearchDialog()V
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/winca/music/Pages/MusicMainPage;->getScanDialog()Lcom/winca/Dialog/ScanDialog;

    move-result-object v0

    .line 759
    .local v0, dialog:Lcom/winca/Dialog/ScanDialog;
    invoke-virtual {v0}, Lcom/winca/Dialog/ScanDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    invoke-virtual {v0}, Lcom/winca/Dialog/ScanDialog;->hide()V

    .line 762
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 156
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 155
    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->initBrocast()V

    .line 160
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->initWidgets()V

    .line 161
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->setListener()V

    .line 163
    return-void
.end method

.method private initAdapter(I)V
    .locals 2
    .parameter "storageStyle"

    .prologue
    const/4 v1, 0x0

    .line 585
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->initAudiosAdaptor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    .line 589
    :cond_0
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->initAlbumAdaptor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    .line 593
    :cond_1
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->initArtistAdaptor(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    .line 597
    :cond_2
    return-void
.end method

.method private initAlbumAdaptor(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->GetAlbumMap()Ljava/util/Map;

    move-result-object v0

    .line 546
    .local v0, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    new-instance v1, Lcom/winca/music/adapter/AlbumsAdapter;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 548
    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v0, v3}, Lcom/winca/music/adapter/AlbumsAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 547
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    .line 549
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->albumGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 550
    const/4 v1, 0x1

    .line 553
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initArtistAdaptor(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->GetArtistMap()Ljava/util/Map;

    move-result-object v0

    .line 573
    .local v0, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Lcom/winca/music/adapter/ArtistsAdapter;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 575
    const v3, 0x7f030002

    invoke-direct {v1, v2, v0, v3}, Lcom/winca/music/adapter/ArtistsAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 574
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    .line 577
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->artistGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    const/4 v1, 0x1

    .line 580
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initAudiosAdaptor(I)Z
    .locals 4
    .parameter "volume"

    .prologue
    .line 558
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->GetAudioMap()Ljava/util/Map;

    move-result-object v0

    .line 559
    .local v0, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 561
    new-instance v1, Lcom/winca/music/adapter/SongAdapter;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 562
    const v3, 0x7f03000b

    invoke-direct {v1, v2, v0, v3}, Lcom/winca/music/adapter/SongAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 561
    iput-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    .line 563
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 564
    const/4 v1, 0x1

    .line 568
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initBrocast()V
    .locals 4

    .prologue
    .line 126
    new-instance v2, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;-><init>(Lcom/winca/music/Pages/MusicMainPage;)V

    iput-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mMountReceiver:Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mMountReceiver:Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    new-instance v2, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/MusicMainPage;Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;)V

    iput-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mBroadcastReceiver:Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v1, upDateFilter:Landroid/content/IntentFilter;
    const-string v2, "com.winca.music.UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v2, "com.winca.music.REMOTE_SERVER_CONNECT_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v2, "com.winca.music.ACTION_SYSTEM_EXIT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "com.winca.service.scannerMedia.SCAN_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v2, "com.winca.service.scannerMedia.SCAN_TASK_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v2, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "com.winca.kkcmh.CURENT_PLAY_ID"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "com.winca.service.scannerMedia.SCAN_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "com.winca.service.scannerMedia.SCAN_TYPE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "com.winca.kkcmh.VOLUME_DATA_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mBroadcastReceiver:Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method private initWidgets()V
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    .line 190
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    .line 191
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    .line 192
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    .line 193
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    .line 201
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->hdImageView:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    .line 204
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumGridView:Landroid/widget/GridView;

    .line 205
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistGridView:Landroid/widget/GridView;

    .line 206
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    .line 208
    return-void
.end method

.method private isSdcardExist()Z
    .locals 4

    .prologue
    .line 1040
    const/4 v1, 0x0

    .line 1042
    .local v1, isExist:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v3, "/mnt/sdcard/sdcard"

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 1050
    :goto_0
    return v2

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1046
    const-string v2, "MusicMainPage"

    const-string v3, "Error in Get UDisk State!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUdiskExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    const/4 v1, 0x0

    .line 1056
    .local v1, isExist:Z
    :try_start_0
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/mnt/udisk"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1057
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v4, "/mnt/udisk1"

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :goto_0
    move v2, v1

    .line 1065
    :goto_1
    return v2

    .line 1056
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    const-string v3, "MusicMainPage"

    const-string v4, "Error in Get UDisk State!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onTouchDown(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 336
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTabBG(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTabBG(I)V

    goto :goto_0

    .line 342
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTabBG(I)V

    goto :goto_0

    .line 345
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTabBG(I)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x7f0a0017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onTouchMove()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method private onTouchUp(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 317
    :pswitch_0
    const v0, 0x7f0a0017

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    goto :goto_0

    .line 320
    :pswitch_1
    const v0, 0x7f0a0018

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    goto :goto_0

    .line 323
    :pswitch_2
    const v0, 0x7f0a0019

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    goto :goto_0

    .line 326
    :pswitch_3
    const v0, 0x7f0a001a

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x7f0a0017
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private returnHome()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, inter:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v1, v0}, Lcom/winca/music/MusicActivity;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private saveMusicLib()V
    .locals 2

    .prologue
    .line 765
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 766
    .local v0, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;->storyMusicLib(I)V

    .line 768
    return-void
.end method

.method private savePlayState()V
    .locals 4

    .prologue
    .line 782
    const-string v1, "MusicMainPage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get Sage State:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 785
    .local v0, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPlayState(I)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPlayState(I)V

    goto :goto_0
.end method

.method private setCurVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 657
    iput p1, p0, Lcom/winca/music/Pages/MusicMainPage;->curVolmue:I

    .line 659
    return-void
.end method

.method private setDefMusicLib()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    .line 794
    const v0, 0x7f0a0017

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    .line 795
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0}, Lcom/winca/music/player/MusicOperaUtil;->setReset(Landroid/content/Context;)V

    .line 796
    return-void
.end method

.method private setLayoutVisible(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 485
    const v0, 0x7f0a0017

    if-ne v0, p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    const v0, 0x7f0a0018

    if-ne v0, p1, :cond_3

    .line 493
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 505
    :cond_3
    const v0, 0x7f0a0019

    if-ne v0, p1, :cond_5

    .line 506
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    invoke-virtual {v0}, Lcom/winca/music/adapter/AlbumsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mAlbumsAdapter:Lcom/winca/music/adapter/AlbumsAdapter;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 521
    :cond_5
    const v0, 0x7f0a001a

    if-ne v0, p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    if-eqz v0, :cond_6

    .line 526
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    invoke-virtual {v0}, Lcom/winca/music/adapter/ArtistsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 530
    :cond_6
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mArtistsAdapter:Lcom/winca/music/adapter/ArtistsAdapter;

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->noContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->changeMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->songsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistsMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->hdImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->usbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->hdImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->playMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    return-void
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 221
    sget v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 222
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDataManager;->getSelectionPos()I

    move-result v0

    .line 223
    .local v0, index:I
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 225
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method private showDialogByState()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v0, v0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerDataManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->showSearchDialog()V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->hideSearchDialog()V

    goto :goto_0
.end method

.method private showSearchDialog()V
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/winca/music/Pages/MusicMainPage;->getScanDialog()Lcom/winca/Dialog/ScanDialog;

    move-result-object v0

    .line 754
    .local v0, dialog:Lcom/winca/Dialog/ScanDialog;
    invoke-virtual {v0}, Lcom/winca/Dialog/ScanDialog;->show()V

    .line 755
    return-void
.end method

.method private unRegesiterBrocast()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mMountReceiver:Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mBroadcastReceiver:Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method private updataAlbumSongs(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->getAlbumName(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, albumName:Ljava/lang/String;
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1, v0}, Lcom/winca/music/player/MusicPlayerDataManager;->updataAlbumSongsMap(Ljava/lang/String;)Z

    .line 260
    return-void
.end method

.method private updataArtistSongs(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->getArttistName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, artistName:Ljava/lang/String;
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1, v0}, Lcom/winca/music/player/MusicPlayerDataManager;->updataArtistSongList(Ljava/lang/String;)Z

    .line 281
    return-void
.end method

.method private updatePlayingListByListType(Ljava/lang/String;)V
    .locals 2
    .parameter "listType"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v0, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 272
    .local v0, data:Lcom/winca/music/player/MusicPlayerDataManager;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p1}, Lcom/winca/music/player/MusicPlayerDataManager;->updataPlayingMapByListType(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v1}, Lcom/winca/music/player/MusicOperaUtil;->BrocastUpdatePlayingSongAdaptor(Landroid/content/Context;)V

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method public OnDestrory()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "MusicMainPage"

    const-string v1, "MusicMainPage   OnDestrory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->unRegesiterBrocast()V

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/winca/music/player/MusicPlayerControler;->setIsPlayHistory(Z)V

    .line 111
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->OnDestrory()V

    .line 112
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->createLayout(I)V

    .line 101
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->init()V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->setIsFirstShow(Z)V

    .line 103
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->create()V

    .line 104
    return-void
.end method

.method public getScanDialog()Lcom/winca/Dialog/ScanDialog;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mScanDialog:Lcom/winca/Dialog/ScanDialog;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/winca/Dialog/ScanDialog;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 93
    const v2, 0x103006f

    invoke-direct {v0, v1, v2}, Lcom/winca/Dialog/ScanDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mScanDialog:Lcom/winca/Dialog/ScanDialog;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mScanDialog:Lcom/winca/Dialog/ScanDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 377
    :sswitch_0
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->getResetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v4}, Lcom/winca/music/Pages/AritstAlbumListPage;->SetListStyle(I)V

    .line 379
    const-string v0, "Audio"

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->updatePlayingListByListType(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->updaPlayerPlayList()V

    .line 381
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0, v4}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    goto :goto_0

    .line 389
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a001c

    if-ne v0, v1, :cond_2

    .line 390
    invoke-direct {p0, v4}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    .line 440
    :cond_1
    :goto_1
    const v0, 0x7f0a0018

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    .line 441
    iput-boolean v3, p0, Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a001d

    if-ne v0, v1, :cond_9

    .line 392
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v0, v0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v0, v0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerDataManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Lcom/winca/music/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    :goto_2
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    iput v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mLastUsbVolmue:I

    goto :goto_1

    .line 396
    :cond_3
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    .line 397
    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk1"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    iget v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mLastUsbVolmue:I

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto :goto_2

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk1"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 404
    invoke-direct {p0, v2}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto :goto_2

    .line 406
    :cond_5
    invoke-direct {p0, v3}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto :goto_2

    .line 408
    :cond_6
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 409
    invoke-direct {p0, v3}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto :goto_2

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v1, "/mnt/udisk1"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 411
    invoke-direct {p0, v2}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto/16 :goto_2

    .line 413
    :cond_8
    invoke-direct {p0, v3}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto/16 :goto_2

    .line 437
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a001e

    if-ne v0, v1, :cond_1

    .line 438
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeMusicLib(I)V

    goto/16 :goto_1

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a001c -> :sswitch_1
        0x7f0a001d -> :sswitch_1
        0x7f0a001e -> :sswitch_1
        0x7f0a0027 -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->listView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_1

    .line 290
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->SetListStyle(I)V

    .line 291
    const-string v0, "Audio"

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->updatePlayingListByListType(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->updaPlayerPlayList()V

    .line 294
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0, p3}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 297
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->albumGridView:Landroid/widget/GridView;

    if-ne p1, v0, :cond_2

    .line 300
    invoke-direct {p0, p3}, Lcom/winca/music/Pages/MusicMainPage;->updataAlbumSongs(I)V

    .line 301
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->SetListStyle(I)V

    .line 302
    const-string v0, "Album"

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->updatePlayingListByListType(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->artistGridView:Landroid/widget/GridView;

    if-ne p1, v0, :cond_0

    .line 307
    invoke-direct {p0, p3}, Lcom/winca/music/Pages/MusicMainPage;->updataArtistSongs(I)V

    .line 308
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->SetListStyle(I)V

    .line 309
    const-string v0, "Artist"

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->updatePlayingListByListType(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    goto :goto_0
.end method

.method public onKeyBack()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->returnHome()V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v0, v0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerDataManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 215
    const v0, 0x7f0a0017

    invoke-direct {p0, v0}, Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V

    .line 216
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->showDialogByState()V

    .line 218
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->setDefMusicLib()V

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->setSelection()V

    .line 234
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->onShow()V

    .line 235
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->onTouchDown(Landroid/view/View;)V

    .line 368
    :cond_0
    :goto_0
    return v2

    .line 362
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 363
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage;->onTouchUp(Landroid/view/View;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage;->onTouchMove()V

    goto :goto_0
.end method
