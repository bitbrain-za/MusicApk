.class public Lcom/winca/service/scannerMedia/Artist;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/winca/service/scannerMedia/Artist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artist:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/winca/service/scannerMedia/Artist$1;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/Artist$1;-><init>()V

    sput-object v0, Lcom/winca/service/scannerMedia/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/service/scannerMedia/Artist;->artist:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Artist;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Artist;->artist:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Artist;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    return-void
.end method
