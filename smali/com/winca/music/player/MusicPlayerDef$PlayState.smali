.class public Lcom/winca/music/player/MusicPlayerDef$PlayState;
.super Ljava/lang/Object;
.source "MusicPlayerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayState"
.end annotation


# static fields
.field public static final PLAY_STATE_PLAY:I = 0x0

.field public static final PLAY_STATE_PUASE:I = 0x1

.field public static final PLAY_STATE_STOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
