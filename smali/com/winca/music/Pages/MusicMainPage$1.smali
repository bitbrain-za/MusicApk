.class Lcom/winca/music/Pages/MusicMainPage$1;
.super Landroid/os/Handler;
.source "MusicMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/Pages/MusicMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/Pages/MusicMainPage;


# direct methods
.method constructor <init>(Lcom/winca/music/Pages/MusicMainPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/Pages/MusicMainPage$1;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    .line 1004
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "newMsg"

    .prologue
    .line 1007
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1008
    .local v0, msg:I
    packed-switch v0, :pswitch_data_0

    .line 1018
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1019
    return-void

    .line 1010
    :pswitch_0
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlayHistory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/winca/music/Pages/MusicMainPage$1;->this$0:Lcom/winca/music/Pages/MusicMainPage;

    #calls: Lcom/winca/music/Pages/MusicMainPage;->handlePlayHistory()V
    invoke-static {v1}, Lcom/winca/music/Pages/MusicMainPage;->access$0(Lcom/winca/music/Pages/MusicMainPage;)V

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
