.class Lcom/winca/service/media/MediaOperationManager$2;
.super Landroid/os/Handler;
.source "MediaOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/media/MediaOperationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/service/media/MediaOperationManager;


# direct methods
.method constructor <init>(Lcom/winca/service/media/MediaOperationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/service/media/MediaOperationManager$2;->this$0:Lcom/winca/service/media/MediaOperationManager;

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 199
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 200
    const-string v0, "SERVICE_MEDIA_MCU"

    const-string v1, "Callback,stop music"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager$2;->this$0:Lcom/winca/service/media/MediaOperationManager;

    #getter for: Lcom/winca/service/media/MediaOperationManager;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v0}, Lcom/winca/service/media/MediaOperationManager;->access$1(Lcom/winca/service/media/MediaOperationManager;)Lcom/winca/music/service/MusicService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/winca/music/service/MusicService;->stopPlayMusic()V

    .line 204
    :cond_0
    return-void
.end method
