.class Lcom/winca/music/player/LocalMusicPlayer$MyTask;
.super Ljava/util/TimerTask;
.source "LocalMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/player/LocalMusicPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 1093
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.winca.music.progress"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1095
    const-string v4, "isPause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1101
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer;->isReset()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer;->position()J

    move-result-wide v4

    long-to-int v2, v4

    .line 1103
    .local v2, position:I
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-virtual {v4}, Lcom/winca/music/player/LocalMusicPlayer;->duration()J

    move-result-wide v4

    long-to-int v3, v4

    .line 1104
    .local v3, total:I
    if-eq v2, v6, :cond_0

    if-eq v3, v6, :cond_0

    if-eq v2, v3, :cond_0

    .line 1105
    const-string v4, "isPlaying"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1106
    const-string v4, "position"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    const-string v4, "total"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v4}, Lcom/winca/music/player/LocalMusicPlayer;->access$11(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/winca/music/service/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1109
    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MyTask;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #calls: Lcom/winca/music/player/LocalMusicPlayer;->sendMcuAudioCurrentPlayTime()V
    invoke-static {v4}, Lcom/winca/music/player/LocalMusicPlayer;->access$12(Lcom/winca/music/player/LocalMusicPlayer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    .end local v2           #position:I
    .end local v3           #total:I
    :cond_0
    :goto_1
    return-void

    .line 1097
    :cond_1
    const-string v4, "isPause"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method
