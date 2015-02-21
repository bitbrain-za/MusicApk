.class public Lcom/winca/music/player/MusicPickerPlayer;
.super Ljava/lang/Object;
.source "MusicPickerPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;
    }
.end annotation


# static fields
.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAY:I = 0x1


# instance fields
.field private filePath:Ljava/lang/String;

.field private isPlayerUserable:Z

.field private mAudioEntity:Lcom/winca/music/mediautil/AudioEntity;

.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaUtil:Lcom/winca/music/mediautil/MediaUtil;

.field private mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

.field private playState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->isPlayerUserable:Z

    .line 29
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->filePath:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->playState:I

    .line 31
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaUtil:Lcom/winca/music/mediautil/MediaUtil;

    .line 32
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mAudioEntity:Lcom/winca/music/mediautil/AudioEntity;

    .line 34
    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    .line 37
    iput-object p2, p0, Lcom/winca/music/player/MusicPickerPlayer;->filePath:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/winca/music/mediautil/MediaUtil;

    invoke-direct {v0, p1}, Lcom/winca/music/mediautil/MediaUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaUtil:Lcom/winca/music/mediautil/MediaUtil;

    .line 40
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 41
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/winca/music/player/MusicPickerPlayer;->initPlayer()V

    .line 43
    return-void
.end method

.method private isUsable()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->isPlayerUserable:Z

    return v0
.end method

.method public static makeTimeString(J)Ljava/lang/String;
    .locals 12
    .parameter "secs"

    .prologue
    const-wide/16 v10, 0xe10

    const/4 v7, 0x0

    const-wide/16 v8, 0x3c

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v1, sFormatBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x5

    new-array v3, v5, [Ljava/lang/Object;

    .line 218
    .local v3, sTimeArgs:[Ljava/lang/Object;
    new-instance v2, Ljava/util/Formatter;

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 218
    invoke-direct {v2, v1, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 222
    .local v2, sFormatter:Ljava/util/Formatter;
    cmp-long v5, p0, v10

    if-gez v5, :cond_0

    .line 224
    const-string v0, "%2$d:%5$02d"

    .line 231
    .local v0, durationformat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    move-object v4, v3

    .line 233
    .local v4, timeArgs:[Ljava/lang/Object;
    div-long v5, p0, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    .line 234
    const/4 v5, 0x1

    div-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 235
    const/4 v5, 0x2

    div-long v6, p0, v8

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 236
    const/4 v5, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 237
    const/4 v5, 0x4

    rem-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 239
    invoke-virtual {v2, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 228
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v4           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const-string v0, "%1$d:%3$02d:%5$02d"

    .restart local v0       #durationformat:Ljava/lang/String;
    goto :goto_0
.end method

.method private postDeinit()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method private postInit()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method private prepare()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 245
    iget-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaUtil:Lcom/winca/music/mediautil/MediaUtil;

    iget-object v2, p0, Lcom/winca/music/player/MusicPickerPlayer;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/winca/music/mediautil/MediaUtil;->readAudioFile(Ljava/lang/String;)Lcom/winca/music/mediautil/AudioEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mAudioEntity:Lcom/winca/music/mediautil/AudioEntity;

    .line 246
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0, v3}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPlayPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return v1

    .line 194
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 195
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 198
    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 201
    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    goto :goto_0

    .line 202
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 204
    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    invoke-direct {p0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayUsable(Z)V

    goto :goto_0
.end method

.method private setPlayState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 51
    iput p1, p0, Lcom/winca/music/player/MusicPickerPlayer;->playState:I

    .line 52
    return-void
.end method

.method private setPlayUsable(Z)V
    .locals 0
    .parameter "buse"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/winca/music/player/MusicPickerPlayer;->isPlayerUserable:Z

    .line 182
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 78
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 79
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->postDeinit()V

    .line 80
    return-void
.end method

.method public duration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioEntity()Lcom/winca/music/mediautil/AudioEntity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mAudioEntity:Lcom/winca/music/mediautil/AudioEntity;

    return-object v0
.end method

.method public getCurPos()I
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurPosStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->playState:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalTimeStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicPickerPlayer;->makeTimeString(J)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotolTime()I
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initPlayer()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->prepare()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->postInit()V

    .line 63
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    invoke-interface {v0}, Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;->onMusicComplete()V

    .line 265
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 104
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayState(I)V

    .line 106
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    invoke-interface {v0}, Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;->onMusicPause()V

    .line 110
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/winca/music/player/MusicPickerPlayer;->setPlayState(I)V

    .line 95
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    invoke-interface {v0}, Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;->onMusicPlay()V

    .line 99
    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "repeatmode"

    .prologue
    .line 169
    return-void
.end method

.method public setStateListener(Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/winca/music/player/MusicPickerPlayer;->mSListener:Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;

    .line 74
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volue"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/winca/music/player/MusicPickerPlayer;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/winca/music/player/MusicPickerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 70
    :cond_0
    return-void
.end method
