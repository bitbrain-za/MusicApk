.class Lcom/winca/music/Pages/PlayMusicPage$1;
.super Ljava/lang/Object;
.source "PlayMusicPage.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/PlayMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/PlayMusicPage;


# direct methods
.method constructor <init>(Lcom/winca/music/Pages/PlayMusicPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 191
    int-to-double v2, p2

    const-wide v4, 0x3f847ae147ae147bL

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 192
    .local v1, fProgress:F
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I
    invoke-static {v2}, Lcom/winca/music/Pages/PlayMusicPage;->access$0(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 194
    .local v0, curTime:I
    iget-object v2, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/winca/music/Pages/PlayMusicPage;->access$1(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    iget-object v3, v3, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 195
    div-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    .line 194
    invoke-static {v3, v4, v5}, Lcom/winca/music/util/MusicUtil;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    const/4 v1, 0x1

    #setter for: Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z
    invoke-static {v0, v1}, Lcom/winca/music/Pages/PlayMusicPage;->access$2(Lcom/winca/music/Pages/PlayMusicPage;Z)V

    .line 201
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 205
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/winca/music/Pages/PlayMusicPage;->access$3(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.music.seekBar"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "seekBarPosition"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    iget-object v1, v1, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v1, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    iget-object v1, v1, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v1}, Lcom/winca/music/player/MusicOperaUtil;->setPlayPause(Landroid/content/Context;)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/winca/music/Pages/PlayMusicPage$1;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    const/4 v2, 0x0

    #setter for: Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z
    invoke-static {v1, v2}, Lcom/winca/music/Pages/PlayMusicPage;->access$2(Lcom/winca/music/Pages/PlayMusicPage;Z)V

    .line 215
    return-void
.end method
