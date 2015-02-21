.class public Lcom/winca/music/player/MusicPlayerDataManager;
.super Ljava/lang/Object;
.source "MusicPlayerDataManager.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayerDataManager"

.field public static curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

.field public static curPlayPos:I


# instance fields
.field private iCurVolume:I

.field private mAlbumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSongsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistSongsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

.field private mAudioMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPlayingListName:Ljava/lang/String;

.field private mPlayerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayAudio:Lcom/winca/music/mediautil/AudioEntity;

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    return-void
.end method

.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mcontext:Landroid/content/Context;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumSongsMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistSongsMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayerMap:Ljava/util/Map;

    .line 31
    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    .line 94
    iput-object p1, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mcontext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/winca/service/scannerMedia/AudioConnectService;

    invoke-direct {v0, p1}, Lcom/winca/service/scannerMedia/AudioConnectService;-><init>(Lcom/winca/music/MusicActivity;)V

    iput-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    .line 96
    return-void
.end method

.method private SetCurrentVolume(I)V
    .locals 0
    .parameter "volume"

    .prologue
    .line 174
    iput p1, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    .line 175
    return-void
.end method

.method private UpdataAlbumData()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    iget v6, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    invoke-virtual {v5, v6}, Lcom/winca/service/scannerMedia/AudioConnectService;->getAlbum(I)[Lcom/winca/service/scannerMedia/Album;

    move-result-object v1

    .line 307
    .local v1, albums:[Lcom/winca/service/scannerMedia/Album;
    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v4

    .line 311
    :cond_1
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 313
    array-length v3, v1

    .line 315
    .local v3, length:I
    if-lez v3, :cond_0

    .line 317
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 322
    const/4 v4, 0x1

    goto :goto_0

    .line 318
    :cond_2
    aget-object v0, v1, v2

    .line 319
    .local v0, album:Lcom/winca/service/scannerMedia/Album;
    iget-object v4, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private UpdataArtistData()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    iget v6, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    invoke-virtual {v5, v6}, Lcom/winca/service/scannerMedia/AudioConnectService;->getArtist(I)[Lcom/winca/service/scannerMedia/Artist;

    move-result-object v1

    .line 282
    .local v1, artists:[Lcom/winca/service/scannerMedia/Artist;
    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v4

    .line 286
    :cond_1
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 288
    array-length v3, v1

    .line 290
    .local v3, length:I
    if-lez v3, :cond_0

    .line 291
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 296
    const/4 v4, 0x1

    goto :goto_0

    .line 292
    :cond_2
    aget-object v0, v1, v2

    .line 293
    .local v0, artist:Lcom/winca/service/scannerMedia/Artist;
    iget-object v4, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private UpdataAudiosData()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 330
    iget-object v6, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    iget v7, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    invoke-virtual {v6, v7}, Lcom/winca/service/scannerMedia/AudioConnectService;->getAudio(I)[Lcom/winca/service/scannerMedia/Audio;

    move-result-object v1

    .line 331
    .local v1, audios:[Lcom/winca/service/scannerMedia/Audio;
    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v5

    .line 333
    :cond_1
    array-length v3, v1

    .line 334
    .local v3, length:I
    if-lez v3, :cond_0

    .line 336
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 337
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 340
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_3

    .line 350
    const/4 v5, 0x1

    goto :goto_0

    .line 341
    :cond_3
    aget-object v0, v1, v2

    .line 342
    .local v0, audio:Lcom/winca/service/scannerMedia/Audio;
    new-instance v4, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v4}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 343
    .local v4, songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Audio;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setTitle(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Audio;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setAlbum(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Audio;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setArtist(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Audio;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setData(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Audio;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setDuration(Ljava/lang/String;)V

    .line 348
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getSelectionPos()I
    .locals 2

    .prologue
    .line 40
    const/4 v0, -0x1

    .line 41
    .local v0, index:I
    sget v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    add-int/lit8 v0, v1, -0x2

    .line 43
    sget v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :cond_0
    return v0
.end method


# virtual methods
.method public ChangeVolmue(I)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/winca/music/player/MusicPlayerDataManager;->SetCurrentVolume(I)V

    .line 149
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerDataManager;->UpdataAudiosData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerDataManager;->UpdataArtistData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/winca/music/player/MusicPlayerDataManager;->UpdataAlbumData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    :cond_2
    return-void
.end method

.method public GetAlbumMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumMap:Ljava/util/Map;

    return-object v0
.end method

.method public GetArtistMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistMap:Ljava/util/Map;

    return-object v0
.end method

.method public GetAudioMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    return-object v0
.end method

.method public GetCurrentVolume()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    return v0
.end method

.method public getAlbumSongsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumSongsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getArtistSongMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistSongsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getIdByPath(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    .line 53
    .local v2, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v0, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v0}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 54
    .local v0, audio:Lcom/winca/music/mediautil/AudioEntity;
    if-eqz v2, :cond_0

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 67
    .end local v1           #i:I
    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    .line 58
    .restart local v1       #i:I
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/winca/music/mediautil/AudioEntity;
    check-cast v0, Lcom/winca/music/mediautil/AudioEntity;

    .line 59
    .restart local v0       #audio:Lcom/winca/music/mediautil/AudioEntity;
    iget-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayerMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPlayerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayingSongMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    return-object v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AudioConnectService;->isScanning()Z

    move-result v0

    return v0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AudioConnectService;->doUnBindService()V

    .line 100
    return-void
.end method

.method public updataAlbumSongsMap(Ljava/lang/String;)Z
    .locals 7
    .parameter "albumName"

    .prologue
    .line 250
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    .line 251
    iget v6, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    .line 250
    invoke-virtual {v5, p1, v6}, Lcom/winca/service/scannerMedia/AudioConnectService;->getAlbumSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/AlbumSong;

    move-result-object v1

    .line 254
    .local v1, albumSongs:[Lcom/winca/service/scannerMedia/AlbumSong;
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumSongsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 256
    if-eqz v1, :cond_1

    .line 257
    array-length v3, v1

    .line 260
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 272
    const/4 v5, 0x1

    .line 275
    .end local v2           #i:I
    .end local v3           #length:I
    :goto_1
    return v5

    .line 261
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_0
    aget-object v0, v1, v2

    .line 263
    .local v0, albumSong:Lcom/winca/service/scannerMedia/AlbumSong;
    new-instance v4, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v4}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 264
    .local v4, songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AlbumSong;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setTitle(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AlbumSong;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setAlbum(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AlbumSong;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setArtist(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AlbumSong;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setData(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/AlbumSong;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setDuration(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumSongsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0           #albumSong:Lcom/winca/service/scannerMedia/AlbumSong;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updataArtistSongList(Ljava/lang/String;)Z
    .locals 7
    .parameter "artistName"

    .prologue
    .line 217
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioConnectService:Lcom/winca/service/scannerMedia/AudioConnectService;

    .line 218
    iget v6, p0, Lcom/winca/music/player/MusicPlayerDataManager;->iCurVolume:I

    .line 217
    invoke-virtual {v5, p1, v6}, Lcom/winca/service/scannerMedia/AudioConnectService;->getArtistSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/ArtistSong;

    move-result-object v1

    .line 220
    .local v1, artistSongs:[Lcom/winca/service/scannerMedia/ArtistSong;
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistSongsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 222
    if-eqz v1, :cond_1

    .line 223
    array-length v3, v1

    .line 226
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 239
    const/4 v5, 0x1

    .line 243
    .end local v2           #i:I
    .end local v3           #length:I
    :goto_1
    return v5

    .line 228
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_0
    new-instance v4, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v4}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 229
    .local v4, songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    aget-object v0, v1, v2

    .line 230
    .local v0, artistSong:Lcom/winca/service/scannerMedia/ArtistSong;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/ArtistSong;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setTitle(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/ArtistSong;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setAlbum(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/ArtistSong;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setArtist(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/ArtistSong;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setData(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/ArtistSong;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/winca/music/mediautil/AudioEntity;->setDuration(Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistSongsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v0           #artistSong:Lcom/winca/service/scannerMedia/ArtistSong;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public updataPlayerPlayList()V
    .locals 7

    .prologue
    .line 72
    iget-object v4, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    .line 73
    .local v4, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 74
    .local v2, musicList:[Ljava/lang/String;
    new-instance v0, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v0}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 76
    .local v0, audio:Lcom/winca/music/mediautil/AudioEntity;
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayerMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 78
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 85
    invoke-static {}, Lcom/winca/music/service/MusicService;->getMusicPlayer()Lcom/winca/music/player/MusicPlayerControler;

    move-result-object v3

    .line 86
    .local v3, player:Lcom/winca/music/player/MusicPlayerControler;
    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v3, v2}, Lcom/winca/music/player/MusicPlayerControler;->updatePlayerPlayList([Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void

    .line 80
    .end local v3           #player:Lcom/winca/music/player/MusicPlayerControler;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/winca/music/mediautil/AudioEntity;
    check-cast v0, Lcom/winca/music/mediautil/AudioEntity;

    .line 81
    .restart local v0       #audio:Lcom/winca/music/mediautil/AudioEntity;
    iget-object v5, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayerMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updataPlayingMap()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/winca/music/player/MusicPlayerDataManager;->updataPlayingMapByListType(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public updataPlayingMapByListType(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    .line 115
    const-string v3, "MusicPlayerDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "kkcmh updata Play List:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v3, "Audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const-string v3, "Audio"

    iput-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    .line 119
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAudioMap:Ljava/util/Map;

    .line 130
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 132
    iget-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, temp:Lcom/winca/music/mediautil/AudioEntity;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 141
    .end local v0           #i:I
    .end local v1           #temp:Lcom/winca/music/mediautil/AudioEntity;
    :cond_1
    return-void

    .line 121
    :cond_2
    const-string v3, "Artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    const-string v3, "Artist"

    iput-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mArtistSongsMap:Ljava/util/Map;

    .line 125
    goto :goto_0

    :cond_3
    const-string v3, "Album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "Album"

    iput-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mCurPlayingListName:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mAlbumSongsMap:Ljava/util/Map;

    goto :goto_0

    .line 136
    .restart local v0       #i:I
    .restart local v1       #temp:Lcom/winca/music/mediautil/AudioEntity;
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcom/winca/music/mediautil/AudioEntity;
    check-cast v1, Lcom/winca/music/mediautil/AudioEntity;

    .line 137
    .restart local v1       #temp:Lcom/winca/music/mediautil/AudioEntity;
    iget-object v3, p0, Lcom/winca/music/player/MusicPlayerDataManager;->mPlayingMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
