.class public Lcom/winca/music/Pages/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private inAnimation:Landroid/view/animation/Animation;

.field private isFirstAnimation:Z

.field public mActivity:Lcom/winca/music/MusicActivity;

.field private mCurrentLayout:Landroid/widget/RelativeLayout;

.field public mInflater:Landroid/view/LayoutInflater;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private oututAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 2
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/winca/music/Pages/Page;->mInflater:Landroid/view/LayoutInflater;

    .line 19
    iput-object v0, p0, Lcom/winca/music/Pages/Page;->inAnimation:Landroid/view/animation/Animation;

    .line 20
    iput-object v0, p0, Lcom/winca/music/Pages/Page;->oututAnimation:Landroid/view/animation/Animation;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winca/music/Pages/Page;->isFirstAnimation:Z

    .line 27
    iput-object p1, p0, Lcom/winca/music/Pages/Page;->mActivity:Lcom/winca/music/MusicActivity;

    .line 28
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->mActivity:Lcom/winca/music/MusicActivity;

    .line 29
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 28
    iput-object v0, p0, Lcom/winca/music/Pages/Page;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 30
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->mActivity:Lcom/winca/music/MusicActivity;

    .line 31
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 30
    iput-object v0, p0, Lcom/winca/music/Pages/Page;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p0}, Lcom/winca/music/Pages/Page;->setDefaultAnimation()V

    .line 33
    return-void
.end method

.method private isFirstAnimination()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/winca/music/Pages/Page;->isFirstAnimation:Z

    return v0
.end method


# virtual methods
.method public OnDestrory()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public create()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public createLayout(I)V
    .locals 4
    .parameter "resourceID"

    .prologue
    const/4 v3, -0x2

    .line 101
    iget-object v1, p0, Lcom/winca/music/Pages/Page;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/winca/music/Pages/Page;->getLeftMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 106
    invoke-virtual {p0}, Lcom/winca/music/Pages/Page;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 107
    iget-object v1, p0, Lcom/winca/music/Pages/Page;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "tvPlayingAlbum"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftMargin()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyBack()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public setDefaultAnimation()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/winca/music/Pages/Page;->setInAniDef()V

    .line 37
    invoke-virtual {p0}, Lcom/winca/music/Pages/Page;->setOutAniDef()V

    .line 38
    return-void
.end method

.method public setInAniDef()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->mActivity:Lcom/winca/music/MusicActivity;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/Pages/Page;->inAnimation:Landroid/view/animation/Animation;

    .line 47
    return-void
.end method

.method public setInAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "inAmi"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/winca/music/Pages/Page;->inAnimation:Landroid/view/animation/Animation;

    .line 56
    return-void
.end method

.method public setIsFirstShow(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/winca/music/Pages/Page;->isFirstAnimation:Z

    .line 128
    return-void
.end method

.method public setOutAniDef()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->mActivity:Lcom/winca/music/MusicActivity;

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/Pages/Page;->oututAnimation:Landroid/view/animation/Animation;

    .line 52
    return-void
.end method

.method public setOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "outAmi"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/winca/music/Pages/Page;->oututAnimation:Landroid/view/animation/Animation;

    .line 60
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->inAnimation:Landroid/view/animation/Animation;

    .line 67
    .local v0, animation:Landroid/view/animation/Animation;
    if-nez p1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->inAnimation:Landroid/view/animation/Animation;

    .line 73
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    invoke-direct {p0}, Lcom/winca/music/Pages/Page;->isFirstAnimination()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/winca/music/Pages/Page;->mCurrentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 77
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 84
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    return-void

    .line 69
    .restart local v0       #animation:Landroid/view/animation/Animation;
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/winca/music/Pages/Page;->oututAnimation:Landroid/view/animation/Animation;

    goto :goto_0

    .line 79
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/winca/music/Pages/Page;->setIsFirstShow(Z)V

    goto :goto_1
.end method
