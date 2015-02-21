.class Lcom/winca/customView/WincaImageView$1;
.super Landroid/os/Handler;
.source "WincaImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/customView/WincaImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/customView/WincaImageView;


# direct methods
.method constructor <init>(Lcom/winca/customView/WincaImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/customView/WincaImageView$1;->this$0:Lcom/winca/customView/WincaImageView;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    .line 52
    .local v0, message:I
    packed-switch v0, :pswitch_data_0

    .line 60
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    return-void

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
