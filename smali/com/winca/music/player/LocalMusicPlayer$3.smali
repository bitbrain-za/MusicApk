.class Lcom/winca/music/player/LocalMusicPlayer$3;
.super Landroid/content/BroadcastReceiver;
.source "LocalMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/LocalMusicPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$3;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    .line 276
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, act:Ljava/lang/String;
    const-string v3, "com.winca.audio.returnVolume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    const-string v3, "com.winca.audio.key_volume_value"

    .line 281
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 283
    .local v2, vol:I
    if-eq v2, v4, :cond_0

    .line 284
    int-to-double v3, v2

    const-wide/high16 v5, 0x4031

    div-double/2addr v3, v5

    double-to-float v1, v3

    .line 285
    .local v1, value:F
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$3;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mPlayer:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
    invoke-static {v3}, Lcom/winca/music/player/LocalMusicPlayer;->access$0(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->setVolume(F)V

    .line 288
    .end local v1           #value:F
    .end local v2           #vol:I
    :cond_0
    return-void
.end method
