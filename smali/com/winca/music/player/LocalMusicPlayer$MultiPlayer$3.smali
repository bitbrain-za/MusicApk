.class Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;
.super Ljava/lang/Object;
.source "LocalMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1040
    const-string v2, "LocalMusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LocalPlayer Get An Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    packed-switch p2, :pswitch_data_0

    .line 1059
    const-string v0, "LocalMusicPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Music Error -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1066
    :goto_0
    return v0

    .line 1044
    :pswitch_0
    const-string v2, "LocalMusicPlayer"

    const-string v3, "kkcmh --> MEDIA_ERROR_SERVER_DIED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #setter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z
    invoke-static {v2, v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$1(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;Z)V

    .line 1046
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$2(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1052
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$3(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;Landroid/media/MediaPlayer;)V

    .line 1053
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$2(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->this$0:Lcom/winca/music/player/LocalMusicPlayer;
    invoke-static {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$4(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Lcom/winca/music/player/LocalMusicPlayer;

    move-result-object v2

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v2}, Lcom/winca/music/player/LocalMusicPlayer;->access$11(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1055
    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    .line 1056
    iget-object v2, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 1055
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1042
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
