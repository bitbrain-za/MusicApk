.class public Lcom/winca/Dialog/ScanDialog;
.super Landroid/app/Dialog;
.source "ScanDialog.java"


# static fields
.field public static final TIME_OUT:I = 0xb1ea

.field public static searchInfo:Landroid/widget/TextView;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/winca/Dialog/ScanDialog;->searchInfo:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    new-instance v0, Lcom/winca/Dialog/ScanDialog$1;

    invoke-direct {v0, p0}, Lcom/winca/Dialog/ScanDialog$1;-><init>(Lcom/winca/Dialog/ScanDialog;)V

    iput-object v0, p0, Lcom/winca/Dialog/ScanDialog;->mHandler:Landroid/os/Handler;

    .line 22
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->setContentView(I)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/winca/Dialog/ScanDialog;->searchInfo:Landroid/widget/TextView;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 37
    return-void
.end method

.method public showSearchinfo(I)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 52
    :pswitch_0
    const-string v0, "Searching SdCard....."

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->showSearchinfo(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "Searching UDisk......"

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->showSearchinfo(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "Searching Hardisk...."

    invoke-virtual {p0, v0}, Lcom/winca/Dialog/ScanDialog;->showSearchinfo(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showSearchinfo(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 64
    sget-object v0, Lcom/winca/Dialog/ScanDialog;->searchInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/winca/Dialog/ScanDialog;->searchInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method
