.class public Lcom/winca/service/media/MediaOperationManager;
.super Ljava/lang/Object;
.source "MediaOperationManager.java"


# static fields
.field private static final SOURCE_CHANGE:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "SERVICE_MEDIA_MCU"


# instance fields
.field private mContext:Lcom/winca/music/service/MusicService;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

.field private mMediaService:Lcom/winca/service/media/MediaService;

.field public mOnSourceChangeListener:Lcom/winca/service/media/OnSourceChangeListener;


# direct methods
.method public constructor <init>(Lcom/winca/music/service/MusicService;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mContext:Lcom/winca/music/service/MusicService;

    .line 17
    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mMediaService:Lcom/winca/service/media/MediaService;

    .line 18
    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    .line 186
    new-instance v0, Lcom/winca/service/media/MediaOperationManager$1;

    invoke-direct {v0, p0}, Lcom/winca/service/media/MediaOperationManager$1;-><init>(Lcom/winca/service/media/MediaOperationManager;)V

    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mOnSourceChangeListener:Lcom/winca/service/media/OnSourceChangeListener;

    .line 195
    new-instance v0, Lcom/winca/service/media/MediaOperationManager$2;

    invoke-direct {v0, p0}, Lcom/winca/service/media/MediaOperationManager$2;-><init>(Lcom/winca/service/media/MediaOperationManager;)V

    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/winca/service/media/MediaOperationManager;->mContext:Lcom/winca/music/service/MusicService;

    .line 23
    new-instance v0, Lcom/winca/service/media/MediaService;

    invoke-direct {v0, p1, p0}, Lcom/winca/service/media/MediaService;-><init>(Landroid/content/Context;Lcom/winca/service/media/MediaOperationManager;)V

    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mMediaService:Lcom/winca/service/media/MediaService;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/winca/service/media/MediaOperationManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/service/media/MediaOperationManager;)Lcom/winca/music/service/MusicService;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mContext:Lcom/winca/music/service/MusicService;

    return-object v0
.end method


# virtual methods
.method public audioCurrentPlayTime(III)Z
    .locals 4
    .parameter "hour"
    .parameter "min"
    .parameter "sec"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 150
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioCurrentPlayTime "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 152
    const/4 v1, 0x0

    .line 162
    :goto_0
    return v1

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2, p1, p2, p3}, Lcom/winca/service/media/IMediaInterface;->audioCurrentPlayTime(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public audioData(IIIII)Z
    .locals 8
    .parameter "currentNum"
    .parameter "totleNum"
    .parameter "totleTime_H"
    .parameter "totleTime_M"
    .parameter "totleTime_S"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 170
    const/4 v7, 0x0

    .line 180
    :goto_0
    return v7

    .line 172
    :cond_0
    const/4 v7, 0x0

    .line 174
    .local v7, ret:Z
    :try_start_0
    const-string v0, "SERVICE_MEDIA_MCU"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service audioData: cur:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/winca/service/media/IMediaInterface;->audioData(IIIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 176
    :catch_0
    move-exception v6

    .line 177
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public audioPause()Z
    .locals 4

    .prologue
    .line 57
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioPause "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 60
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2}, Lcom/winca/service/media/IMediaInterface;->audioPuase()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public audioPlay()Z
    .locals 4

    .prologue
    .line 74
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioPlay "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 77
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2}, Lcom/winca/service/media/IMediaInterface;->audioPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public audioStartVoice()Z
    .locals 4

    .prologue
    .line 93
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioStartVoice "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 96
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2}, Lcom/winca/service/media/IMediaInterface;->audioStartVoice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public audioStopVoice()Z
    .locals 4

    .prologue
    .line 110
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioStopVoice++++++ "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 113
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2}, Lcom/winca/service/media/IMediaInterface;->audioStopVoice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_1
    const-string v2, "SERVICE_MEDIA_MCU"

    const-string v3, "Service audioStopVoice---- "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public doBindService()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mMediaService:Lcom/winca/service/media/MediaService;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaService;->doBindService()Z

    .line 28
    return-void
.end method

.method public doUnbindService()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mMediaService:Lcom/winca/service/media/MediaService;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaService;->doUnbindService()V

    .line 32
    return-void
.end method

.method public registerSourceChange(Lcom/winca/service/media/OnSourceChangeListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 43
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2, p1}, Lcom/winca/service/media/IMediaInterface;->registerSourceChange(Lcom/winca/service/media/OnSourceChangeListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_1
    const-string v2, "SERVICE_MEDIA_MCU"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerSourceChange: ret ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDataType(I)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    if-nez v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 132
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 137
    .local v1, ret:Z
    :try_start_0
    const-string v2, "SERVICE_MEDIA_MCU"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service setDataType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    invoke-interface {v2, p1}, Lcom/winca/service/media/IMediaInterface;->setAudioDataType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMpegServiceInterface()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mMediaService:Lcom/winca/service/media/MediaService;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaService;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/winca/service/media/IMediaInterface;

    iput-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mIMediaInterface:Lcom/winca/service/media/IMediaInterface;

    .line 36
    iget-object v0, p0, Lcom/winca/service/media/MediaOperationManager;->mOnSourceChangeListener:Lcom/winca/service/media/OnSourceChangeListener;

    invoke-virtual {p0, v0}, Lcom/winca/service/media/MediaOperationManager;->registerSourceChange(Lcom/winca/service/media/OnSourceChangeListener;)Z

    .line 37
    return-void
.end method
