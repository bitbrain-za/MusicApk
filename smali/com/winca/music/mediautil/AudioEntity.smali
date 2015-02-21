.class public Lcom/winca/music/mediautil/AudioEntity;
.super Ljava/lang/Object;
.source "AudioEntity.java"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->id:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->title:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->artist:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->album:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->data:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/winca/music/mediautil/AudioEntity;->duration:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/winca/music/mediautil/AudioEntity;->volume:I

    .line 71
    const-string v0, "UnKnown"

    .line 74
    .local v0, str:Ljava/lang/String;
    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setId(Ljava/lang/String;)V

    .line 75
    const-string v1, "Unknown"

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setAlbum(Ljava/lang/String;)V

    .line 76
    const-string v1, "Unknown"

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setArtist(Ljava/lang/String;)V

    .line 77
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setDuration(Ljava/lang/String;)V

    .line 78
    const-string v1, "Unknown"

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setTitle(Ljava/lang/String;)V

    .line 79
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/winca/music/mediautil/AudioEntity;->setData(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/winca/music/mediautil/AudioEntity;->setVolume(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/winca/music/mediautil/AudioEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/winca/music/mediautil/AudioEntity;->volume:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->album:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->artist:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->data:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->duration:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/winca/music/mediautil/AudioEntity;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "vol"

    .prologue
    .line 18
    iput p1, p0, Lcom/winca/music/mediautil/AudioEntity;->volume:I

    .line 19
    return-void
.end method
