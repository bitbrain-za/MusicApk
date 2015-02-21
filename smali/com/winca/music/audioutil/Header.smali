.class public final Lcom/winca/music/audioutil/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final DUAL_CHANNEL:I = 0x2

.field public static final FOURTYEIGHT:I = 0x1

.field public static final FOURTYFOUR_POINT_ONE:I = 0x0

.field public static final JOINT_STEREO:I = 0x1

.field public static final MPEG1:I = 0x1

.field public static final MPEG25_LSF:I = 0x2

.field public static final MPEG2_LSF:I = 0x0

.field public static final SINGLE_CHANNEL:I = 0x3

.field public static final STEREO:I = 0x0

.field public static final THIRTYTWO:I = 0x2

.field public static final bitrate_str:[[[Ljava/lang/String;

.field public static final bitrates:[[[I

.field public static final frequencies:[[I


# instance fields
.field private _headerstring:I

.field public checksum:S

.field private crc:Lcom/winca/music/audioutil/Crc16;

.field public framesize:I

.field private h_bitrate_index:I

.field private h_copyright:Z

.field private h_intensity_stereo_bound:I

.field private h_layer:I

.field private h_mode:I

.field private h_mode_extension:I

.field private h_number_of_subbands:I

.field private h_original:Z

.field private h_padding_bit:I

.field private h_protection_bit:I

.field private h_sample_frequency:I

.field private h_vbr:Z

.field private h_vbr_bytes:I

.field private h_vbr_frames:I

.field private h_vbr_scale:I

.field private h_vbr_time_per_frame:[D

.field private h_vbr_toc:[B

.field private h_version:I

.field public nSlots:I

.field private syncmode:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7
    new-array v0, v7, [[I

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v9

    .line 8
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v8, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    .line 7
    sput-object v0, Lcom/winca/music/audioutil/Header;->frequencies:[[I

    .line 424
    new-array v0, v7, [[[I

    .line 425
    new-array v1, v7, [[I

    .line 426
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x7d00

    aput v3, v2, v5

    const v3, 0xbb80

    aput v3, v2, v6

    const v3, 0xdac0

    aput v3, v2, v7

    const v3, 0xfa00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x13880

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 427
    const v4, 0x17700

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x27100

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x2af80

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 428
    const v4, 0x2ee00

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x36b00

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x3e800

    aput v4, v2, v3

    aput-object v2, v1, v9

    .line 429
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x1f40

    aput v3, v2, v5

    const/16 v3, 0x3e80

    aput v3, v2, v6

    const/16 v3, 0x5dc0

    aput v3, v2, v7

    const/16 v3, 0x7d00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x9c40

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 430
    const v4, 0xbb80

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0xdac0

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0xfa00

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x13880

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x17700

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 431
    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x27100

    aput v4, v2, v3

    aput-object v2, v1, v5

    .line 432
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x1f40

    aput v3, v2, v5

    const/16 v3, 0x3e80

    aput v3, v2, v6

    const/16 v3, 0x5dc0

    aput v3, v2, v7

    const/16 v3, 0x7d00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x9c40

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 433
    const v4, 0xbb80

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0xdac0

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0xfa00

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x13880

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x17700

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 434
    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x27100

    aput v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    .line 436
    new-array v1, v7, [[I

    .line 437
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x7d00

    aput v3, v2, v5

    const v3, 0xfa00

    aput v3, v2, v6

    const v3, 0x17700

    aput v3, v2, v7

    const v3, 0x1f400

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x27100

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 438
    const v4, 0x2ee00

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x36b00

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x3e800

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x46500

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x4e200

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x55f00

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 439
    const v4, 0x5dc00

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x65900

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x6d600

    aput v4, v2, v3

    aput-object v2, v1, v9

    .line 440
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x7d00

    aput v3, v2, v5

    const v3, 0xbb80

    aput v3, v2, v6

    const v3, 0xdac0

    aput v3, v2, v7

    const v3, 0xfa00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x13880

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 441
    const v4, 0x17700

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x27100

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x2ee00

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x36b00

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 442
    const v4, 0x3e800

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x4e200

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x5dc00

    aput v4, v2, v3

    aput-object v2, v1, v5

    .line 443
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x7d00

    aput v3, v2, v5

    const v3, 0x9c40

    aput v3, v2, v6

    const v3, 0xbb80

    aput v3, v2, v7

    const v3, 0xdac0

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0xfa00

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 444
    const v4, 0x13880

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x17700

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x27100

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x2ee00

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 445
    const v4, 0x36b00

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x3e800

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x4e200

    aput v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 447
    new-array v1, v7, [[I

    .line 448
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x7d00

    aput v3, v2, v5

    const v3, 0xbb80

    aput v3, v2, v6

    const v3, 0xdac0

    aput v3, v2, v7

    const v3, 0xfa00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x13880

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 449
    const v4, 0x17700

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x27100

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x2af80

    aput v4, v2, v3

    const/16 v3, 0xc

    .line 450
    const v4, 0x2ee00

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x36b00

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x3e800

    aput v4, v2, v3

    aput-object v2, v1, v9

    .line 451
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x1f40

    aput v3, v2, v5

    const/16 v3, 0x3e80

    aput v3, v2, v6

    const/16 v3, 0x5dc0

    aput v3, v2, v7

    const/16 v3, 0x7d00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x9c40

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 452
    const v4, 0xbb80

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0xdac0

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0xfa00

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x13880

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x17700

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 453
    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x27100

    aput v4, v2, v3

    aput-object v2, v1, v5

    .line 454
    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x1f40

    aput v3, v2, v5

    const/16 v3, 0x3e80

    aput v3, v2, v6

    const/16 v3, 0x5dc0

    aput v3, v2, v7

    const/16 v3, 0x7d00

    aput v3, v2, v8

    const/4 v3, 0x5

    const v4, 0x9c40

    aput v4, v2, v3

    const/4 v3, 0x6

    .line 455
    const v4, 0xbb80

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0xdac0

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0xfa00

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x13880

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x17700

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x1b580

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x1f400

    aput v4, v2, v3

    const/16 v3, 0xd

    .line 456
    const v4, 0x23280

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x27100

    aput v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 424
    sput-object v0, Lcom/winca/music/audioutil/Header;->bitrates:[[[I

    .line 595
    new-array v0, v7, [[[Ljava/lang/String;

    .line 596
    new-array v1, v7, [[Ljava/lang/String;

    .line 597
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "32 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "48 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "56 kbit/s"

    aput-object v3, v2, v7

    .line 598
    const-string v3, "64 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 599
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 600
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "176 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "192 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 601
    const-string v4, "224 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "256 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    .line 602
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "8 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "16 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "24 kbit/s"

    aput-object v3, v2, v7

    .line 603
    const-string v3, "32 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "40 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "48 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "56 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 604
    const-string v4, "64 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 605
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 606
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    .line 607
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "8 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "16 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "24 kbit/s"

    aput-object v3, v2, v7

    .line 608
    const-string v3, "32 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "40 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "48 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "56 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 609
    const-string v4, "64 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 610
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 611
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    .line 613
    new-array v1, v7, [[Ljava/lang/String;

    .line 614
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "32 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "64 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "96 kbit/s"

    aput-object v3, v2, v7

    .line 615
    const-string v3, "128 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "192 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 616
    const-string v4, "224 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "256 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "288 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 617
    const-string v4, "320 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "352 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "384 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 618
    const-string v4, "416 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "448 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    .line 619
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "32 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "48 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "56 kbit/s"

    aput-object v3, v2, v7

    .line 620
    const-string v3, "64 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 621
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 622
    const-string v4, "192 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "224 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "256 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 623
    const-string v4, "320 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "384 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    .line 624
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "32 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "40 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "48 kbit/s"

    aput-object v3, v2, v7

    .line 625
    const-string v3, "56 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "64 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 626
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 627
    const-string v4, "192 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "224 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "256 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 628
    const-string v4, "320 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    .line 630
    new-array v1, v7, [[Ljava/lang/String;

    .line 631
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "32 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "48 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "56 kbit/s"

    aput-object v3, v2, v7

    .line 632
    const-string v3, "64 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 633
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 634
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "176 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "192 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 635
    const-string v4, "224 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "256 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    .line 636
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "8 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "16 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "24 kbit/s"

    aput-object v3, v2, v7

    .line 637
    const-string v3, "32 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "40 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "48 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "56 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 638
    const-string v4, "64 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 639
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 640
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    .line 641
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "free format"

    aput-object v3, v2, v9

    const-string v3, "8 kbit/s"

    aput-object v3, v2, v5

    const-string v3, "16 kbit/s"

    aput-object v3, v2, v6

    const-string v3, "24 kbit/s"

    aput-object v3, v2, v7

    .line 642
    const-string v3, "32 kbit/s"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "40 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "48 kbit/s"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "56 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 643
    const-string v4, "64 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "80 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "96 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 644
    const-string v4, "112 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "128 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "144 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 645
    const-string v4, "160 kbit/s"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "forbidden"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    .line 595
    sput-object v0, Lcom/winca/music/audioutil/Header;->bitrate_str:[[[Ljava/lang/String;

    .line 645
    return-void

    .line 7
    :array_0
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 8
    :array_1
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x11t 0x2bt 0x0t 0x0t
        0xe0t 0x2et 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_time_per_frame:[D

    .line 45
    sget-byte v0, Lcom/winca/music/audioutil/Bitstream;->INITIAL_SYNC:B

    iput-byte v0, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/audioutil/Header;->_headerstring:I

    .line 55
    return-void

    .line 38
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x78t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x92t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x92t 0x40t
    .end array-data
.end method


# virtual methods
.method public bitrate()I
    .locals 3

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    if-eqz v0, :cond_0

    .line 666
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_bytes:I

    mul-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->ms_per_frame()F

    move-result v1

    iget v2, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 668
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/winca/music/audioutil/Header;->bitrates:[[[I

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public bitrate_index()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    return v0
.end method

.method public bitrate_instant()I
    .locals 2

    .prologue
    .line 677
    sget-object v0, Lcom/winca/music/audioutil/Header;->bitrates:[[[I

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    aget v0, v0, v1

    return v0
.end method

.method public bitrate_string()Ljava/lang/String;
    .locals 2

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    if-eqz v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->bitrate()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " kb/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/winca/music/audioutil/Header;->bitrate_str:[[[Ljava/lang/String;

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public calculate_framesize()I
    .locals 8

    .prologue
    const/16 v0, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 467
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    if-ne v3, v7, :cond_1

    .line 468
    sget-object v0, Lcom/winca/music/audioutil/Header;->bitrates:[[[I

    iget v2, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    iget v2, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    aget v0, v0, v2

    mul-int/lit8 v0, v0, 0xc

    .line 469
    sget-object v2, Lcom/winca/music/audioutil/Header;->frequencies:[[I

    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    aget v2, v2, v3

    div-int/2addr v0, v2

    .line 468
    iput v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 470
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    if-eqz v0, :cond_0

    .line 471
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 472
    :cond_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 473
    iput v1, p0, Lcom/winca/music/audioutil/Header;->nSlots:I

    .line 500
    :goto_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 501
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    return v0

    .line 475
    :cond_1
    sget-object v3, Lcom/winca/music/audioutil/Header;->bitrates:[[[I

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x90

    .line 476
    sget-object v4, Lcom/winca/music/audioutil/Header;->frequencies:[[I

    iget v5, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v4, v4, v5

    iget v5, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    aget v4, v4, v5

    div-int/2addr v3, v4

    .line 475
    iput v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 477
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v3, v2, :cond_3

    .line 478
    :cond_2
    iget v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 479
    :cond_3
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    if-eqz v3, :cond_4

    .line 480
    iget v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    .line 482
    :cond_4
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    if-ne v3, v6, :cond_a

    .line 483
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v3, v7, :cond_7

    .line 484
    iget v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-ne v4, v6, :cond_5

    :goto_1
    sub-int/2addr v3, v0

    .line 487
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_protection_bit:I

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    sub-int v0, v3, v0

    .line 488
    add-int/lit8 v0, v0, -0x4

    .line 484
    iput v0, p0, Lcom/winca/music/audioutil/Header;->nSlots:I

    goto :goto_0

    :cond_5
    const/16 v0, 0x20

    goto :goto_1

    :cond_6
    move v0, v2

    .line 487
    goto :goto_2

    .line 490
    :cond_7
    iget v3, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-ne v4, v6, :cond_8

    const/16 v0, 0x9

    :cond_8
    sub-int v0, v3, v0

    .line 493
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_protection_bit:I

    if-eqz v3, :cond_9

    :goto_3
    sub-int/2addr v0, v1

    .line 494
    add-int/lit8 v0, v0, -0x4

    .line 490
    iput v0, p0, Lcom/winca/music/audioutil/Header;->nSlots:I

    goto :goto_0

    :cond_9
    move v1, v2

    .line 493
    goto :goto_3

    .line 497
    :cond_a
    iput v1, p0, Lcom/winca/music/audioutil/Header;->nSlots:I

    goto :goto_0
.end method

.method public checksum_ok()Z
    .locals 2

    .prologue
    .line 395
    iget-short v0, p0, Lcom/winca/music/audioutil/Header;->checksum:S

    iget-object v1, p0, Lcom/winca/music/audioutil/Header;->crc:Lcom/winca/music/audioutil/Crc16;

    invoke-virtual {v1}, Lcom/winca/music/audioutil/Crc16;->checksum()S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checksums()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_protection_bit:I

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyright()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_copyright:Z

    return v0
.end method

.method public frequency()I
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lcom/winca/music/audioutil/Header;->frequencies:[[I

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    aget v0, v0, v1

    return v0
.end method

.method public getSyncHeader()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/winca/music/audioutil/Header;->_headerstring:I

    return v0
.end method

.method public intensity_stereo_bound()I
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_intensity_stereo_bound:I

    return v0
.end method

.method public layer()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    return v0
.end method

.method public layer_string()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    packed-switch v0, :pswitch_data_0

    .line 591
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 585
    :pswitch_0
    const-string v0, "I"

    goto :goto_0

    .line 587
    :pswitch_1
    const-string v0, "II"

    goto :goto_0

    .line 589
    :pswitch_2
    const-string v0, "III"

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public max_number_of_frames(I)I
    .locals 2
    .parameter "streamsize"

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    if-eqz v0, :cond_0

    .line 513
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    .line 518
    :goto_0
    return v0

    .line 515
    :cond_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 516
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_1
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    div-int v0, p1, v0

    goto :goto_0
.end method

.method public min_number_of_frames(I)I
    .locals 2
    .parameter "streamsize"

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    if-eqz v0, :cond_0

    .line 531
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    .line 536
    :goto_0
    return v0

    .line 533
    :cond_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 534
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_1
    iget v0, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    sub-int/2addr v0, v1

    div-int v0, p1, v0

    goto :goto_0
.end method

.method public mode()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    return v0
.end method

.method public mode_extension()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_mode_extension:I

    return v0
.end method

.method public mode_string()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    packed-switch v0, :pswitch_data_0

    .line 729
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 721
    :pswitch_0
    const-string v0, "Stereo"

    goto :goto_0

    .line 723
    :pswitch_1
    const-string v0, "Joint stereo"

    goto :goto_0

    .line 725
    :pswitch_2
    const-string v0, "Dual channel"

    goto :goto_0

    .line 727
    :pswitch_3
    const-string v0, "Single channel"

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ms_per_frame()F
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x3

    .line 547
    iget-boolean v3, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    if-eqz v3, :cond_2

    .line 548
    iget-object v3, p0, Lcom/winca/music/audioutil/Header;->h_vbr_time_per_frame:[D

    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->layer()I

    move-result v4

    aget-wide v3, v3, v4

    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->frequency()I

    move-result v5

    int-to-double v5, v5

    div-double v1, v3, v5

    .line 549
    .local v1, tpf:D
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v3, v7, :cond_1

    .line 550
    :cond_0
    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    .line 551
    :cond_1
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v1

    double-to-float v3, v3

    .line 555
    .end local v1           #tpf:D
    :goto_0
    return v3

    .line 553
    :cond_2
    new-array v0, v5, [[F

    const/4 v3, 0x0

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    aput-object v4, v0, v3

    const/4 v3, 0x1

    .line 554
    new-array v4, v5, [F

    fill-array-data v4, :array_1

    aput-object v4, v0, v3

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    aput-object v3, v0, v7

    .line 555
    .local v0, ms_per_frame_array:[[F
    iget v3, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    aget v3, v3, v4

    goto :goto_0

    .line 553
    :array_0
    .array-data 0x4
        0xdat 0x51t 0xbt 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x40t 0x41t
    .end array-data

    .line 554
    :array_1
    .array-data 0x4
        0xc7t 0xfat 0xd0t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0x10t 0x42t
    .end array-data

    :array_2
    .array-data 0x4
        0xc7t 0xfat 0xd0t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0x10t 0x42t
    .end array-data
.end method

.method public number_of_subbands()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    return v0
.end method

.method public original()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_original:Z

    return v0
.end method

.method public padding()Z
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parseVBR([B)V
    .locals 12
    .parameter "firstframe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/high16 v11, -0x100

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 187
    const-string v6, "Xing"

    .line 188
    .local v6, xing:Ljava/lang/String;
    const/4 v7, 0x4

    new-array v4, v7, [B

    .line 189
    .local v4, tmp:[B
    const/4 v3, 0x0

    .line 191
    .local v3, offset:I
    iget v7, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v7, v9, :cond_6

    .line 192
    iget v7, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-ne v7, v8, :cond_5

    .line 193
    const/16 v3, 0x11

    .line 203
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_0
    invoke-static {p1, v3, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 207
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    .line 208
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    .line 209
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_bytes:I

    .line 210
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_scale:I

    .line 211
    const/16 v7, 0x64

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    .line 213
    const/4 v2, 0x4

    .line 215
    .local v2, length:I
    const/4 v7, 0x4

    new-array v1, v7, [B

    .line 216
    .local v1, flags:[B
    add-int v7, v3, v2

    const/4 v8, 0x0

    .line 217
    array-length v9, v1

    .line 216
    invoke-static {p1, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v7, v1

    add-int/2addr v2, v7

    .line 220
    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 221
    add-int v7, v3, v2

    const/4 v8, 0x0

    .line 222
    array-length v9, v4

    .line 221
    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v11

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    .line 224
    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    .line 225
    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 223
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    .line 226
    add-int/lit8 v2, v2, 0x4

    .line 229
    :cond_0
    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 230
    add-int v7, v3, v2

    const/4 v8, 0x0

    .line 231
    array-length v9, v4

    .line 230
    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v11

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    .line 233
    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    .line 234
    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 232
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_bytes:I

    .line 235
    add-int/lit8 v2, v2, 0x4

    .line 238
    :cond_1
    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 239
    add-int v7, v3, v2

    iget-object v8, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    const/4 v9, 0x0

    .line 240
    iget-object v10, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    array-length v10, v10

    .line 239
    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    array-length v7, v7

    add-int/2addr v2, v7

    .line 244
    :cond_2
    const/4 v7, 0x3

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    .line 245
    add-int v7, v3, v2

    const/4 v8, 0x0

    .line 246
    array-length v9, v4

    .line 245
    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v11

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    .line 248
    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    .line 249
    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 247
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_scale:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    add-int/lit8 v2, v2, 0x4

    .line 260
    .end local v1           #flags:[B
    .end local v2           #length:I
    :cond_3
    const-string v5, "VBRI"

    .line 261
    .local v5, vbri:Ljava/lang/String;
    const/16 v3, 0x20

    .line 263
    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_1
    invoke-static {p1, v3, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 267
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    .line 268
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I

    .line 269
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_bytes:I

    .line 270
    const/4 v7, -0x1

    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_scale:I

    .line 271
    const/16 v7, 0x64

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    .line 273
    const/16 v2, 0xa

    .line 274
    .restart local v2       #length:I
    const/16 v7, 0x2a

    const/4 v8, 0x0

    .line 275
    array-length v9, v4

    .line 274
    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v11

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    .line 277
    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    .line 278
    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 276
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_bytes:I

    .line 279
    add-int/lit8 v2, v2, 0x4

    .line 281
    const/16 v7, 0x2e

    const/4 v8, 0x0

    .line 282
    array-length v9, v4

    .line 281
    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    and-int/2addr v7, v11

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    .line 284
    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    .line 285
    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 283
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_vbr_frames:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    add-int/lit8 v2, v2, 0x4

    .line 295
    .end local v2           #length:I
    :cond_4
    return-void

    .line 195
    .end local v5           #vbri:Ljava/lang/String;
    :cond_5
    const/16 v3, 0x20

    .line 196
    goto/16 :goto_0

    .line 197
    :cond_6
    iget v7, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-ne v7, v8, :cond_7

    .line 198
    const/16 v3, 0x9

    goto/16 :goto_0

    .line 200
    :cond_7
    const/16 v3, 0x11

    goto/16 :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/winca/music/audioutil/BitstreamException;

    const-string v8, "XingVBRHeader Corrupted"

    invoke-direct {v7, v8, v0}, Lcom/winca/music/audioutil/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 292
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5       #vbri:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 293
    .restart local v0       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v7, Lcom/winca/music/audioutil/BitstreamException;

    const-string v8, "VBRIVBRHeader Corrupted"

    invoke-direct {v7, v8, v0}, Lcom/winca/music/audioutil/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method read_header(Lcom/winca/music/audioutil/Bitstream;[Lcom/winca/music/audioutil/Crc16;)V
    .locals 11
    .parameter "stream"
    .parameter "crcp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/winca/music/audioutil/BitstreamException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, sync:Z
    :cond_0
    iget-byte v4, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->syncHeader(B)I

    move-result v2

    .line 87
    .local v2, headerstring:I
    iput v2, p0, Lcom/winca/music/audioutil/Header;->_headerstring:I

    .line 88
    iget-byte v4, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    sget-byte v5, Lcom/winca/music/audioutil/Bitstream;->INITIAL_SYNC:B

    if-ne v4, v5, :cond_3

    .line 89
    ushr-int/lit8 v4, v2, 0x13

    and-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    .line 90
    ushr-int/lit8 v4, v2, 0x14

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 91
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-nez v4, :cond_2

    .line 92
    iput v8, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    .line 96
    :cond_1
    ushr-int/lit8 v4, v2, 0xa

    and-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    if-ne v4, v9, :cond_3

    .line 97
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(I)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v4

    throw v4

    .line 95
    :cond_2
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(I)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v4

    .line 94
    throw v4

    .line 100
    :cond_3
    ushr-int/lit8 v4, v2, 0x11

    rsub-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    .line 101
    ushr-int/lit8 v4, v2, 0x10

    and-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_protection_bit:I

    .line 102
    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    .line 103
    ushr-int/lit8 v4, v2, 0x9

    and-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_padding_bit:I

    .line 104
    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    .line 105
    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_mode_extension:I

    .line 106
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-ne v4, v6, :cond_7

    .line 107
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_mode_extension:I

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_intensity_stereo_bound:I

    .line 110
    :goto_0
    ushr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_4

    .line 111
    iput-boolean v6, p0, Lcom/winca/music/audioutil/Header;->h_copyright:Z

    .line 112
    :cond_4
    ushr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v6, :cond_5

    .line 113
    iput-boolean v6, p0, Lcom/winca/music/audioutil/Header;->h_original:Z

    .line 115
    :cond_5
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_layer:I

    if-ne v4, v6, :cond_8

    .line 116
    const/16 v4, 0x20

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    .line 136
    :goto_1
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_intensity_stereo_bound:I

    iget v5, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    if-le v4, v5, :cond_6

    .line 137
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_intensity_stereo_bound:I

    .line 139
    :cond_6
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->calculate_framesize()I

    .line 141
    iget v4, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->read_frame_data(I)I

    move-result v1

    .line 142
    .local v1, framesizeloaded:I
    iget v4, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    if-ltz v4, :cond_10

    iget v4, p0, Lcom/winca/music/audioutil/Header;->framesize:I

    if-eq v1, v4, :cond_10

    .line 145
    const/16 v4, 0x105

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->newBitstreamException(I)Lcom/winca/music/audioutil/BitstreamException;

    move-result-object v4

    throw v4

    .line 109
    .end local v1           #framesizeloaded:I
    :cond_7
    iput v7, p0, Lcom/winca/music/audioutil/Header;->h_intensity_stereo_bound:I

    goto :goto_0

    .line 118
    :cond_8
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_bitrate_index:I

    .line 120
    .local v0, channel_bitrate:I
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_mode:I

    if-eq v4, v9, :cond_9

    .line 121
    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    .line 122
    const/4 v0, 0x1

    .line 125
    :cond_9
    :goto_2
    if-eq v0, v6, :cond_a

    if-ne v0, v8, :cond_d

    .line 126
    :cond_a
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    if-ne v4, v8, :cond_c

    .line 127
    const/16 v4, 0xc

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    goto :goto_1

    .line 124
    :cond_b
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    .line 129
    :cond_c
    const/16 v4, 0x8

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    goto :goto_1

    .line 130
    :cond_d
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    if-eq v4, v6, :cond_e

    .line 131
    if-lt v0, v9, :cond_f

    const/4 v4, 0x5

    if-gt v0, v4, :cond_f

    .line 132
    :cond_e
    const/16 v4, 0x1b

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    goto :goto_1

    .line 134
    :cond_f
    const/16 v4, 0x1e

    iput v4, p0, Lcom/winca/music/audioutil/Header;->h_number_of_subbands:I

    goto :goto_1

    .line 147
    .end local v0           #channel_bitrate:I
    .restart local v1       #framesizeloaded:I
    :cond_10
    iget-byte v4, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->isSyncCurrentPosition(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 148
    iget-byte v4, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    sget-byte v5, Lcom/winca/music/audioutil/Bitstream;->INITIAL_SYNC:B

    if-ne v4, v5, :cond_11

    .line 149
    sget-byte v4, Lcom/winca/music/audioutil/Bitstream;->STRICT_SYNC:B

    iput-byte v4, p0, Lcom/winca/music/audioutil/Header;->syncmode:B

    .line 150
    const v4, -0x7f340

    and-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/winca/music/audioutil/Bitstream;->set_syncword(I)V

    .line 152
    :cond_11
    const/4 v3, 0x1

    .line 156
    :goto_3
    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/winca/music/audioutil/Bitstream;->parse_frame()V

    .line 158
    iget v4, p0, Lcom/winca/music/audioutil/Header;->h_protection_bit:I

    if-nez v4, :cond_14

    .line 160
    invoke-virtual {p1, v10}, Lcom/winca/music/audioutil/Bitstream;->get_bits(I)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lcom/winca/music/audioutil/Header;->checksum:S

    .line 161
    iget-object v4, p0, Lcom/winca/music/audioutil/Header;->crc:Lcom/winca/music/audioutil/Crc16;

    if-nez v4, :cond_12

    .line 162
    new-instance v4, Lcom/winca/music/audioutil/Crc16;

    invoke-direct {v4}, Lcom/winca/music/audioutil/Crc16;-><init>()V

    iput-object v4, p0, Lcom/winca/music/audioutil/Header;->crc:Lcom/winca/music/audioutil/Crc16;

    .line 163
    :cond_12
    iget-object v4, p0, Lcom/winca/music/audioutil/Header;->crc:Lcom/winca/music/audioutil/Crc16;

    invoke-virtual {v4, v2, v10}, Lcom/winca/music/audioutil/Crc16;->add_bits(II)V

    .line 164
    iget-object v4, p0, Lcom/winca/music/audioutil/Header;->crc:Lcom/winca/music/audioutil/Crc16;

    aput-object v4, p2, v7

    .line 177
    :goto_4
    return-void

    .line 154
    :cond_13
    invoke-virtual {p1}, Lcom/winca/music/audioutil/Bitstream;->unreadFrame()V

    goto :goto_3

    .line 166
    :cond_14
    const/4 v4, 0x0

    aput-object v4, p2, v7

    goto :goto_4
.end method

.method public sample_frequency()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    return v0
.end method

.method public sample_frequency_string()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 686
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_sample_frequency:I

    packed-switch v0, :pswitch_data_0

    .line 712
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 688
    :pswitch_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v0, v1, :cond_0

    .line 689
    const-string v0, "32 kHz"

    goto :goto_0

    .line 690
    :cond_0
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-nez v0, :cond_1

    .line 691
    const-string v0, "16 kHz"

    goto :goto_0

    .line 694
    :cond_1
    const-string v0, "8 kHz"

    goto :goto_0

    .line 696
    :pswitch_1
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v0, v1, :cond_2

    .line 697
    const-string v0, "44.1 kHz"

    goto :goto_0

    .line 698
    :cond_2
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-nez v0, :cond_3

    .line 699
    const-string v0, "22.05 kHz"

    goto :goto_0

    .line 702
    :cond_3
    const-string v0, "11.025 kHz"

    goto :goto_0

    .line 704
    :pswitch_2
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-ne v0, v1, :cond_4

    .line 705
    const-string v0, "48 kHz"

    goto :goto_0

    .line 706
    :cond_4
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    if-nez v0, :cond_5

    .line 707
    const-string v0, "24 kHz"

    goto :goto_0

    .line 710
    :cond_5
    const-string v0, "12 kHz"

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public slots()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/winca/music/audioutil/Header;->nSlots:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 59
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "Layer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->layer_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v2, " frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->mode_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->version_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->checksums()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const-string v2, " no"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    const-string v2, " checksums"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->sample_frequency_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->bitrate_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, s:Ljava/lang/String;
    return-object v1
.end method

.method public total_ms(I)F
    .locals 2
    .parameter "streamsize"

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/winca/music/audioutil/Header;->max_number_of_frames(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/winca/music/audioutil/Header;->ms_per_frame()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public vbr()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr:Z

    return v0
.end method

.method public vbr_scale()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_scale:I

    return v0
.end method

.method public vbr_toc()[B
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/winca/music/audioutil/Header;->h_vbr_toc:[B

    return-object v0
.end method

.method public version()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    return v0
.end method

.method public version_string()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/winca/music/audioutil/Header;->h_version:I

    packed-switch v0, :pswitch_data_0

    .line 746
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 740
    :pswitch_0
    const-string v0, "MPEG-1"

    goto :goto_0

    .line 742
    :pswitch_1
    const-string v0, "MPEG-2 LSF"

    goto :goto_0

    .line 744
    :pswitch_2
    const-string v0, "MPEG-2.5 LSF"

    goto :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
