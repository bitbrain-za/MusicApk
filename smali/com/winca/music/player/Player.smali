.class public abstract Lcom/winca/music/player/Player;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public actionLastModeRead(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    return-void
.end method

.method public actionLastModeSave(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    return-void
.end method

.method public abstract deInit()V
.end method

.method public abstract duration()J
.end method

.method public getAlbumDrawable()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurPlayPosInPlayList()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initPlayer()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract next(Z)V
.end method

.method public open([Ljava/lang/String;I)V
    .locals 0
    .parameter "list"
    .parameter "position"

    .prologue
    .line 80
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract position()J
.end method

.method public abstract postInit()V
.end method

.method public abstract preDeInit()Z
.end method

.method public abstract prev()V
.end method

.method public abstract seek(J)J
.end method

.method public setQueuePosition(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 70
    return-void
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract stop()V
.end method
