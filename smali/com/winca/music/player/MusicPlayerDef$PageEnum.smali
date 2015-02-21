.class public final enum Lcom/winca/music/player/MusicPlayerDef$PageEnum;
.super Ljava/lang/Enum;
.source "MusicPlayerDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPlayerDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/winca/music/player/MusicPlayerDef$PageEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field public static final enum PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field public static final enum PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field public static final enum PAGE_PLAYING_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field public static final enum PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

.field public static final enum PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    const-string v1, "PAGE_UNKNOW"

    invoke-direct {v0, v1, v2}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    const-string v1, "PAGE_MAIN_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    const-string v1, "PAGE_PLAYING_MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    const-string v1, "PAGE_ALBUMN_ARTIST_LIST"

    invoke-direct {v0, v1, v5}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    new-instance v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    const-string v1, "PAGE_PLAYING_LIST"

    invoke-direct {v0, v1, v6}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    return-object v0
.end method

.method public static values()[Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ENUM$VALUES:[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
