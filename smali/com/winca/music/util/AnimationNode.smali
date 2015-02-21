.class Lcom/winca/music/util/AnimationNode;
.super Ljava/lang/Object;
.source "AnimationListUti.java"


# instance fields
.field public mAnimation:Landroid/view/animation/Animation;

.field public mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/winca/music/util/AnimationNode;->mAnimation:Landroid/view/animation/Animation;

    .line 12
    iput-object v0, p0, Lcom/winca/music/util/AnimationNode;->mView:Landroid/view/View;

    .line 10
    return-void
.end method
