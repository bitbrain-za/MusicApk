.class public Lcom/winca/music/mediautil/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# static fields
.field private static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private sFormatBuilder:Ljava/lang/StringBuilder;

.field private sFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/winca/music/mediautil/MediaUtil;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "MediaUtil"

    iput-object v0, p0, Lcom/winca/music/mediautil/MediaUtil;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/winca/music/mediautil/MediaUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 25
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/winca/music/mediautil/MediaUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/winca/music/mediautil/MediaUtil;->sFormatter:Ljava/util/Formatter;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/music/mediautil/MediaUtil;->mContext:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/winca/music/mediautil/MediaUtil;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getMusicDuration(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, time:I
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, f:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 165
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 166
    .local v0, b:I
    new-instance v1, Lcom/winca/music/audioutil/Bitstream;

    invoke-direct {v1, v4}, Lcom/winca/music/audioutil/Bitstream;-><init>(Ljava/io/InputStream;)V

    .line 167
    .local v1, bt:Lcom/winca/music/audioutil/Bitstream;
    invoke-virtual {v1}, Lcom/winca/music/audioutil/Bitstream;->readFrame()Lcom/winca/music/audioutil/Header;

    move-result-object v5

    .line 169
    .local v5, h:Lcom/winca/music/audioutil/Header;
    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {v5, v0}, Lcom/winca/music/audioutil/Header;->total_ms(I)F

    move-result v7

    float-to-int v6, v7

    .line 173
    :cond_0
    invoke-virtual {v1}, Lcom/winca/music/audioutil/Bitstream;->close()V

    .line 174
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    .line 181
    .end local v0           #b:I
    .end local v1           #bt:Lcom/winca/music/audioutil/Bitstream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #h:Lcom/winca/music/audioutil/Header;
    :goto_0
    return v7

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MediaUtil"

    const-string v8, "Error in getMusicDuration()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getVideoDuration(Ljava/lang/String;)J
    .locals 6
    .parameter "path"

    .prologue
    .line 239
    const-wide/16 v2, 0x0

    .line 240
    .local v2, time:J
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 242
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 244
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v2, v4

    .line 245
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 246
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-wide v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MediaUtil"

    const-string v5, "Error in getVideDuration"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public codeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "fileName"

    .prologue
    const/4 v8, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, code:Ljava/lang/String;
    const/4 v5, 0x0

    .line 119
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 121
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 155
    :goto_0
    return-object v8

    .line 127
    :cond_0
    const/4 v7, 0x0

    .line 130
    .local v7, p:I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    add-int v7, v9, v10

    .line 133
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 134
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    sparse-switch v7, :sswitch_data_0

    .line 152
    const-string v2, "GBK"

    :goto_1
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v8, v2

    .line 155
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/IOException;
    :goto_2
    const-string v9, "MediaUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Eorr in codeString:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :sswitch_0
    const-string v2, "UTF-8"

    .line 144
    goto :goto_1

    .line 146
    :sswitch_1
    const-string v2, "Unicode"

    .line 147
    goto :goto_1

    .line 149
    :sswitch_2
    const-string v2, "UTF-16BE"

    .line 150
    goto :goto_1

    .line 135
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0xefbb -> :sswitch_0
        0xfeff -> :sswitch_2
        0xfffe -> :sswitch_1
    .end sparse-switch
.end method

.method public getVideoDuratonStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "videoPath"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/winca/music/mediautil/MediaUtil;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 188
    cmp-long v2, p2, v7

    if-gez v2, :cond_0

    .line 190
    const-string v0, "%2$d:%5$02d"

    .line 197
    .local v0, durationformat:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/winca/music/mediautil/MediaUtil;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    sget-object v1, Lcom/winca/music/mediautil/MediaUtil;->sTimeArgs:[Ljava/lang/Object;

    .line 199
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 200
    const/4 v2, 0x1

    div-long v3, p2, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    const/4 v2, 0x2

    div-long v3, p2, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 202
    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 203
    const/4 v2, 0x4

    rem-long v3, p2, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 205
    iget-object v2, p0, Lcom/winca/music/mediautil/MediaUtil;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 194
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_0
    const-string v0, "%1$d:%3$02d:%5$02d"

    .restart local v0       #durationformat:Ljava/lang/String;
    goto :goto_0
.end method

.method public readAudioFile(Ljava/lang/String;)Lcom/winca/music/mediautil/AudioEntity;
    .locals 21
    .parameter "srtPath"

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v6, 0x0

    .line 109
    :goto_0
    return-object v6

    .line 38
    :cond_0
    move-object/from16 v14, p1

    .line 40
    .local v14, musicPathStr:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 43
    const/4 v6, 0x0

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    .line 47
    .local v15, size:I
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v11, fis:Ljava/io/FileInputStream;
    add-int/lit8 v18, v15, -0x80

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :try_start_1
    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    const/16 v18, 0x80

    :try_start_2
    move/from16 v0, v18

    new-array v13, v0, [B

    .line 59
    .local v13, last128:[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    .line 60
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 62
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/winca/music/mediautil/MediaUtil;->codeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, code:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v13, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 64
    .local v12, id3:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, tag:Ljava/lang/String;
    const/16 v17, 0x0

    .line 66
    .local v17, title:Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, artist:Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, album:Ljava/lang/String;
    const/4 v8, 0x0

    .line 70
    .local v8, duration:I
    const-string v18, "TAG"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 71
    const/16 v18, 0x3

    const/16 v19, 0x19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 72
    const/16 v18, 0x1a

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 73
    const/16 v18, 0x2d

    const/16 v19, 0x45

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_2
    if-eqz v17, :cond_3

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 77
    :cond_3
    const-string v17, "Unknown"

    .line 78
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    .line 79
    const/16 v18, 0x0

    const-string v19, ".mp3"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 82
    :cond_4
    const-string v18, ".mp3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 84
    const/16 v18, 0x0

    const-string v19, ".mp3"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 87
    :cond_5
    if-eqz v5, :cond_6

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 88
    :cond_6
    const-string v5, "Unknown"

    .line 90
    :cond_7
    if-eqz v4, :cond_8

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 91
    :cond_8
    const-string v4, "Unknown"

    .line 94
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/winca/music/mediautil/MediaUtil;->getMusicDuration(Ljava/lang/String;)I

    move-result v8

    .line 96
    new-instance v6, Lcom/winca/music/mediautil/AudioEntity;

    invoke-direct {v6}, Lcom/winca/music/mediautil/AudioEntity;-><init>()V

    .line 97
    .local v6, audioEntity:Lcom/winca/music/mediautil/AudioEntity;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/winca/music/mediautil/AudioEntity;->setTitle(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6, v5}, Lcom/winca/music/mediautil/AudioEntity;->setArtist(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6, v4}, Lcom/winca/music/mediautil/AudioEntity;->setAlbum(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6, v14}, Lcom/winca/music/mediautil/AudioEntity;->setData(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/winca/music/mediautil/MediaUtil;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 102
    div-int/lit16 v0, v8, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/winca/music/mediautil/MediaUtil;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/winca/music/mediautil/AudioEntity;->setDuration(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 106
    .end local v4           #album:Ljava/lang/String;
    .end local v5           #artist:Ljava/lang/String;
    .end local v6           #audioEntity:Lcom/winca/music/mediautil/AudioEntity;
    .end local v7           #code:Ljava/lang/String;
    .end local v8           #duration:I
    .end local v10           #file:Ljava/io/File;
    .end local v11           #fis:Ljava/io/FileInputStream;
    .end local v12           #id3:Ljava/lang/String;
    .end local v13           #last128:[B
    .end local v15           #size:I
    .end local v16           #tag:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 107
    .local v9, e:Ljava/lang/Exception;
    const-string v18, "MediaUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error in  MediaUtil readAudioFile"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 51
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #file:Ljava/io/File;
    .restart local v11       #fis:Ljava/io/FileInputStream;
    .restart local v15       #size:I
    :catch_1
    move-exception v9

    .line 52
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 54
    const-string v18, "MediaUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Error  readAudioFile:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
