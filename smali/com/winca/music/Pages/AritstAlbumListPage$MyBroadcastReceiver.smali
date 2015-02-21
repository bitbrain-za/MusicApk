.class Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AritstAlbumListPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/AritstAlbumListPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/AritstAlbumListPage;


# direct methods
.method private constructor <init>(Lcom/winca/music/Pages/AritstAlbumListPage;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/AritstAlbumListPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/Pages/AritstAlbumListPage;Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/AritstAlbumListPage;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/AritstAlbumListPage;

    #getter for: Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;
    invoke-static {v1}, Lcom/winca/music/Pages/AritstAlbumListPage;->access$0(Lcom/winca/music/Pages/AritstAlbumListPage;)Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->notifyDataSetChanged()V

    .line 209
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/AritstAlbumListPage;

    #calls: Lcom/winca/music/Pages/AritstAlbumListPage;->setSelection()V
    invoke-static {v1}, Lcom/winca/music/Pages/AritstAlbumListPage;->access$1(Lcom/winca/music/Pages/AritstAlbumListPage;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v1, "com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/AritstAlbumListPage;

    #getter for: Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;
    invoke-static {v1}, Lcom/winca/music/Pages/AritstAlbumListPage;->access$0(Lcom/winca/music/Pages/AritstAlbumListPage;)Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
