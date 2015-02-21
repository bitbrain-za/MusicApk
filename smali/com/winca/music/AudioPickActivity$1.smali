.class Lcom/winca/music/AudioPickActivity$1;
.super Ljava/lang/Object;
.source "AudioPickActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/AudioPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/AudioPickActivity;


# direct methods
.method constructor <init>(Lcom/winca/music/AudioPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #setter for: Lcom/winca/music/AudioPickActivity;->isTouch:Z
    invoke-static {v0, p3}, Lcom/winca/music/AudioPickActivity;->access$0(Lcom/winca/music/AudioPickActivity;Z)V

    .line 248
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/winca/music/AudioPickActivity;->access$1(Lcom/winca/music/AudioPickActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProgressBar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  fromUsr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/winca/music/AudioPickActivity;->access$1(Lcom/winca/music/AudioPickActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "On Start Touch:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    const/4 v1, 0x1

    #setter for: Lcom/winca/music/AudioPickActivity;->isTouch:Z
    invoke-static {v0, v1}, Lcom/winca/music/AudioPickActivity;->access$0(Lcom/winca/music/AudioPickActivity;Z)V

    .line 255
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .parameter "seekBar"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    const/4 v3, 0x0

    #setter for: Lcom/winca/music/AudioPickActivity;->isTouch:Z
    invoke-static {v2, v3}, Lcom/winca/music/AudioPickActivity;->access$0(Lcom/winca/music/AudioPickActivity;Z)V

    .line 260
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 261
    .local v1, process:I
    iget-object v2, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/winca/music/AudioPickActivity;->access$2(Lcom/winca/music/AudioPickActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 262
    iget-object v2, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v2}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/winca/music/player/MusicPickerPlayer;->getTotolTime()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v1

    const-wide/high16 v6, 0x4059

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit16 v0, v2, 0x3e8

    .line 263
    .local v0, pos:I
    iget-object v2, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v2}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/winca/music/player/MusicPickerPlayer;->seek(I)V

    .line 264
    iget-object v2, p0, Lcom/winca/music/AudioPickActivity$1;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/winca/music/AudioPickActivity;->access$1(Lcom/winca/music/AudioPickActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stop Touch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method
