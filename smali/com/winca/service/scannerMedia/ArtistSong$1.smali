.class Lcom/winca/service/scannerMedia/ArtistSong$1;
.super Ljava/lang/Object;
.source "ArtistSong.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/ArtistSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/winca/service/scannerMedia/ArtistSong;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/ArtistSong;
    .locals 2
    .parameter "source"

    .prologue
    .line 73
    new-instance v0, Lcom/winca/service/scannerMedia/ArtistSong;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/ArtistSong;-><init>()V

    .line 74
    .local v0, artistSong:Lcom/winca/service/scannerMedia/ArtistSong;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/ArtistSong;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/ArtistSong;->setArtist(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/ArtistSong;->setAlbum(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/ArtistSong;->setData(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/ArtistSong;->setDuration(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/ArtistSong$1;->createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/ArtistSong;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/winca/service/scannerMedia/ArtistSong;
    .locals 1
    .parameter "size"

    .prologue
    .line 85
    new-array v0, p1, [Lcom/winca/service/scannerMedia/ArtistSong;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/ArtistSong$1;->newArray(I)[Lcom/winca/service/scannerMedia/ArtistSong;

    move-result-object v0

    return-object v0
.end method
