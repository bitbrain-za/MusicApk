.class public Lcom/winca/service/scannerMedia/Audio;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/winca/service/scannerMedia/Audio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/winca/service/scannerMedia/Audio$1;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/Audio$1;-><init>()V

    sput-object v0, Lcom/winca/service/scannerMedia/Audio;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->id:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->title:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->artist:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->album:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->data:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->duration:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->album:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->artist:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->data:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->duration:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Audio;->title:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Audio;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
