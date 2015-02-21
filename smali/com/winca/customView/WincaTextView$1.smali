.class Lcom/winca/customView/WincaTextView$1;
.super Landroid/os/Handler;
.source "WincaTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/customView/WincaTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/customView/WincaTextView;


# direct methods
.method constructor <init>(Lcom/winca/customView/WincaTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/customView/WincaTextView$1;->this$0:Lcom/winca/customView/WincaTextView;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    .local v0, message:I
    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/winca/customView/WincaTextView$1;->this$0:Lcom/winca/customView/WincaTextView;

    iget-object v2, p0, Lcom/winca/customView/WincaTextView$1;->this$0:Lcom/winca/customView/WincaTextView;

    #getter for: Lcom/winca/customView/WincaTextView;->mAnimation:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/winca/customView/WincaTextView;->access$0(Lcom/winca/customView/WincaTextView;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/winca/customView/WincaTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
