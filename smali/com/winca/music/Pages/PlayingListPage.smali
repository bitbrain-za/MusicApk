.class public Lcom/winca/music/Pages/PlayingListPage;
.super Lcom/winca/music/Pages/Page;
.source "PlayingListPage.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/winca/music/Pages/Page;",
        "Lcom/winca/music/player/MusicPlayerDef;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mActivity:Lcom/winca/music/MusicActivity;

.field private mBroadcaseReceiver:Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;

.field private mPlayList:Landroid/widget/ListView;

.field private mPlaying:Landroid/widget/ImageButton;

.field private mSongAdapter:Lcom/winca/music/adapter/SongAdapter;


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/Page;-><init>(Lcom/winca/music/MusicActivity;)V

    .line 25
    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 27
    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    .line 28
    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlayList:Landroid/widget/ListView;

    .line 29
    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlaying:Landroid/widget/ImageButton;

    .line 31
    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->filter:Landroid/content/IntentFilter;

    .line 70
    iput-object p1, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/winca/music/Pages/PlayingListPage;)Lcom/winca/music/MusicActivity;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/music/Pages/PlayingListPage;)Lcom/winca/music/adapter/SongAdapter;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/winca/music/Pages/PlayingListPage;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->setSelection()V

    return-void
.end method

.method private initAdapter()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 59
    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->getPlayingSongMap()Ljava/util/Map;

    move-result-object v0

    .line 61
    .local v0, playing:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v1, Lcom/winca/music/adapter/SongAdapter;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 62
    const v3, 0x7f03000b

    invoke-direct {v1, v2, v0, v3}, Lcom/winca/music/adapter/SongAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 61
    iput-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    .line 64
    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlayList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method private initBrocastReceiver()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/PlayingListPage;Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;)V

    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mBroadcaseReceiver:Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->filter:Landroid/content/IntentFilter;

    .line 40
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.winca.service.scannerMedia.SCAN_TASK_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mBroadcaseReceiver:Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;

    iget-object v2, p0, Lcom/winca/music/Pages/PlayingListPage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method private initWidgets()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayingListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlayList:Landroid/widget/ListView;

    .line 48
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayingListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlaying:Landroid/widget/ImageButton;

    .line 49
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlayList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 92
    sget v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 93
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDataManager;->getSelectionPos()I

    move-result v0

    .line 94
    .local v0, index:I
    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlayList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 96
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method private unRegisterBrocast()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage;->mBroadcaseReceiver:Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    return-void
.end method


# virtual methods
.method public OnDestrory()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->unRegisterBrocast()V

    .line 88
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->OnDestrory()V

    .line 89
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayingListPage;->createLayout(I)V

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/PlayingListPage;->setVisibility(I)V

    .line 78
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->initWidgets()V

    .line 79
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->initAdapter()V

    .line 80
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->setListener()V

    .line 81
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->initBrocastReceiver()V

    .line 82
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->create()V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mPlaying:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
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
    .line 130
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0, p3}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 131
    return-void
.end method

.method public onKeyBack()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 144
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage;->setSelection()V

    .line 101
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->onShow()V

    .line 102
    return-void
.end method
