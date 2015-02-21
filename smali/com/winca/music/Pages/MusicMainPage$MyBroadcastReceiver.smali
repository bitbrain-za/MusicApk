.class Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/MusicMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/MusicMainPage;


# direct methods
.method private constructor <init>(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/Pages/MusicMainPage;Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/MusicMainPage;)V

    return-void
.end method

.method private getActionShutDown()V
    .locals 2

    .prologue
    .line 883
    const-string v0, "MusicMainPage"

    const-string v1, "Get Action Shutdonw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->savePlayState()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$14(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 885
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->saveMusicLib()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$15(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 886
    return-void
.end method

.method private getConnectService()V
    .locals 2

    .prologue
    .line 823
    const-string v0, "MusicMainPage"

    const-string v1, "Get ConnectService!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->isSdcardExist()Z
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$8(Lcom/winca/music/Pages/MusicMainPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #getter for: Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$1(Lcom/winca/music/Pages/MusicMainPage;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$3(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 831
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->showDialogByState()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$9(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 832
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v0, v0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->checkAndShowLoadingDialog()V

    .line 834
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->PlayHistory()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$10(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 839
    :cond_1
    return-void
.end method

.method private getMenuSearch()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    const/4 v1, 0x0

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v0, v1}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 854
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v0, v0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 855
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    const v1, 0x7f0a0017

    #calls: Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V
    invoke-static {v0, v1}, Lcom/winca/music/Pages/MusicMainPage;->access$11(Lcom/winca/music/Pages/MusicMainPage;I)V

    .line 856
    return-void
.end method

.method private getPlayingId(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 808
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 809
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v3, v3, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v3, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 810
    .local v1, data:Lcom/winca/music/player/MusicPlayerDataManager;
    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->getPlayerMap()Ljava/util/Map;

    move-result-object v2

    .line 811
    .local v2, playing:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/music/mediautil/AudioEntity;

    .line 812
    .local v0, audio:Lcom/winca/music/mediautil/AudioEntity;
    if-eqz v0, :cond_0

    .line 813
    sput-object v0, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    .line 814
    sput p1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    .line 815
    const-string v3, "MusicMainPage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "New Song Info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 816
    const-string v5, " Title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 815
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v3, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v3, v3, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v3}, Lcom/winca/music/player/MusicOperaUtil;->BrocastUpdateAdaptor(Landroid/content/Context;)V

    .line 820
    .end local v0           #audio:Lcom/winca/music/mediautil/AudioEntity;
    .end local v1           #data:Lcom/winca/music/player/MusicPlayerDataManager;
    .end local v2           #playing:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getScanAudoType(Z)V
    .locals 1
    .parameter "bstate"

    .prologue
    .line 875
    if-eqz p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->showSearchDialog()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$12(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->hideSearchDialog()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$13(Lcom/winca/music/Pages/MusicMainPage;)V

    goto :goto_0
.end method

.method private getScanFinished()V
    .locals 2

    .prologue
    .line 859
    const-string v0, "MusicMainPage"

    const-string v1, "Get Scann Finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->showDialogByState()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$9(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 863
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v0, v0, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->isActivityPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->PlayHistory()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$10(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 867
    :cond_0
    return-void
.end method

.method private getScanStart(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 842
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v1, v1, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v2, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1, v2}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 844
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    const v2, 0x7f0a0017

    #calls: Lcom/winca/music/Pages/MusicMainPage;->changeTab(I)V
    invoke-static {v1, v2}, Lcom/winca/music/Pages/MusicMainPage;->access$11(Lcom/winca/music/Pages/MusicMainPage;I)V

    .line 845
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    invoke-virtual {v1}, Lcom/winca/music/Pages/MusicMainPage;->getScanDialog()Lcom/winca/Dialog/ScanDialog;

    move-result-object v0

    .line 846
    .local v0, dialog:Lcom/winca/Dialog/ScanDialog;
    invoke-virtual {v0, p1}, Lcom/winca/Dialog/ScanDialog;->showSearchinfo(I)V

    .line 847
    invoke-virtual {v0}, Lcom/winca/Dialog/ScanDialog;->show()V

    .line 850
    .end local v0           #dialog:Lcom/winca/Dialog/ScanDialog;
    :cond_0
    return-void
.end method

.method private getUpdataAdapter()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #getter for: Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$6(Lcom/winca/music/Pages/MusicMainPage;)Lcom/winca/music/adapter/SongAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #getter for: Lcom/winca/music/Pages/MusicMainPage;->mSongAdapter:Lcom/winca/music/adapter/SongAdapter;
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$6(Lcom/winca/music/Pages/MusicMainPage;)Lcom/winca/music/adapter/SongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/music/adapter/SongAdapter;->notifyDataSetChanged()V

    .line 803
    iget-object v0, p0, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->setSelection()V
    invoke-static {v0}, Lcom/winca/music/Pages/MusicMainPage;->access$7(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 805
    :cond_0
    return-void
.end method

.method private getVolumeDataChanged(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 870
    const-string v0, "MusicMainPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get Volume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Data Changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 890
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, action:Ljava/lang/String;
    const-string v5, "MusicMainPage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v5, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 893
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getUpdataAdapter()V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    const-string v5, "com.winca.kkcmh.CURENT_PLAY_ID"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 895
    const-string v5, "cur_ID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 896
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getPlayingId(I)V

    goto :goto_0

    .line 897
    .end local v1           #id:I
    :cond_2
    const-string v5, "com.winca.music.REMOTE_SERVER_CONNECT_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 898
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getConnectService()V

    goto :goto_0

    .line 899
    :cond_3
    const-string v5, "com.winca.music.ACTION_SYSTEM_EXIT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 900
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 901
    :cond_4
    const-string v5, "com.winca.service.scannerMedia.SCAN_START"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 902
    const-string v5, "com.winca.scanner.volume_key"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 903
    .local v4, volume:I
    invoke-direct {p0, v4}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getScanStart(I)V

    goto :goto_0

    .line 904
    .end local v4           #volume:I
    :cond_5
    const-string v5, "com.winca.service.scannerMedia.SCAN_TASK_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 905
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getScanFinished()V

    goto :goto_0

    .line 906
    :cond_6
    const-string v5, "com.winca.kkcmh.VOLUME_DATA_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 907
    const-string v5, "com.winca.scanner.volume_key"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 908
    .restart local v4       #volume:I
    if-eq v4, v8, :cond_0

    .line 909
    invoke-direct {p0, v4}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getVolumeDataChanged(I)V

    goto :goto_0

    .line 911
    .end local v4           #volume:I
    :cond_7
    const-string v5, "com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 913
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getMenuSearch()V

    goto :goto_0

    .line 914
    :cond_8
    const-string v5, "com.winca.service.scannerMedia.SCAN_TYPE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 915
    const-string v5, "SCAN_TYPE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 917
    .local v3, type:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 919
    const-string v5, "SCAN_TYPE_STATE"

    .line 918
    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 920
    .local v2, state:Z
    const-string v5, "MusicMainPage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BUNDLE_KEY_SCAN_TYPE: type = SEARCH_AUDIO , state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-direct {p0, v2}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getScanAudoType(Z)V

    goto/16 :goto_0

    .line 923
    .end local v2           #state:Z
    .end local v3           #type:I
    :cond_9
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/winca/music/Pages/MusicMainPage$MyBroadcastReceiver;->getActionShutDown()V

    goto/16 :goto_0
.end method
