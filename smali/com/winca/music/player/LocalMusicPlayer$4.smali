.class Lcom/winca/music/player/LocalMusicPlayer$4;
.super Landroid/os/Handler;
.source "LocalMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/LocalMusicPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$4;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    .line 314
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$4;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$4;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$8(Lcom/winca/music/player/LocalMusicPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$4;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mServiceInUse:Z
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$10(Lcom/winca/music/player/LocalMusicPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$4;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$1(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :cond_0
    return-void
.end method
