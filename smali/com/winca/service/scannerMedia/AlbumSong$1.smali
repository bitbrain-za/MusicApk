.class Lcom/winca/service/scannerMedia/AlbumSong$1;
.super Ljava/lang/Object;
.source "AlbumSong.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/AlbumSong;
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
        "Lcom/winca/service/scannerMedia/AlbumSong;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/AlbumSong;
    .locals 2
    .parameter "source"

    .prologue
    .line 73
    new-instance v0, Lcom/winca/service/scannerMedia/AlbumSong;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/AlbumSong;-><init>()V

    .line 74
    .local v0, albumSong:Lcom/winca/service/scannerMedia/AlbumSong;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/AlbumSong;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/AlbumSong;->setArtist(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/AlbumSong;->setAlbum(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/AlbumSong;->setData(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/AlbumSong;->setDuration(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/AlbumSong$1;->createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/AlbumSong;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/winca/service/scannerMedia/AlbumSong;
    .locals 1
    .parameter "size"

    .prologue
    .line 85
    new-array v0, p1, [Lcom/winca/service/scannerMedia/AlbumSong;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/AlbumSong$1;->newArray(I)[Lcom/winca/service/scannerMedia/AlbumSong;

    move-result-object v0

    return-object v0
.end method
