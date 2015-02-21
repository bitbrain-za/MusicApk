.class public Lcom/winca/music/player/MusicPlayerDef$PlayMode;
.super Ljava/lang/Object;
.source "MusicPlayerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayMode"
.end annotation


# static fields
.field public static final MODE_FIRST:I = 0x0

.field public static final MODE_LAST:I = 0x3

.field public static final MODE_RANDMON:I = 0x0

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_LIST:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
