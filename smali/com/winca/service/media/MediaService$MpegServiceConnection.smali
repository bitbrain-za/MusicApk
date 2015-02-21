.class Lcom/winca/service/media/MediaService$MpegServiceConnection;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/media/MediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MpegServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/service/media/MediaService;


# direct methods
.method private constructor <init>(Lcom/winca/service/media/MediaService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/service/media/MediaService;Lcom/winca/service/media/MediaService$MpegServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/winca/service/media/MediaService$MpegServiceConnection;-><init>(Lcom/winca/service/media/MediaService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 64
    invoke-static {}, Lcom/winca/service/media/MediaService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMpegServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    invoke-static {p2}, Lcom/winca/service/media/IMediaInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/winca/service/media/IMediaInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/winca/service/media/MediaService;->mService:Landroid/os/IInterface;

    .line 66
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/winca/service/media/MediaService;->mIsBind:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    iget-object v0, v0, Lcom/winca/service/media/MediaService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->setMpegServiceInterface()V

    .line 68
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    const/16 v1, 0xde

    invoke-virtual {v0, p1, p2, v1}, Lcom/winca/service/media/MediaService;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;I)V

    .line 69
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    iget-object v0, v0, Lcom/winca/service/media/MediaService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "MEDIA_SERVICE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 74
    invoke-static {}, Lcom/winca/service/media/MediaService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMpegServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/winca/service/media/MediaService$MpegServiceConnection;->this$0:Lcom/winca/service/media/MediaService;

    invoke-virtual {v0, p1}, Lcom/winca/service/media/MediaService;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 76
    return-void
.end method
