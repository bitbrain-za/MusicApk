.class Lcom/winca/Dialog/ScanDialog$1;
.super Landroid/os/Handler;
.source "ScanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/Dialog/ScanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/Dialog/ScanDialog;


# direct methods
.method constructor <init>(Lcom/winca/Dialog/ScanDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/Dialog/ScanDialog$1;->this$0:Lcom/winca/Dialog/ScanDialog;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xb1ea

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/winca/Dialog/ScanDialog$1;->this$0:Lcom/winca/Dialog/ScanDialog;

    invoke-virtual {v0}, Lcom/winca/Dialog/ScanDialog;->cancel()V

    .line 46
    :cond_0
    return-void
.end method
