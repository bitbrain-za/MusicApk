.class Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/MusicPlayerControler;


# direct methods
.method private constructor <init>(Lcom/winca/music/player/MusicPlayerControler;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 323
    const-string v5, "CHANNEL_NOTIFICATION"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, cmd:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, action:Ljava/lang/String;
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MyBroadcastReceiver: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v5, "com.winca.service.audiochannel.audio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    const-string v5, "CHANNEL_DESELECTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 328
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #setter for: Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z
    invoke-static {v5, v8}, Lcom/winca/music/player/MusicPlayerControler;->access$1(Lcom/winca/music/player/MusicPlayerControler;Z)V

    .line 329
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->leaveAudio()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v5, "CHANNEL_SELECTED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 331
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #calls: Lcom/winca/music/player/MusicPlayerControler;->EnterAudio()V
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$2(Lcom/winca/music/player/MusicPlayerControler;)V

    .line 332
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    const/4 v6, 0x1

    #setter for: Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z
    invoke-static {v5, v6}, Lcom/winca/music/player/MusicPlayerControler;->access$1(Lcom/winca/music/player/MusicPlayerControler;Z)V

    goto :goto_0

    .line 334
    :cond_2
    const-string v5, "com.winca.video.VIDEO_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 335
    const-string v5, "com.winca.filemanager.VIDEO_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 337
    :cond_3
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$3(Lcom/winca/music/player/MusicPlayerControler;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    const-string v5, "isStartVideo"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 341
    .local v4, state:Z
    if-eqz v4, :cond_4

    .line 343
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->leaveAudio()V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #calls: Lcom/winca/music/player/MusicPlayerControler;->EnterAudio()V
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$2(Lcom/winca/music/player/MusicPlayerControler;)V

    goto :goto_0

    .line 348
    .end local v4           #state:Z
    :cond_5
    const-string v5, "CHANNEL_NOTIFICATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 349
    const-string v5, "CHANNEL_SELECTED"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 350
    .local v2, curChannelId:I
    const/16 v5, 0x8

    if-eq v2, v5, :cond_0

    const/16 v5, 0xe

    if-eq v2, v5, :cond_0

    .line 351
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->leaveAudio()V

    goto :goto_0

    .line 354
    .end local v2           #curChannelId:I
    :cond_6
    const-string v5, "com.winca.music_EXIT_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    const-string v5, "MusicPlayer"

    const-string v6, "stopService------------>>> "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$4(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/service/MusicService;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.winca.music.MUSICSERVICE_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/winca/music/service/MusicService;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 357
    :cond_7
    const-string v5, "com.winca.filemanager.MUSIC_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 359
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->isSoundSourceSelected:Z
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$3(Lcom/winca/music/player/MusicPlayerControler;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const-string v5, "isStartMusic"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 363
    .restart local v4       #state:Z
    if-eqz v4, :cond_8

    .line 364
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->leaveAudio()V

    goto/16 :goto_0

    .line 366
    :cond_8
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #calls: Lcom/winca/music/player/MusicPlayerControler;->EnterAudio()V
    invoke-static {v5}, Lcom/winca/music/player/MusicPlayerControler;->access$2(Lcom/winca/music/player/MusicPlayerControler;)V

    goto/16 :goto_0

    .line 368
    .end local v4           #state:Z
    :cond_9
    const-string v5, "com.winca.service.audioplayer.action.AUDIO_PLAYER_ONNEWINTENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    const-string v5, "com.winca.service.audioplayer.action.KEY_TYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    const/4 v3, 0x4

    .line 375
    .local v3, keyType:I
    const-string v5, "com.winca.service.audioplayer.KEY_TYPE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 378
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    .line 379
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Next()V

    goto/16 :goto_0

    .line 380
    :cond_a
    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    .line 381
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Pre()V

    goto/16 :goto_0

    .line 382
    :cond_b
    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 383
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 384
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Pause()Z

    goto/16 :goto_0

    .line 386
    :cond_c
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerControler$MyBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v5}, Lcom/winca/music/player/MusicPlayerControler;->Play()V

    goto/16 :goto_0
.end method
