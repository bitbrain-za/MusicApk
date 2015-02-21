.class public final Lcom/winca/music/player/MusicOperaUtil;
.super Ljava/lang/Object;
.source "MusicOperaUtil.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BrocastCurPlayId(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.kkcmh.CURENT_PLAY_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string v1, "cur_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method public static BrocastInquireSoundSounce(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.audiochannelmanager.switchsource"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "source_type"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v1, "source_type_is_in_current_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static BrocastPlayMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.BROCAST_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "com.winca.MusicPlay.MODE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public static BrocastPlayState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.BROCAST_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "com.winca.MusicPlay.STATE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static BrocastUpdateAdaptor(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public static BrocastUpdatePlayingSongAdaptor(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public static ChangePlayMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public static SetNext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.Next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public static SetPlay(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.paly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public static SetPlay(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.paly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "Id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public static SetPre(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.Pre"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static SetStop(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static setPlayMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public static setPlayPause(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public static setReset(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.MusicPlay.OPERATION_BROCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "com.winca.MusicPlay.COMMAND_KEY"

    const-string v2, "winca.music.reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
