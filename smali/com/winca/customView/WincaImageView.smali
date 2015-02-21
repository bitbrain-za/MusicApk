.class public Lcom/winca/customView/WincaImageView;
.super Landroid/widget/ImageView;
.source "WincaImageView.java"


# instance fields
.field private final MSG_STARTANIM:I

.field private viewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/customView/WincaImageView;->MSG_STARTANIM:I

    .line 47
    new-instance v0, Lcom/winca/customView/WincaImageView$1;

    invoke-direct {v0, p0}, Lcom/winca/customView/WincaImageView$1;-><init>(Lcom/winca/customView/WincaImageView;)V

    iput-object v0, p0, Lcom/winca/customView/WincaImageView;->viewHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attri"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/customView/WincaImageView;->MSG_STARTANIM:I

    .line 47
    new-instance v0, Lcom/winca/customView/WincaImageView$1;

    invoke-direct {v0, p0}, Lcom/winca/customView/WincaImageView$1;-><init>(Lcom/winca/customView/WincaImageView;)V

    iput-object v0, p0, Lcom/winca/customView/WincaImageView;->viewHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/winca/customView/WincaImageView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public setVisibility(II)V
    .locals 4
    .parameter "visibility"
    .parameter "dealyMillion"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/winca/customView/WincaImageView;->viewHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    return-void
.end method
