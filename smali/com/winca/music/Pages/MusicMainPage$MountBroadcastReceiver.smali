.class Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/MusicMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/MusicMainPage;


# direct methods
.method constructor <init>(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 668
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, action:Ljava/lang/String;
    const-string v4, "MusicMainPage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 671
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, mountPath:Ljava/lang/String;
    const-string v4, "MusicMainPage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mount: mountPath = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v1, :cond_1

    .line 675
    const-string v4, "/mnt/sdcard/sdcard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 676
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #getter for: Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$1(Lcom/winca/music/Pages/MusicMainPage;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 678
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v8}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 693
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v4, v4, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v4}, Lcom/winca/music/MusicActivity;->loadDialgUpdate()V

    .line 733
    .end local v1           #mountPath:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 679
    .restart local v1       #mountPath:Ljava/lang/String;
    :cond_2
    const-string v4, "/mnt/udisk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 680
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$3(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 681
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v8}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 682
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v4, v4, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v4, v7}, Lcom/winca/music/MusicActivity;->setUsbVolume(I)V

    goto :goto_0

    .line 683
    :cond_3
    const-string v4, "/mnt/udisk1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 684
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$3(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 685
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v8}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 686
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v4, v4, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/winca/music/MusicActivity;->setUsbVolume(I)V

    goto :goto_0

    .line 696
    .end local v1           #mountPath:Ljava/lang/String;
    :cond_4
    const-string v4, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 697
    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    :cond_5
    const/4 v2, -0x1

    .line 700
    .local v2, reVol:I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, unmountPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v4, v4, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    iput-boolean v7, v4, Lcom/winca/music/MusicActivity;->mbadRemove:Z

    .line 702
    const-string v4, "MusicMainPage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UnMount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v3, :cond_9

    .line 705
    const-string v4, "/mnt/sdcard/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 706
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #getter for: Lcom/winca/music/Pages/MusicMainPage;->sdImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$1(Lcom/winca/music/Pages/MusicMainPage;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 708
    const/4 v2, 0x0

    .line 709
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v7}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 712
    :cond_6
    const-string v4, "/mnt/udisk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 713
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$3(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 715
    const/4 v2, 0x1

    .line 716
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v7}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 718
    :cond_7
    const-string v4, "/mnt/udisk1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 719
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->checkUsbVolumeAndEndble()V
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$3(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 721
    const/4 v2, 0x3

    .line 722
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #setter for: Lcom/winca/music/Pages/MusicMainPage;->interruptJump:Z
    invoke-static {v4, v7}, Lcom/winca/music/Pages/MusicMainPage;->access$2(Lcom/winca/music/Pages/MusicMainPage;Z)V

    .line 725
    :cond_8
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->getCurVolume()I
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$4(Lcom/winca/music/Pages/MusicMainPage;)I

    move-result v4

    if-ne v2, v4, :cond_9

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 726
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->setDefMusicLib()V
    invoke-static {v4}, Lcom/winca/music/Pages/MusicMainPage;->access$5(Lcom/winca/music/Pages/MusicMainPage;)V

    .line 727
    iget-object v4, p0, Lcom/winca/music/Pages/MusicMainPage$MountBroadcastReceiver;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    iget-object v4, v4, Lcom/winca/music/Pages/MusicMainPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v5, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v4, v5}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 731
    :cond_9
    invoke-static {v8}, Lcom/winca/music/player/MusicPlayerControler;->setIsPlayHistory(Z)V

    goto/16 :goto_1
.end method
