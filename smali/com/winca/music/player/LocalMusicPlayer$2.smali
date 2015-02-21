.class Lcom/winca/music/player/LocalMusicPlayer$2;
.super Ljava/lang/Object;
.source "LocalMusicPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    const/4 v2, 0x0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 181
    :pswitch_0
    const-string v0, "LocalMusicPlayer"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_1
    const-string v0, "LocalMusicPlayer"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #setter for: Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/winca/music/player/LocalMusicPlayer;->access$7(Lcom/winca/music/player/LocalMusicPlayer;Z)V

    .line 162
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->pause()V

    goto :goto_0

    .line 167
    :pswitch_2
    const-string v0, "LocalMusicPlayer"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/winca/music/player/LocalMusicPlayer;->access$7(Lcom/winca/music/player/LocalMusicPlayer;Z)V

    .line 170
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->pause()V

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, "LocalMusicPlayer"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$8(Lcom/winca/music/player/LocalMusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #setter for: Lcom/winca/music/player/LocalMusicPlayer;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v2}, Lcom/winca/music/player/LocalMusicPlayer;->access$7(Lcom/winca/music/player/LocalMusicPlayer;Z)V

    .line 177
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$2;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #calls: Lcom/winca/music/player/LocalMusicPlayer;->startAndFadeIn()V
    invoke-static {v0}, Lcom/winca/music/player/LocalMusicPlayer;->access$9(Lcom/winca/music/player/LocalMusicPlayer;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
