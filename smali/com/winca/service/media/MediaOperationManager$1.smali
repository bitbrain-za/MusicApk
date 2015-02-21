.class Lcom/winca/service/media/MediaOperationManager$1;
.super Lcom/winca/service/media/OnSourceChangeListener$Stub;
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
    iput-object p1, p0, Lcom/winca/service/media/MediaOperationManager$1;->this$0:Lcom/winca/service/media/MediaOperationManager;

    .line 186
    invoke-direct {p0}, Lcom/winca/service/media/OnSourceChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSourceChange(I)V
    .locals 4
    .parameter "sourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    .line 190
    iget-object v1, p0, Lcom/winca/service/media/MediaOperationManager$1;->this$0:Lcom/winca/service/media/MediaOperationManager;

    #getter for: Lcom/winca/service/media/MediaOperationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/service/media/MediaOperationManager;->access$0(Lcom/winca/service/media/MediaOperationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    iget-object v1, p0, Lcom/winca/service/media/MediaOperationManager$1;->this$0:Lcom/winca/service/media/MediaOperationManager;

    #getter for: Lcom/winca/service/media/MediaOperationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/service/media/MediaOperationManager;->access$0(Lcom/winca/service/media/MediaOperationManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/winca/service/media/MediaOperationManager$1;->this$0:Lcom/winca/service/media/MediaOperationManager;

    #getter for: Lcom/winca/service/media/MediaOperationManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/service/media/MediaOperationManager;->access$0(Lcom/winca/service/media/MediaOperationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method
