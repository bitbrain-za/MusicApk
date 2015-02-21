.class public final Lcom/winca/music/audioutil/Crc16;
.super Ljava/lang/Object;
.source "Crc16.java"


# static fields
.field private static polynomial:S


# instance fields
.field private crc:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, -0x7ffb

    sput-short v0, Lcom/winca/music/audioutil/Crc16;->polynomial:S

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    .line 15
    return-void
.end method


# virtual methods
.method public add_bits(II)V
    .locals 5
    .parameter "bitstring"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    add-int/lit8 v1, p2, -0x1

    shl-int v0, v2, v1

    .line 23
    .local v0, bitmask:I
    :cond_0
    iget-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    const v4, 0x8000

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    move v4, v2

    :goto_0
    and-int v1, p1, v0

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-eqz v1, :cond_3

    .line 24
    iget-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    .line 25
    iget-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    sget-short v4, Lcom/winca/music/audioutil/Crc16;->polynomial:S

    xor-int/2addr v1, v4

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    .line 28
    :goto_2
    ushr-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 29
    return-void

    :cond_1
    move v4, v3

    .line 23
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 27
    :cond_3
    iget-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    shl-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    goto :goto_2
.end method

.method public checksum()S
    .locals 2

    .prologue
    .line 35
    iget-short v0, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    .line 36
    .local v0, sum:S
    const/4 v1, -0x1

    iput-short v1, p0, Lcom/winca/music/audioutil/Crc16;->crc:S

    .line 37
    return v0
.end method
