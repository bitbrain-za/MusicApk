.class public final enum Lcom/winca/music/player/MusicPlayerDef$ListType;
.super Ljava/lang/Enum;
.source "MusicPlayerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/winca/music/player/MusicPlayerDef$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$ListType;

.field public static final enum TYPE_ALBUM:Lcom/winca/music/player/MusicPlayerDef$ListType;

.field public static final enum TYPE_ARTIST:Lcom/winca/music/player/MusicPlayerDef$ListType;

.field public static final enum TYPE_AUDIOS:Lcom/winca/music/player/MusicPlayerDef$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$ListType;

    const-string v1, "TYPE_AUDIOS"

    invoke-direct {v0, v1, v2}, Lcom/winca/music/player/MusicPlayerDef$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_AUDIOS:Lcom/winca/music/player/MusicPlayerDef$ListType;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$ListType;

    const-string v1, "TYPE_ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/winca/music/player/MusicPlayerDef$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_ALBUM:Lcom/winca/music/player/MusicPlayerDef$ListType;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$ListType;

    const-string v1, "TYPE_ARTIST"

    invoke-direct {v0, v1, v4}, Lcom/winca/music/player/MusicPlayerDef$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_ARTIST:Lcom/winca/music/player/MusicPlayerDef$ListType;

    .line 146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/winca/music/player/MusicPlayerDef$ListType;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_AUDIOS:Lcom/winca/music/player/MusicPlayerDef$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_ALBUM:Lcom/winca/music/player/MusicPlayerDef$ListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$ListType;->TYPE_ARTIST:Lcom/winca/music/player/MusicPlayerDef$ListType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$ListType;->ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winca/music/player/MusicPlayerDef$ListType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/winca/music/player/MusicPlayerDef$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winca/music/player/MusicPlayerDef$ListType;

    return-object v0
.end method

.method public static values()[Lcom/winca/music/player/MusicPlayerDef$ListType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/winca/music/player/MusicPlayerDef$ListType;->ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$ListType;

    array-length v1, v0

    new-array v2, v1, [Lcom/winca/music/player/MusicPlayerDef$ListType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
