.class public abstract Lcom/winca/service/scannerMedia/IScanMediaService$Stub;
.super Landroid/os/Binder;
.source "IScanMediaService.java"

# interfaces
.implements Lcom/winca/service/scannerMedia/IScanMediaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/IScanMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/service/scannerMedia/IScanMediaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.winca.service.scannerMedia.IScanMediaService"

.field static final TRANSACTION_getAlbum:I = 0x3

.field static final TRANSACTION_getAlbumSong:I = 0x5

.field static final TRANSACTION_getArtist:I = 0x4

.field static final TRANSACTION_getArtistSong:I = 0x6

.field static final TRANSACTION_getAudio:I = 0x2

.field static final TRANSACTION_getVideo:I = 0x7

.field static final TRANSACTION_isScanning:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p0, p0, v0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/winca/service/scannerMedia/IScanMediaService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/winca/service/scannerMedia/IScanMediaService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/winca/service/scannerMedia/IScanMediaService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->isScanning()Z

    move-result v2

    .line 49
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 55
    .end local v2           #_result:Z
    :sswitch_2
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getAudio(I)[Lcom/winca/service/scannerMedia/Audio;

    move-result-object v2

    .line 59
    .local v2, _result:[Lcom/winca/service/scannerMedia/Audio;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    .end local v2           #_result:[Lcom/winca/service/scannerMedia/Audio;
    :sswitch_3
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getAlbum(I)[Lcom/winca/service/scannerMedia/Album;

    move-result-object v2

    .line 69
    .local v2, _result:[Lcom/winca/service/scannerMedia/Album;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:I
    .end local v2           #_result:[Lcom/winca/service/scannerMedia/Album;
    :sswitch_4
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getArtist(I)[Lcom/winca/service/scannerMedia/Artist;

    move-result-object v2

    .line 79
    .local v2, _result:[Lcom/winca/service/scannerMedia/Artist;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:I
    .end local v2           #_result:[Lcom/winca/service/scannerMedia/Artist;
    :sswitch_5
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getAlbumSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/AlbumSong;

    move-result-object v2

    .line 91
    .local v2, _result:[Lcom/winca/service/scannerMedia/AlbumSong;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:[Lcom/winca/service/scannerMedia/AlbumSong;
    :sswitch_6
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getArtistSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/ArtistSong;

    move-result-object v2

    .line 103
    .local v2, _result:[Lcom/winca/service/scannerMedia/ArtistSong;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:[Lcom/winca/service/scannerMedia/ArtistSong;
    :sswitch_7
    const-string v3, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/winca/service/scannerMedia/IScanMediaService$Stub;->getVideo(I)[Lcom/winca/service/scannerMedia/Video;

    move-result-object v2

    .line 113
    .local v2, _result:[Lcom/winca/service/scannerMedia/Video;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
