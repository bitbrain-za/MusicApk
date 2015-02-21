.class public Lcom/winca/music/audioutil/BitstreamException;
.super Lcom/winca/music/audioutil/JavaLayerException;
.source "BitstreamException.java"

# interfaces
.implements Lcom/winca/music/audioutil/BitstreamErrors;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorcode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "errorcode"
    .parameter "t"

    .prologue
    .line 16
    invoke-static {p1}, Lcom/winca/music/audioutil/BitstreamException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/winca/music/audioutil/BitstreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput p1, p0, Lcom/winca/music/audioutil/BitstreamException;->errorcode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/winca/music/audioutil/JavaLayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    const/16 v0, 0x100

    iput v0, p0, Lcom/winca/music/audioutil/BitstreamException;->errorcode:I

    .line 13
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 2
    .parameter "errorcode"

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bitstream errorcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/winca/music/audioutil/BitstreamException;->errorcode:I

    return v0
.end method
