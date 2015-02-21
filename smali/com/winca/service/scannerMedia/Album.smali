.class public Lcom/winca/service/scannerMedia/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/winca/service/scannerMedia/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/winca/service/scannerMedia/Album$1;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/Album$1;-><init>()V

    sput-object v0, Lcom/winca/service/scannerMedia/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/service/scannerMedia/Album;->album:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Album;->album:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Album;->album:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Album;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
