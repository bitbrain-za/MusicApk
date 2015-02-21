.class public Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayMusicPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/PlayMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyProgressBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/PlayMusicPage;


# direct methods
.method public constructor <init>(Lcom/winca/music/Pages/PlayMusicPage;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 235
    :try_start_0
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    const-string v6, "total"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I
    invoke-static {v5, v6}, Lcom/winca/music/Pages/PlayMusicPage;->access$4(Lcom/winca/music/Pages/PlayMusicPage;I)V

    .line 236
    const-string v5, "position"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, position:I
    mul-int/lit8 v5, v2, 0x64

    iget-object v6, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I
    invoke-static {v6}, Lcom/winca/music/Pages/PlayMusicPage;->access$0(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v6

    div-int v3, v5, v6

    .line 238
    .local v3, progress:I
    const-string v5, "isPause"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 239
    .local v1, isPlay:Z
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #calls: Lcom/winca/music/Pages/PlayMusicPage;->cdTrackAnimination(Z)V
    invoke-static {v5, v1}, Lcom/winca/music/Pages/PlayMusicPage;->access$5(Lcom/winca/music/Pages/PlayMusicPage;Z)V

    .line 240
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->isSeekBarTouching:Z
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$6(Lcom/winca/music/Pages/PlayMusicPage;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 242
    if-eq v2, v8, :cond_0

    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$0(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 243
    :cond_0
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$7(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "0:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_1
    new-instance v4, Lcom/winca/music/preference/MusicSharePreference;

    .line 247
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    iget-object v5, v5, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 246
    invoke-direct {v4, v5}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 249
    .local v4, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {v4, v3}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastPosition(I)V

    .line 250
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$1(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;

    move-result-object v5

    .line 251
    div-int/lit16 v6, v2, 0x3e8

    int-to-long v6, v6

    .line 250
    invoke-static {p1, v6, v7}, Lcom/winca/music/util/MusicUtil;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$7(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;

    move-result-object v5

    .line 253
    iget-object v6, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->miTotoalTime:I
    invoke-static {v6}, Lcom/winca/music/Pages/PlayMusicPage;->access$0(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    .line 252
    invoke-static {p1, v6, v7}, Lcom/winca/music/util/MusicUtil;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$3(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 255
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mPlaySeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$3(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->invalidate()V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1           #isPlay:Z
    .end local v2           #position:I
    .end local v3           #progress:I
    .end local v4           #sp:Lcom/winca/music/preference/MusicSharePreference;
    :cond_2
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/ArithmeticException;
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MyProgressBroadCastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->mTotalTime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$7(Lcom/winca/music/Pages/PlayMusicPage;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "0:00"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
