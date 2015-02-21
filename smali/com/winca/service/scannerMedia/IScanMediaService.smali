.class public interface abstract Lcom/winca/service/scannerMedia/IScanMediaService;
.super Ljava/lang/Object;
.source "IScanMediaService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/service/scannerMedia/IScanMediaService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAlbum(I)[Lcom/winca/service/scannerMedia/Album;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAlbumSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/AlbumSong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getArtist(I)[Lcom/winca/service/scannerMedia/Artist;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getArtistSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/ArtistSong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAudio(I)[Lcom/winca/service/scannerMedia/Audio;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getVideo(I)[Lcom/winca/service/scannerMedia/Video;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isScanning()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
