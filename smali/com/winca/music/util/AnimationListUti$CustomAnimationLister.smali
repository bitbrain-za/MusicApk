.class public Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;
.super Ljava/lang/Object;
.source "AnimationListUti.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/util/AnimationListUti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomAnimationLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/util/AnimationListUti;


# direct methods
.method public constructor <init>(Lcom/winca/music/util/AnimationListUti;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/winca/music/util/AnimationListUti$CustomAnimationLister;->this$0:Lcom/winca/music/util/AnimationListUti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 40
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 46
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 52
    return-void
.end method
