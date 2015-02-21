.class public Lcom/winca/Dialog/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field public final CHECK_PERIOD:I

.field public final MSG_CHECK:I

.field private ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/winca/Dialog/DialogListener;

.field private loadingState:Z


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 25
    const v0, 0x103006f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/winca/Dialog/LoadingDialog;->CHECK_PERIOD:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/Dialog/LoadingDialog;->MSG_CHECK:I

    .line 18
    iput-object v1, p0, Lcom/winca/Dialog/LoadingDialog;->ctx:Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    .line 20
    iput-object v1, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    .line 94
    new-instance v0, Lcom/winca/Dialog/LoadingDialog$1;

    invoke-direct {v0, p0}, Lcom/winca/Dialog/LoadingDialog$1;-><init>(Lcom/winca/Dialog/LoadingDialog;)V

    iput-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->handler:Landroid/os/Handler;

    .line 26
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/LoadingDialog;->setContentView(I)V

    .line 27
    iput-object p1, p0, Lcom/winca/Dialog/LoadingDialog;->ctx:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/winca/Dialog/LoadingDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/winca/Dialog/LoadingDialog;->hideDialog(Z)V

    return-void
.end method

.method private getLoadingState()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    return v0
.end method

.method private hideDialog(Z)V
    .locals 1
    .parameter "isInterrupted"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/winca/Dialog/LoadingDialog;->hide()V

    .line 71
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    invoke-interface {v0}, Lcom/winca/Dialog/DialogListener;->onHideDialog()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/LoadingDialog;->setLoadingState(Z)V

    .line 76
    return-void
.end method

.method private resendMsg(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    return-void
.end method

.method private setLoadState(Z)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    .line 80
    return-void
.end method

.method private showDialog()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/winca/Dialog/LoadingDialog;->show()V

    .line 56
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    invoke-interface {v0}, Lcom/winca/Dialog/DialogListener;->onShowDialog()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/winca/Dialog/LoadingDialog;->update()V

    .line 61
    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    return v0
.end method

.method public setDialogLisener(Lcom/winca/Dialog/DialogListener;)V
    .locals 0
    .parameter "ls"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/winca/Dialog/LoadingDialog;->listener:Lcom/winca/Dialog/DialogListener;

    .line 32
    return-void
.end method

.method public setLoadingState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    if-ne v0, p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/winca/Dialog/LoadingDialog;->setLoadState(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/winca/Dialog/LoadingDialog;->loadingState:Z

    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/winca/Dialog/LoadingDialog;->showDialog()V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/Dialog/LoadingDialog;->hideDialog(Z)V

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/winca/Dialog/LoadingDialog;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/Dialog/LoadingDialog;->resendMsg(I)V

    goto :goto_0
.end method
