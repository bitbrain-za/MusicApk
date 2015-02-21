.class Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayMusicPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/PlayMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicViewBrocastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/PlayMusicPage;


# direct methods
.method private constructor <init>(Lcom/winca/music/Pages/PlayMusicPage;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/Pages/PlayMusicPage;Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;-><init>(Lcom/winca/music/Pages/PlayMusicPage;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 379
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.winca.MusicPlay.BROCAST_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 381
    const-string v5, "com.winca.MusicPlay.STATE_KEY"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 382
    .local v4, state:I
    const-string v5, "MusicActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PlayingView Get:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eq v4, v8, :cond_0

    .line 384
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #calls: Lcom/winca/music/Pages/PlayMusicPage;->ShowViewByState(I)V
    invoke-static {v5, v4}, Lcom/winca/music/Pages/PlayMusicPage;->access$8(Lcom/winca/music/Pages/PlayMusicPage;I)V

    .line 401
    .end local v4           #state:I
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v5, "com.winca.kkcmh.CURENT_PLAY_ID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 387
    const-string v5, "cur_ID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 388
    .local v2, pos:I
    if-eq v2, v8, :cond_0

    .line 389
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #calls: Lcom/winca/music/Pages/PlayMusicPage;->getNewPlay(I)V
    invoke-static {v5, v2}, Lcom/winca/music/Pages/PlayMusicPage;->access$9(Lcom/winca/music/Pages/PlayMusicPage;I)V

    goto :goto_0

    .line 391
    .end local v2           #pos:I
    :cond_2
    const-string v5, "com.winca.MusicPlay.BROCAST_PLAY_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 392
    const-string v5, "com.winca.MusicPlay.MODE_KEY"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, mode:I
    if-eq v1, v8, :cond_0

    .line 394
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #setter for: Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I
    invoke-static {v5, v1}, Lcom/winca/music/Pages/PlayMusicPage;->access$10(Lcom/winca/music/Pages/PlayMusicPage;I)V

    .line 395
    const-string v5, "PlayMusicView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reveive Music Repeat Mode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I
    invoke-static {v7}, Lcom/winca/music/Pages/PlayMusicPage;->access$11(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v3, Lcom/winca/music/preference/MusicSharePreference;

    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    iget-object v5, v5, Lcom/winca/music/Pages/PlayMusicPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-direct {v3, v5}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    .line 397
    .local v3, sp:Lcom/winca/music/preference/MusicSharePreference;
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    #getter for: Lcom/winca/music/Pages/PlayMusicPage;->curPlayMode:I
    invoke-static {v5}, Lcom/winca/music/Pages/PlayMusicPage;->access$11(Lcom/winca/music/Pages/PlayMusicPage;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/winca/music/preference/MusicSharePreference;->StoryPlayMode(I)V

    .line 398
    iget-object v5, p0, Lcom/winca/music/Pages/PlayMusicPage$MusicViewBrocastReceiver;->this$0:Lcom/winca/music/Pages/PlayMusicPage;

    invoke-virtual {v5}, Lcom/winca/music/Pages/PlayMusicPage;->ShowCurPlayMode()V

    goto :goto_0
.end method
