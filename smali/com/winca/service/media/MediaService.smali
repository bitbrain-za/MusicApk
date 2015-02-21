.class public Lcom/winca/service/media/MediaService;
.super Lcom/winca/service/media/ServiceOperation;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/service/media/MediaService$MpegServiceConnection;
    }
.end annotation


# static fields
.field public static final MEDIA_SERVICE_CHANGE:Ljava/lang/String; = "MEDIA_SERVICE_CHANGE"

.field public static final MEDIA_SERVICE_CHANGE_STATUS:Ljava/lang/String; = "MEDIA_SERVICE_CHANGE_STATUS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/winca/service/media/MediaService;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/winca/service/media/MediaOperationManager;)V
    .locals 2
    .parameter "activity"
    .parameter "operatiomManger"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/winca/service/media/ServiceOperation;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v1, p0, Lcom/winca/service/media/MediaService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    .line 31
    new-instance v0, Lcom/winca/service/media/MediaService$MpegServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/winca/service/media/MediaService$MpegServiceConnection;-><init>(Lcom/winca/service/media/MediaService;Lcom/winca/service/media/MediaService$MpegServiceConnection;)V

    iput-object v0, p0, Lcom/winca/service/media/MediaService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 32
    iput-object p2, p0, Lcom/winca/service/media/MediaService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    .line 33
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/winca/service/media/MediaService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 55
    const-string v0, "com.winca.service.media.MediaService"

    .line 56
    .local v0, serviceName:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public doBindService()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-super {p0}, Lcom/winca/service/media/ServiceOperation;->doBindService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/winca/service/media/MediaService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/winca/service/media/IMediaInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/winca/service/media/MediaService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 41
    .local v0, bind:Z
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/winca/service/media/MediaService;->mIsBinding:Z

    .line 49
    .end local v0           #bind:Z
    :cond_0
    return v0
.end method
