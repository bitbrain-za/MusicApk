.class public final Lcom/winca/music/audioutil/Bitstream;
.super Ljava/lang/Object;
.source "Bitstream.java"

# interfaces
.implements Lcom/winca/music/audioutil/BitstreamErrors;


# static fields
.field private static final BUFFER_INT_SIZE:I = 0x1b1

.field static INITIAL_SYNC:B

.field static STRICT_SYNC:B


# instance fields
.field private bitindex:I

.field private final bitmask:[I

.field private crc:[Lcom/winca/music/audioutil/Crc16;

.field private firstframe:Z

.field private frame_bytes:[B

.field private final framebuffer:[I

.field private framesize:I

.field private final header:Lcom/winca/music/audioutil/Header;

.field private header_pos:I

.field private rawid3v2:[B

.field private single_ch_mode:Z

.field private final source:Ljava/io/PushbackInputStream;

.field private final syncbuf:[B

.field private syncword:I

.field private wordpointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-byte v0, Lcom/winca/music/audioutil/Bitstream;->INITIAL_SYNC:B

    .line 19
    const/4 v0, 0x1

    sput-byte v0, Lcom/winca/music/audioutil/Bitstream;->STRICT_SYNC:B

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .parameter "in"

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v1, 0x1b1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->framebuffer:[I

    .line 40
    const/16 v1, 0x6c4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->frame_bytes:[B

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/winca/music/audioutil/Bitstream;->header_pos:I

    .line 69
    const/16 v1, 0x12

    new-array v1, v1, [I

    .line 71
    aput v4, v1, v4

    const/4 v2, 0x2

    aput v3, v1, v2

    aput v6, v1, v3

    aput v7, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0x1f

    aput v3, v1, v2

    const/4 v2, 0x6

    .line 72
    const/16 v3, 0x3f

    aput v3, v1, v2

    const/16 v2, 0x7f

    aput v2, v1, v6

    const/16 v2, 0x8

    const/16 v3, 0xff

    aput v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x1ff

    aput v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x3ff

    aput v3, v1, v2

    const/16 v2, 0xb

    .line 73
    const/16 v3, 0x7ff

    aput v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xfff

    aput v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x1fff

    aput v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x3fff

    aput v3, v1, v2

    const/16 v2, 0x7fff

    aput v2, v1, v7

    const/16 v2, 0x10

    .line 74
    const v3, 0xffff

    aput v3, v1, v2

    const/16 v2, 0x11

    const v3, 0x1ffff

    aput v3, v1, v2

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->bitmask:[I

    .line 78
    new-instance v1, Lcom/winca/music/audioutil/Header;

    invoke-direct {v1}, Lcom/winca/music/audioutil/Header;-><init>()V

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->header:Lcom/winca/music/audioutil/Header;

    .line 80
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    .line 82
    new-array v1, v4, [Lcom/winca/music/audioutil/Crc16;

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->crc:[Lcom/winca/music/audioutil/Crc16;

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    .line 86
    iput-boolean v4, p0, Lcom/winca/music/audioutil/Bitstream;->firstframe:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "in"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 98
    .end local p1
    .local v0, in:Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/winca/music/audioutil/Bitstream;->loadID3v2(Ljava/io/InputStream;)V

    .line 99
    iput-boolean v4, p0, Lcom/winca/music/audioutil/Bitstream;->firstframe:Z

    .line 101
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x6c4

    invoke-direct {v1, v0, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    .line 103
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Bitstream;->closeFrame()V

    .line 106
    return-void
.end method

.method private loadID3v2(Ljava/io/InputStream;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 125
    const/4 v0, -0x1

    .line 128
    .local v0, size:I
    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 129
    invoke-direct {p0, p1}, Lcom/winca/music/audioutil/Bitstream;->readID3v2Header(Ljava/io/InputStream;)I

    move-result v0

    .line 130
    iput v0, p0, Lcom/winca/music/audioutil/Bitstream;->header_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 141
    :goto_0
    if-lez v0, :cond_0

    .line 142
    :try_start_2
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    .line 143
    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    array-length v3, v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 147
    :cond_0
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 135
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    .line 135
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    :goto_2
    throw v1

    .line 136
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_0

    .line 145
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private nextFrame()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/winca/music/audioutil/Bitstream;->header:Lcom/winca/music/audioutil/Header;

    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->crc:[Lcom/winca/music/audioutil/Crc16;

    invoke-virtual {v0, p0, v1}, Lcom/winca/music/audioutil/Header;->read_header(Lcom/winca/music/audioutil/Bitstream;[Lcom/winca/music/audioutil/Crc16;)V

    .line 259
    return-void
.end method

.method private readBytes([BII)I
    .locals 4
    .parameter "b"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v2, 0x0

    .line 550
    .local v2, totalBytesRead:I
    :goto_0
    if-gtz p3, :cond_1

    .line 562
    :cond_0
    return v2

    .line 551
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 552
    .local v0, bytesread:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 555
    add-int/2addr v2, v0

    .line 556
    add-int/2addr p2, v0

    .line 557
    sub-int/2addr p3, v0

    goto :goto_0

    .line 559
    .end local v0           #bytesread:I
    :catch_0
    move-exception v1

    .line 560
    .local v1, ex:Ljava/io/IOException;
    const/16 v3, 0x102

    invoke-virtual {p0, v3, v1}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v3

    throw v3
.end method

.method private readFully([BII)I
    .locals 6
    .parameter "b"
    .parameter "offs"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v3, 0x0

    .line 523
    .local v3, nRead:I
    :goto_0
    if-gtz p3, :cond_0

    .line 540
    :goto_1
    return v3

    .line 524
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    .line 525
    .local v0, bytesread:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    move v2, p3

    .end local p3
    .local v2, len:I
    move v4, p2

    .line 526
    .end local p2
    .local v4, offs:I
    :goto_2
    add-int/lit8 p3, v2, -0x1

    .end local v2           #len:I
    .restart local p3
    if-gtz v2, :cond_1

    move p2, v4

    .line 529
    .end local v4           #offs:I
    .restart local p2
    goto :goto_1

    .line 527
    .end local p2
    .restart local v4       #offs:I
    :cond_1
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offs:I
    .restart local p2
    const/4 v5, 0x0

    aput-byte v5, p1, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, p3

    .end local p3
    .restart local v2       #len:I
    move v4, p2

    .end local p2
    .restart local v4       #offs:I
    goto :goto_2

    .line 533
    .end local v2           #len:I
    .end local v4           #offs:I
    .restart local p2
    .restart local p3
    :cond_2
    add-int/2addr v3, v0

    .line 534
    add-int/2addr p2, v0

    .line 535
    sub-int/2addr p3, v0

    goto :goto_0

    .line 537
    .end local v0           #bytesread:I
    :catch_0
    move-exception v1

    .line 538
    .local v1, ex:Ljava/io/IOException;
    const/16 v5, 0x102

    invoke-virtual {p0, v5, v1}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v5

    throw v5
.end method

.method private readID3v2Header(Ljava/io/InputStream;)I
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 159
    new-array v0, v8, [B

    .line 160
    .local v0, id3header:[B
    const/16 v1, -0xa

    .line 161
    .local v1, size:I
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 163
    aget-byte v2, v0, v4

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v6

    const/16 v3, 0x44

    if-ne v2, v3, :cond_0

    .line 164
    aget-byte v2, v0, v7

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 165
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 168
    invoke-virtual {p1, v0, v4, v8}, Ljava/io/InputStream;->read([BII)I

    .line 169
    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x15

    aget-byte v3, v0, v6

    shl-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    .line 170
    aget-byte v3, v0, v7

    shl-int/lit8 v3, v3, 0x7

    .line 169
    add-int/2addr v2, v3

    .line 170
    aget-byte v3, v0, v5

    .line 169
    add-int v1, v2, v3

    .line 172
    :cond_0
    add-int/lit8 v2, v1, 0xa

    return v2
.end method

.method private readNextFrame()Lcom/winca/music/audioutil/Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/winca/music/audioutil/Bitstream;->nextFrame()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/winca/music/audioutil/Bitstream;->header:Lcom/winca/music/audioutil/Header;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/io/IOException;
    const/16 v1, 0x102

    invoke-virtual {p0, v1, v0}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v1

    throw v1
.end method

.method public closeFrame()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    .line 282
    iput v0, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    .line 283
    iput v0, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    .line 284
    return-void
.end method

.method public getRawID3v2()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    if-nez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->rawid3v2:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .local v0, bain:Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method

.method public get_bits(I)I
    .locals 11
    .parameter "number_of_bits"

    .prologue
    const v10, 0xffff

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/high16 v7, -0x1

    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, returnvalue:I
    iget v5, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    add-int v4, v5, p1

    .line 461
    .local v4, sum:I
    iget v5, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    if-gez v5, :cond_0

    .line 462
    iput v8, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    .line 465
    :cond_0
    if-gt v4, v9, :cond_2

    .line 467
    iget-object v5, p0, Lcom/winca/music/audioutil/Bitstream;->framebuffer:[I

    iget v6, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    aget v5, v5, v6

    rsub-int/lit8 v6, v4, 0x20

    ushr-int/2addr v5, v6

    .line 468
    iget-object v6, p0, Lcom/winca/music/audioutil/Bitstream;->bitmask:[I

    aget v6, v6, p1

    .line 467
    and-int v2, v5, v6

    .line 471
    iget v5, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    if-ne v5, v9, :cond_1

    .line 472
    iput v8, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    .line 473
    iget v5, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    :cond_1
    move v3, v2

    .line 492
    .end local v2           #returnvalue:I
    .local v3, returnvalue:I
    :goto_0
    return v3

    .line 482
    .end local v3           #returnvalue:I
    .restart local v2       #returnvalue:I
    :cond_2
    iget-object v5, p0, Lcom/winca/music/audioutil/Bitstream;->framebuffer:[I

    iget v6, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    aget v5, v5, v6

    and-int v1, v5, v10

    .line 483
    .local v1, Right:I
    iget v5, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    .line 484
    iget-object v5, p0, Lcom/winca/music/audioutil/Bitstream;->framebuffer:[I

    iget v6, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    aget v5, v5, v6

    and-int v0, v5, v7

    .line 485
    .local v0, Left:I
    shl-int/lit8 v5, v1, 0x10

    and-int/2addr v5, v7

    .line 486
    ushr-int/lit8 v6, v0, 0x10

    and-int/2addr v6, v10

    .line 485
    or-int v2, v5, v6

    .line 488
    rsub-int/lit8 v5, v4, 0x30

    ushr-int/2addr v2, v5

    .line 490
    iget-object v5, p0, Lcom/winca/music/audioutil/Bitstream;->bitmask:[I

    aget v5, v5, p1

    and-int/2addr v2, v5

    .line 491
    add-int/lit8 v5, v4, -0x20

    iput v5, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    move v3, v2

    .line 492
    .end local v2           #returnvalue:I
    .restart local v3       #returnvalue:I
    goto :goto_0
.end method

.method public header_pos()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/winca/music/audioutil/Bitstream;->header_pos:I

    return v0
.end method

.method public isSyncCurrentPosition(I)Z
    .locals 6
    .parameter "syncmode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v4, 0x4

    invoke-direct {p0, v3, v5, v4}, Lcom/winca/music/audioutil/Bitstream;->readBytes([BII)I

    move-result v1

    .line 292
    .local v1, read:I
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x100

    and-int/2addr v3, v4

    .line 293
    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff

    and-int/2addr v4, v5

    .line 292
    or-int/2addr v3, v4

    .line 294
    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    .line 292
    or-int/2addr v3, v4

    .line 295
    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v4, v4, 0xff

    .line 292
    or-int v0, v3, v4

    .line 298
    .local v0, headerstring:I
    :try_start_0
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const/4 v2, 0x0

    .line 303
    .local v2, sync:Z
    sparse-switch v1, :sswitch_data_0

    .line 312
    :goto_1
    return v2

    .line 305
    :sswitch_0
    const/4 v2, 0x1

    .line 306
    goto :goto_1

    .line 308
    :sswitch_1
    iget v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncword:I

    invoke-virtual {p0, v0, p1, v3}, Lcom/winca/music/audioutil/Bitstream;->isSyncMark(III)Z

    move-result v2

    goto :goto_1

    .line 299
    .end local v2           #sync:Z
    :catch_0
    move-exception v3

    goto :goto_0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public isSyncMark(III)Z
    .locals 5
    .parameter "headerstring"
    .parameter "syncmode"
    .parameter "word"

    .prologue
    const/high16 v4, -0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, sync:Z
    sget-byte v3, Lcom/winca/music/audioutil/Bitstream;->INITIAL_SYNC:B

    if-ne p2, v3, :cond_4

    .line 378
    and-int v3, p1, v4

    if-ne v3, v4, :cond_3

    move v0, v1

    .line 385
    :goto_0
    if-eqz v0, :cond_0

    .line 386
    ushr-int/lit8 v3, p1, 0xa

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    move v0, v1

    .line 388
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 389
    ushr-int/lit8 v3, p1, 0x11

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_8

    move v0, v1

    .line 391
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 392
    ushr-int/lit8 v3, p1, 0x13

    and-int/lit8 v3, v3, 0x3

    if-eq v3, v1, :cond_9

    move v0, v1

    .line 394
    :cond_2
    :goto_3
    return v0

    :cond_3
    move v0, v2

    .line 378
    goto :goto_0

    .line 380
    :cond_4
    const v3, -0x7f400

    and-int/2addr v3, p1

    if-ne v3, p3, :cond_6

    .line 381
    and-int/lit16 v3, p1, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_4
    iget-boolean v4, p0, Lcom/winca/music/audioutil/Bitstream;->single_ch_mode:Z

    if-ne v3, v4, :cond_6

    move v0, v1

    .line 380
    :goto_5
    goto :goto_0

    :cond_5
    move v3, v2

    .line 381
    goto :goto_4

    :cond_6
    move v0, v2

    .line 380
    goto :goto_5

    :cond_7
    move v0, v2

    .line 386
    goto :goto_1

    :cond_8
    move v0, v2

    .line 389
    goto :goto_2

    :cond_9
    move v0, v2

    .line 392
    goto :goto_3
.end method

.method protected newBitstreamException(I)Lcom/winca/music/audioutil/BitstreamException;
    .locals 2
    .parameter "errorcode"

    .prologue
    .line 328
    new-instance v0, Lcom/winca/music/audioutil/BitstreamException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/winca/music/audioutil/BitstreamException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method protected newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;
    .locals 1
    .parameter "errorcode"
    .parameter "throwable"

    .prologue
    .line 333
    new-instance v0, Lcom/winca/music/audioutil/BitstreamException;

    invoke-direct {v0, p1, p2}, Lcom/winca/music/audioutil/BitstreamException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method parse_frame()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, b:I
    iget-object v6, p0, Lcom/winca/music/audioutil/Bitstream;->frame_bytes:[B

    .line 417
    .local v6, byteread:[B
    iget v7, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    .line 430
    .local v7, bytesize:I
    const/4 v8, 0x0

    .local v8, k:I
    move v1, v0

    .end local v0           #b:I
    .local v1, b:I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 447
    iput v13, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    .line 448
    iput v13, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    .line 449
    return-void

    .line 432
    :cond_0
    const/4 v2, 0x0

    .line 433
    .local v2, b0:B
    const/4 v3, 0x0

    .line 434
    .local v3, b1:B
    const/4 v4, 0x0

    .line 435
    .local v4, b2:B
    const/4 v5, 0x0

    .line 436
    .local v5, b3:B
    aget-byte v2, v6, v8

    .line 437
    add-int/lit8 v9, v8, 0x1

    if-ge v9, v7, :cond_1

    .line 438
    add-int/lit8 v9, v8, 0x1

    aget-byte v3, v6, v9

    .line 439
    :cond_1
    add-int/lit8 v9, v8, 0x2

    if-ge v9, v7, :cond_2

    .line 440
    add-int/lit8 v9, v8, 0x2

    aget-byte v4, v6, v9

    .line 441
    :cond_2
    add-int/lit8 v9, v8, 0x3

    if-ge v9, v7, :cond_3

    .line 442
    add-int/lit8 v9, v8, 0x3

    aget-byte v5, v6, v9

    .line 443
    :cond_3
    iget-object v9, p0, Lcom/winca/music/audioutil/Bitstream;->framebuffer:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #b:I
    .restart local v0       #b:I
    shl-int/lit8 v10, v2, 0x18

    const/high16 v11, -0x100

    and-int/2addr v10, v11

    .line 444
    shl-int/lit8 v11, v3, 0x10

    const/high16 v12, 0xff

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    shl-int/lit8 v11, v4, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 445
    and-int/lit16 v11, v5, 0xff

    or-int/2addr v10, v11

    .line 443
    aput v10, v9, v1

    .line 430
    add-int/lit8 v8, v8, 0x4

    move v1, v0

    .end local v0           #b:I
    .restart local v1       #b:I
    goto :goto_0
.end method

.method public readBits(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/winca/music/audioutil/Bitstream;->get_bits(I)I

    move-result v0

    return v0
.end method

.method public readCheckedBits(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/winca/music/audioutil/Bitstream;->get_bits(I)I

    move-result v0

    return v0
.end method

.method public readFrame()Lcom/winca/music/audioutil/Header;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x104

    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, result:Lcom/winca/music/audioutil/Header;
    :try_start_0
    invoke-direct {p0}, Lcom/winca/music/audioutil/Bitstream;->readNextFrame()Lcom/winca/music/audioutil/Header;

    move-result-object v2

    .line 213
    iget-boolean v3, p0, Lcom/winca/music/audioutil/Bitstream;->firstframe:Z

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->frame_bytes:[B

    invoke-virtual {v2, v3}, Lcom/winca/music/audioutil/Header;->parseVBR([B)V

    .line 215
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/winca/music/audioutil/Bitstream;->firstframe:Z
    :try_end_0
    .catch Lcom/winca/music/audioutil/BitstreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-object v2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, ex:Lcom/winca/music/audioutil/BitstreamException;
    invoke-virtual {v1}, Lcom/winca/music/audioutil/BitstreamException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x105

    if-ne v3, v4, :cond_1

    .line 222
    :try_start_1
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Bitstream;->closeFrame()V

    .line 223
    invoke-direct {p0}, Lcom/winca/music/audioutil/Bitstream;->readNextFrame()Lcom/winca/music/audioutil/Header;
    :try_end_1
    .catch Lcom/winca/music/audioutil/BitstreamException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, e:Lcom/winca/music/audioutil/BitstreamException;
    invoke-virtual {v0}, Lcom/winca/music/audioutil/BitstreamException;->getErrorCode()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/winca/music/audioutil/BitstreamException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v3

    throw v3

    .line 230
    .end local v0           #e:Lcom/winca/music/audioutil/BitstreamException;
    :cond_1
    invoke-virtual {v1}, Lcom/winca/music/audioutil/BitstreamException;->getErrorCode()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 232
    invoke-virtual {v1}, Lcom/winca/music/audioutil/BitstreamException;->getErrorCode()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v3

    throw v3
.end method

.method read_frame_data(I)I
    .locals 4
    .parameter "bytesize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, numread:I
    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->frame_bytes:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/winca/music/audioutil/Bitstream;->readFully([BII)I

    move-result v0

    .line 404
    iput p1, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    .line 405
    iput v3, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    .line 406
    iput v3, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    .line 407
    return v0
.end method

.method set_syncword(I)V
    .locals 2
    .parameter "syncword0"

    .prologue
    .line 499
    and-int/lit16 v0, p1, -0xc1

    iput v0, p0, Lcom/winca/music/audioutil/Bitstream;->syncword:I

    .line 500
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/winca/music/audioutil/Bitstream;->single_ch_mode:Z

    .line 501
    return-void

    .line 500
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method syncHeader(B)I
    .locals 10
    .parameter "syncmode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x104

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 346
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    invoke-direct {p0, v3, v4, v6}, Lcom/winca/music/audioutil/Bitstream;->readBytes([BII)I

    move-result v0

    .line 348
    .local v0, bytesRead:I
    if-eq v0, v6, :cond_0

    .line 349
    invoke-virtual {p0, v8, v9}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v3

    throw v3

    .line 351
    :cond_0
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    .line 352
    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    .line 351
    or-int/2addr v3, v4

    .line 353
    iget-object v4, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v4, v4, 0xff

    .line 351
    or-int v1, v3, v4

    .line 356
    .local v1, headerstring:I
    :cond_1
    shl-int/lit8 v1, v1, 0x8

    .line 358
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    invoke-direct {p0, v3, v6, v7}, Lcom/winca/music/audioutil/Bitstream;->readBytes([BII)I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 359
    invoke-virtual {p0, v8, v9}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(ILjava/lang/Throwable;)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v3

    throw v3

    .line 361
    :cond_2
    iget-object v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncbuf:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 363
    iget v3, p0, Lcom/winca/music/audioutil/Bitstream;->syncword:I

    invoke-virtual {p0, v1, p1, v3}, Lcom/winca/music/audioutil/Bitstream;->isSyncMark(III)Z

    move-result v2

    .line 364
    .local v2, sync:Z
    if-eqz v2, :cond_1

    .line 370
    return v1
.end method

.method public unreadFrame()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 268
    iget v1, p0, Lcom/winca/music/audioutil/Bitstream;->wordpointer:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/winca/music/audioutil/Bitstream;->bitindex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    if-lez v1, :cond_0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/winca/music/audioutil/Bitstream;->source:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lcom/winca/music/audioutil/Bitstream;->frame_bytes:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/winca/music/audioutil/Bitstream;->framesize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/io/IOException;
    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(I)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v1

    throw v1
.end method
