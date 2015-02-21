.class Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;
.super Ljava/lang/Object;
.source "AudioConnectService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/AudioConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioConnectServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/service/scannerMedia/AudioConnectService;


# direct methods
.method constructor <init>(Lcom/winca/service/scannerMedia/AudioConnectService;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    .line 161
    const-string v1, "AudioConnect"

    const-string v2, "onServiceConnected------------->>> "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    invoke-static {p2}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/winca/service/scannerMedia/IScanMediaService;

    move-result-object v2

    #setter for: Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;
    invoke-static {v1, v2}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$1(Lcom/winca/service/scannerMedia/AudioConnectService;Lcom/winca/service/scannerMedia/IScanMediaService;)V

    .line 163
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    #calls: Lcom/winca/service/scannerMedia/AudioConnectService;->getBind()Z
    invoke-static {v1}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$2(Lcom/winca/service/scannerMedia/AudioConnectService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    #getter for: Lcom/winca/service/scannerMedia/AudioConnectService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$3(Lcom/winca/service/scannerMedia/AudioConnectService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 166
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    #getter for: Lcom/winca/service/scannerMedia/AudioConnectService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$3(Lcom/winca/service/scannerMedia/AudioConnectService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    #calls: Lcom/winca/service/scannerMedia/AudioConnectService;->setBind(Z)V
    invoke-static {v1, v3}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$4(Lcom/winca/service/scannerMedia/AudioConnectService;Z)V

    .line 169
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 173
    const-string v0, "AudioConnect"

    const-string v1, "onServiceDisconnected------------->>> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
