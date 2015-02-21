.class Lcom/winca/music/player/LocalMusicPlayer$1;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/winca/music/player/LocalMusicPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 99
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    .line 109
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->setVolume(F)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    .line 113
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$1(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 115
    :cond_1
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    .line 116
    iget v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$1(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->setVolume(F)V

    goto :goto_0

    .line 119
    :cond_2
    iput v2, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->mCurrentVolume:F

    goto :goto_1

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mIsSupposedToBePlaying:Z
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$2(Lcom/winca/music/player/LocalMusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "LocalMusicPlayer"

    const-string v1, "next(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0, v3}, Lcom/winca/music/player/LocalMusicPlayer;->next(Z)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #calls: Lcom/winca/music/player/LocalMusicPlayer;->openCurrent()V
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$3(Lcom/winca/music/player/LocalMusicPlayer;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mRepeatMode:I
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$4(Lcom/winca/music/player/LocalMusicPlayer;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 138
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/winca/music/player/LocalMusicPlayer;->seek(J)J

    .line 139
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->play()V

    goto/16 :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    iget-object v1, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mRepeatAll:Z
    invoke-static {v1}, Lcom/winca/music/player/LocalMusicPlayer;->access$5(Lcom/winca/music/player/LocalMusicPlayer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->next(Z)V

    goto/16 :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$1;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$6(Lcom/winca/music/player/LocalMusicPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
