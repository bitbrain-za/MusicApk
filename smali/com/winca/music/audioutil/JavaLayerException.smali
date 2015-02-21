.class public Lcom/winca/music/audioutil/JavaLayerException;
.super Ljava/lang/Exception;
.source "JavaLayerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/winca/music/audioutil/JavaLayerException;->exception:Ljava/lang/Throwable;

    .line 23
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/winca/music/audioutil/JavaLayerException;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/winca/music/audioutil/JavaLayerException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 31
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/winca/music/audioutil/JavaLayerException;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/winca/music/audioutil/JavaLayerException;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
