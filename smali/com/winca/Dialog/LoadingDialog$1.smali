.class Lcom/winca/Dialog/LoadingDialog$1;
.super Landroid/os/Handler;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/Dialog/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/Dialog/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/winca/Dialog/LoadingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/Dialog/LoadingDialog$1;->this$0:Lcom/winca/Dialog/LoadingDialog;

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    .line 100
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/winca/Dialog/LoadingDialog$1;->this$0:Lcom/winca/Dialog/LoadingDialog;

    const/4 v2, 0x0

    #calls: Lcom/winca/Dialog/LoadingDialog;->hideDialog(Z)V
    invoke-static {v1, v2}, Lcom/winca/Dialog/LoadingDialog;->access$0(Lcom/winca/Dialog/LoadingDialog;Z)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
