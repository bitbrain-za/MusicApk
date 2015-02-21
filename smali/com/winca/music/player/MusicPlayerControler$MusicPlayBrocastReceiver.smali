.class Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicPlayBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/MusicPlayerControler;


# direct methods
.method private constructor <init>(Lcom/winca/music/player/MusicPlayerControler;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, action:Ljava/lang/String;
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MusicPlayBrocastReceiver Get Action:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v5, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 401
    const-string v5, "com.winca.MusicPlay.COMMAND_KEY"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, Operation:Ljava/lang/String;
    const-string v5, "MusicBrocast"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Mucic Command :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v0, :cond_0

    .line 405
    const-string v5, "winca.music.paly"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 406
    const-string v5, "Id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 407
    .local v2, id:I
    if-eq v2, v8, :cond_0

    .line 408
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5, v2}, Lcom/winca/music/player/MusicPlayerControler;->Play(I)V

    .line 440
    .end local v0           #Operation:Ljava/lang/String;
    .end local v2           #id:I
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0       #Operation:Ljava/lang/String;
    :cond_1
    const-string v5, "winca.music.pause"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 412
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Pause()Z

    goto :goto_0

    .line 413
    :cond_2
    const-string v5, "winca.music.Next"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 414
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Next()V

    goto :goto_0

    .line 415
    :cond_3
    const-string v5, "winca.music.Pre"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 416
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Pre()V

    goto :goto_0

    .line 417
    :cond_4
    const-string v5, "winca.music.stop"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 418
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Stop()V

    goto :goto_0

    .line 419
    :cond_5
    const-string v5, "winca.music.reset"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 420
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->ResetPlayer()V

    goto :goto_0

    .line 424
    .end local v0           #Operation:Ljava/lang/String;
    :cond_6
    const-string v5, "com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 426
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$5(Lcom/winca/music/player/MusicPlayerControler;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    #setter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v5, v6}, Lcom/winca/music/player/MusicPlayerControler;->access$6(Lcom/winca/music/player/MusicPlayerControler;I)V

    .line 427
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$5(Lcom/winca/music/player/MusicPlayerControler;)I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_7

    .line 428
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    const/4 v6, 0x0

    #setter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v5, v6}, Lcom/winca/music/player/MusicPlayerControler;->access$6(Lcom/winca/music/player/MusicPlayerControler;I)V

    .line 430
    :cond_7
    new-instance v4, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$4(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/service/MusicService;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 431
    .local v4, sp:Lcom/winca/music/preference/MusicSharePreference;
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$5(Lcom/winca/music/player/MusicPlayerControler;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/winca/music/preference/MusicSharePreference;->StoryPlayMode(I)V

    .line 432
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    iget-object v6, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->CurPlayMode:I
    invoke-static {v6}, Lcom/winca/music/player/MusicPlayerControler;->access$5(Lcom/winca/music/player/MusicPlayerControler;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/winca/music/player/MusicPlayerControler;->setPlayMode(I)V

    goto/16 :goto_0

    .line 433
    .end local v4           #sp:Lcom/winca/music/preference/MusicSharePreference;
    :cond_8
    const-string v5, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 434
    const-string v5, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 435
    .local v3, mode:I
    if-eq v3, v8, :cond_0

    .line 436
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MusicPlayBrocastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #calls: Lcom/winca/music/player/MusicPlayerControler;->getNewMode(I)V
    invoke-static {v5, v3}, Lcom/winca/music/player/MusicPlayerControler;->access$7(Lcom/winca/music/player/MusicPlayerControler;I)V

    goto/16 :goto_0
.end method
