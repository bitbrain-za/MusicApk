.class Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;
.super Ljava/lang/Object;
.source "LocalMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->this$0:Lcom/winca/music/player/LocalMusicPlayer;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$4(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Lcom/winca/music/player/LocalMusicPlayer;

    move-result-object v0

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$6(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1027
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1028
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1029
    return-void
.end method
