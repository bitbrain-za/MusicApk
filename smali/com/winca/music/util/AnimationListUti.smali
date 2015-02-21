.class public Lcom/winca/music/util/AnimationListUti;
.super Ljava/lang/Object;
.source "AnimationListUti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;
    }
.end annotation


# instance fields
.field aniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/winca/music/util/AnimationNode;",
            ">;"
        }
    .end annotation
.end field

.field mLister:Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/winca/music/util/AnimationListUti;->aniList:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/music/util/AnimationListUti;->mLister:Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;

    .line 20
    new-instance v0, Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;

    invoke-direct {v0, p0}, Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;-><init>(Lcom/winca/music/util/AnimationListUti;)V

    iput-object v0, p0, Lcom/winca/music/util/AnimationListUti;->mLister:Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;

    .line 21
    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "v"
    .parameter "animation"

    .prologue
    .line 25
    return-void
.end method

.method start()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
