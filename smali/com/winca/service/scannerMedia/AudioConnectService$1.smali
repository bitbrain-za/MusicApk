.class Lcom/winca/service/scannerMedia/AudioConnectService$1;
.super Landroid/os/Handler;
.source "AudioConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/AudioConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/service/scannerMedia/AudioConnectService;


# direct methods
.method constructor <init>(Lcom/winca/service/scannerMedia/AudioConnectService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$1;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    .line 178
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 184
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 186
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.music.REMOTE_SERVER_CONNECT_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService$1;->this$0:Lcom/winca/service/scannerMedia/AudioConnectService;

    #getter for: Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;
    invoke-static {v1}, Lcom/winca/service/scannerMedia/AudioConnectService;->access$0(Lcom/winca/service/scannerMedia/AudioConnectService;)Lcom/winca/music/MusicActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
