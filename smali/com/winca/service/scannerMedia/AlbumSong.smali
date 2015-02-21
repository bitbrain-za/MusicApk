.class public Lcom/winca/service/scannerMedia/AlbumSong;
.super Ljava/lang/Object;
.source "AlbumSong.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/winca/service/scannerMedia/AlbumSong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/winca/service/scannerMedia/AlbumSong$1;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/AlbumSong$1;-><init>()V

    sput-object v0, Lcom/winca/service/scannerMedia/AlbumSong;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->title:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->artist:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->album:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->data:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->duration:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AlbumSong;->album:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AlbumSong;->artist:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AlbumSong;->data:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AlbumSong;->duration:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AlbumSong;->title:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AlbumSong;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
