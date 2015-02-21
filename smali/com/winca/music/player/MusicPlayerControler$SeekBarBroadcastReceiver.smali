.class Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/MusicPlayerControler;


# direct methods
.method private constructor <init>(Lcom/winca/music/player/MusicPlayerControler;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/winca/music/player/MusicPlayerControler;Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;-><init>(Lcom/winca/music/player/MusicPlayerControler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 313
    const-string v1, "MusicPlayer"

    const-string v2, "SeekBarBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "seekBarPosition"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, seekBarPosition:I
    iget-object v1, p0, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;
    invoke-static {v1}, Lcom/winca/music/player/MusicPlayerControler;->access$0(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/player/LocalMusicPlayer;

    move-result-object v1

    int-to-long v2, v0

    iget-object v4, p0, Lcom/winca/music/player/MusicPlayerControler$SeekBarBroadcastReceiver;->this$0:Lcom/winca/music/player/MusicPlayerControler;

    #getter for: Lcom/winca/music/player/MusicPlayerControler;->mLocalPlayer:Lcom/winca/music/player/LocalMusicPlayer;
    invoke-static {v4}, Lcom/winca/music/player/MusicPlayerControler;->access$0(Lcom/winca/music/player/MusicPlayerControler;)Lcom/winca/music/player/LocalMusicPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer;->duration()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/winca/music/player/LocalMusicPlayer;->seek(J)J

    .line 316
    return-void
.end method
