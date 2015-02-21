.class public Lcom/winca/service/media/ServiceOperation;
.super Ljava/lang/Object;
.source "ServiceOperation.java"


# static fields
.field public static final MEDIA_SERVICE_CHANGE:Ljava/lang/String; = "MEDIA_SERVICE_CHANGE"

.field public static final MEDIA_SERVICE_CHANGE_STATUS:Ljava/lang/String; = "MEDIA_SERVICE_CHANGE_STATUS"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsBind:Ljava/lang/Boolean;

.field protected mIsBinding:Z

.field protected mService:Landroid/os/IInterface;

.field protected mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 22
    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mService:Landroid/os/IInterface;

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mIsBind:Ljava/lang/Boolean;

    .line 24
    iput-boolean v1, p0, Lcom/winca/service/media/ServiceOperation;->mIsBinding:Z

    .line 28
    iput-object p1, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public doBindService()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/winca/service/media/ServiceOperation;->isServiceRunning()Z

    move-result v0

    return v0
.end method

.method public doUnbindService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-boolean v0, p0, Lcom/winca/service/media/ServiceOperation;->mIsBinding:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/winca/service/media/ServiceOperation;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 41
    iput-object v2, p0, Lcom/winca/service/media/ServiceOperation;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 42
    iput-object v2, p0, Lcom/winca/service/media/ServiceOperation;->mService:Landroid/os/IInterface;

    .line 43
    iput-object v2, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    .line 45
    :cond_0
    return-void
.end method

.method public getService()Landroid/os/IInterface;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    const-string v1, "MediaService is Over"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mService:Landroid/os/IInterface;

    return-object v0
.end method

.method public isServiceRunning()Z
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 80
    .local v0, manager:Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 80
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 82
    .local v1, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/winca/service/media/ServiceOperation;->checkService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;I)V
    .locals 3
    .parameter "className"
    .parameter "service"
    .parameter "serviceId"

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MEDIA_SERVICE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, i:Landroid/content/Intent;
    const-string v1, "MEDIA_SERVICE_CHANGE_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/winca/service/media/ServiceOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/winca/service/media/ServiceOperation;->mIsBinding:Z

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mIsBind:Ljava/lang/Boolean;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/service/media/ServiceOperation;->mService:Landroid/os/IInterface;

    .line 61
    return-void
.end method
