.class public Lcom/winca/music/util/MusicUtil;
.super Ljava/lang/Object;
.source "MusicUtil.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# static fields
.field private static final MUSIC_ALBUM_THUMBNAIL_FOLDER:Ljava/lang/String; = "/.thumbnail/album/"

.field public static mCurrentPlayAlbum:Ljava/lang/String;

.field public static mCurrentPlayArtist:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/winca/music/util/MusicUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/winca/music/util/MusicUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/winca/music/util/MusicUtil;->sFormatter:Ljava/util/Formatter;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/winca/music/util/MusicUtil;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static initialInherentImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "imagePath"

    .prologue
    .line 84
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    const/4 v5, 0x1

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 93
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 94
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 42
    .line 43
    cmp-long v2, p1, v7

    if-gez v2, :cond_0

    const v2, 0x7f070008

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/winca/music/util/MusicUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    sget-object v1, Lcom/winca/music/util/MusicUtil;->sTimeArgs:[Ljava/lang/Object;

    .line 51
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 52
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 57
    sget-object v2, Lcom/winca/music/util/MusicUtil;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 44
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const v2, 0x7f070009

    goto :goto_0
.end method
