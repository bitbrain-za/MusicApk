.class public Lcom/winca/customView/WincaTextView;
.super Landroid/widget/TextView;
.source "WincaTextView.java"


# instance fields
.field private final MSG_STARTANIM:I

.field private mAnimation:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private viewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/customView/WincaTextView;->MSG_STARTANIM:I

    .line 54
    new-instance v0, Lcom/winca/customView/WincaTextView$1;

    invoke-direct {v0, p0}, Lcom/winca/customView/WincaTextView$1;-><init>(Lcom/winca/customView/WincaTextView;)V

    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->viewHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attri"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/customView/WincaTextView;->MSG_STARTANIM:I

    .line 54
    new-instance v0, Lcom/winca/customView/WincaTextView$1;

    invoke-direct {v0, p0}, Lcom/winca/customView/WincaTextView$1;-><init>(Lcom/winca/customView/WincaTextView;)V

    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->viewHandler:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    .line 15
    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->mContext:Landroid/content/Context;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/customView/WincaTextView;->MSG_STARTANIM:I

    .line 54
    new-instance v0, Lcom/winca/customView/WincaTextView$1;

    invoke-direct {v0, p0}, Lcom/winca/customView/WincaTextView$1;-><init>(Lcom/winca/customView/WincaTextView;)V

    iput-object v0, p0, Lcom/winca/customView/WincaTextView;->viewHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/winca/customView/WincaTextView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->viewHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public setVisibility(II)V
    .locals 4
    .parameter "visibility"
    .parameter "dealyMillion"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 38
    iget-object v0, p0, Lcom/winca/customView/WincaTextView;->viewHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void
.end method
