.class Lcom/winca/service/scannerMedia/Video$1;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/scannerMedia/Video;
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
        "Lcom/winca/service/scannerMedia/Video;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/Video;
    .locals 2
    .parameter "source"

    .prologue
    .line 54
    new-instance v0, Lcom/winca/service/scannerMedia/Video;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/Video;-><init>()V

    .line 55
    .local v0, video:Lcom/winca/service/scannerMedia/Video;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/Video;->setTitle(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/Video;->setData(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/winca/service/scannerMedia/Video;->setDuration(Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/Video$1;->createFromParcel(Landroid/os/Parcel;)Lcom/winca/service/scannerMedia/Video;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/winca/service/scannerMedia/Video;
    .locals 1
    .parameter "size"

    .prologue
    .line 64
    new-array v0, p1, [Lcom/winca/service/scannerMedia/Video;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/winca/service/scannerMedia/Video$1;->newArray(I)[Lcom/winca/service/scannerMedia/Video;

    move-result-object v0

    return-object v0
.end method
