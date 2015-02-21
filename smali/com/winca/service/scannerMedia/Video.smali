.class public Lcom/winca/service/scannerMedia/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/winca/service/scannerMedia/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/winca/service/scannerMedia/Video$1;

    invoke-direct {v0}, Lcom/winca/service/scannerMedia/Video$1;-><init>()V

    sput-object v0, Lcom/winca/service/scannerMedia/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Video;->title:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Video;->data:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/winca/service/scannerMedia/Video;->duration:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Video;->data:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Video;->duration:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/winca/service/scannerMedia/Video;->title:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/winca/service/scannerMedia/Video;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
