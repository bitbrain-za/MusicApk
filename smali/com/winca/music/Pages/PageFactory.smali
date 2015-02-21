.class public Lcom/winca/music/Pages/PageFactory;
.super Ljava/lang/Object;
.source "PageFactory.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# static fields
.field private static synthetic $SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum()[I
    .locals 3

    .prologue
    .line 8
    sget-object v0, Lcom/winca/music/Pages/PageFactory;->$SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->values()[Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_ALBUMN_ARTIST_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_LIST:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_UNKNOW:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/winca/music/Pages/PageFactory;->$SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createView(Lcom/winca/music/MusicActivity;Lcom/winca/music/player/MusicPlayerDef$PageEnum;)Lcom/winca/music/Pages/Page;
    .locals 2
    .parameter "activity"
    .parameter "viewID"

    .prologue
    .line 12
    invoke-static {}, Lcom/winca/music/Pages/PageFactory;->$SWITCH_TABLE$com$winca$music$player$MusicPlayerDef$PageEnum()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/winca/music/Pages/PlayMusicPage;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/PlayMusicPage;-><init>(Lcom/winca/music/MusicActivity;)V

    goto :goto_0

    .line 17
    :pswitch_1
    new-instance v0, Lcom/winca/music/Pages/AritstAlbumListPage;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/AritstAlbumListPage;-><init>(Lcom/winca/music/MusicActivity;)V

    goto :goto_0

    .line 19
    :pswitch_2
    new-instance v0, Lcom/winca/music/Pages/MusicMainPage;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/MusicMainPage;-><init>(Lcom/winca/music/MusicActivity;)V

    goto :goto_0

    .line 21
    :pswitch_3
    new-instance v0, Lcom/winca/music/Pages/PlayingListPage;

    invoke-direct {v0, p0}, Lcom/winca/music/Pages/PlayingListPage;-><init>(Lcom/winca/music/MusicActivity;)V

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
