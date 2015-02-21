.class Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayingListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/PlayingListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/PlayingListPage;


# direct methods
.method private constructor <init>(Lcom/winca/music/Pages/PlayingListPage;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/PlayingListPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/Pages/PlayingListPage;Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/PlayingListPage;)V

    return-void
.end method

.method private getUpdataAdapter()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/PlayingListPage;

    #getter for: Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;
    invoke-static {v0}, Lcom/winca/music/Pages/PlayingListPage;->access$1(Lcom/winca/music/Pages/PlayingListPage;)Lcom/winca/music/adapter/SongAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/PlayingListPage;

    #calls: Lcom/winca/music/Pages/PlayingListPage;->setSelection()V
    invoke-static {v0}, Lcom/winca/music/Pages/PlayingListPage;->access$2(Lcom/winca/music/Pages/PlayingListPage;)V

    .line 121
    iget-object v0, p0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/PlayingListPage;

    #getter for: Lcom/winca/music/Pages/PlayingListPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;
    invoke-static {v0}, Lcom/winca/music/Pages/PlayingListPage;->access$1(Lcom/winca/music/Pages/PlayingListPage;)Lcom/winca/music/adapter/SongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/music/adapter/SongAdapter;->notifyDataSetChanged()V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->getUpdataAdapter()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v1, "com.winca.service.scannerMedia.SCAN_TASK_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/PlayingListPage;

    #getter for: Lcom/winca/music/Pages/PlayingListPage;->mActivity:Lcom/winca/music/MusicActivity;
    invoke-static {v1}, Lcom/winca/music/Pages/PlayingListPage;->access$0(Lcom/winca/music/Pages/PlayingListPage;)Lcom/winca/music/MusicActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->updataPlayingMap()V

    .line 113
    invoke-direct {p0}, Lcom/winca/music/Pages/PlayingListPage$MyBroadcastReceiver;->getUpdataAdapter()V

    goto :goto_0
.end method
