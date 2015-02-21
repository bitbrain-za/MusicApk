.class public Lcom/winca/music/util/VolumeUtil;
.super Ljava/lang/Object;
.source "VolumeUtil.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# static fields
.field public static mContext:Lcom/winca/music/util/VolumeUtil;


# instance fields
.field private str:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/winca/music/util/VolumeUtil;->mContext:Lcom/winca/music/util/VolumeUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/winca/music/util/VolumeUtil;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/winca/music/util/VolumeUtil;->mContext:Lcom/winca/music/util/VolumeUtil;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/winca/music/util/VolumeUtil;

    invoke-direct {v0}, Lcom/winca/music/util/VolumeUtil;-><init>()V

    sput-object v0, Lcom/winca/music/util/VolumeUtil;->mContext:Lcom/winca/music/util/VolumeUtil;

    .line 19
    :cond_0
    sget-object v0, Lcom/winca/music/util/VolumeUtil;->mContext:Lcom/winca/music/util/VolumeUtil;

    return-object v0
.end method


# virtual methods
.method public GetVolumeValue()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 28
    iget-object v1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return v0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    const-string v2, "/mnt/sdcard/sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    .line 43
    :goto_1
    iget v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    const-string v2, "/mnt/udisk/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    goto :goto_1

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    const-string v2, "/mnt/udisk1/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    goto :goto_1

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    const-string v2, "/mnt/harddisk/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    goto :goto_1

    .line 40
    :cond_4
    iput v0, p0, Lcom/winca/music/util/VolumeUtil;->type:I

    goto :goto_1
.end method

.method public GetVolumeValue(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/winca/music/util/VolumeUtil;->str:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/winca/music/util/VolumeUtil;->GetVolumeValue()I

    move-result v0

    return v0
.end method
