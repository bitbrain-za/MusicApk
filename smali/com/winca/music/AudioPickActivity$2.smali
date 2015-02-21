.class Lcom/winca/music/AudioPickActivity$2;
.super Landroid/os/Handler;
.source "AudioPickActivity.java"


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
    iput-object p1, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    .line 268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 271
    iget v5, p1, Landroid/os/Message;->what:I

    .line 272
    .local v5, what:I
    packed-switch v5, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winca/music/player/MusicPickerPlayer;->getCurPos()I

    move-result v1

    .line 275
    .local v1, icurTime:I
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winca/music/player/MusicPickerPlayer;->getTotolTime()I

    move-result v2

    .line 276
    .local v2, itotalTime:I
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winca/music/player/MusicPickerPlayer;->getCurPosStr()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, curTime:Ljava/lang/String;
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/winca/music/player/MusicPickerPlayer;->getTotalTimeStr()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, totalTime:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 279
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->curTimeTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$4(Lcom/winca/music/AudioPickActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->totalTimeTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$5(Lcom/winca/music/AudioPickActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->isTouch:Z
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$6(Lcom/winca/music/AudioPickActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 282
    mul-int/lit8 v6, v1, 0x64

    div-int v3, v6, v2

    .line 283
    .local v3, progress:I
    iget-object v6, p0, Lcom/winca/music/AudioPickActivity$2;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v6}, Lcom/winca/music/AudioPickActivity;->access$2(Lcom/winca/music/AudioPickActivity;)Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
