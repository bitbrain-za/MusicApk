.class Lcom/winca/music/Pages/AritstAlbumListPage;
.super Lcom/winca/music/Pages/Page;
.source "AritstAlbumListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/winca/music/Pages/Page;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/winca/music/player/MusicPlayerDef;"
    }
.end annotation


# static fields
.field private static listStyle:I


# instance fields
.field private albumsListView:Landroid/widget/ListView;

.field private filter:Landroid/content/IntentFilter;

.field private iconAlbum:Landroid/widget/ImageView;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;

.field private mArtist:Ljava/lang/String;

.field private mBrocastReceive:Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

.field private mListsPlay:Landroid/widget/ImageView;

.field private tvAlbumName:Landroid/widget/TextView;

.field private tvArtistName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/winca/music/Pages/AritstAlbumListPage;->listStyle:I

    return-void
.end method

.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 1
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/winca/music/Pages/Page;-><init>(Lcom/winca/music/MusicActivity;)V

    .line 31
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    .line 32
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->albumsListView:Landroid/widget/ListView;

    .line 34
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mListsPlay:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->iconAlbum:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbum:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mArtist:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mBrocastReceive:Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

    .line 42
    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->filter:Landroid/content/IntentFilter;

    .line 46
    return-void
.end method

.method public static GetListStyle()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/winca/music/Pages/AritstAlbumListPage;->listStyle:I

    return v0
.end method

.method public static SetListStyle(I)V
    .locals 0
    .parameter "Style"

    .prologue
    .line 152
    sput p0, Lcom/winca/music/Pages/AritstAlbumListPage;->listStyle:I

    .line 154
    return-void
.end method

.method private UpdateListStyle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    sget v0, Lcom/winca/music/Pages/AritstAlbumListPage;->listStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    sget v0, Lcom/winca/music/Pages/AritstAlbumListPage;->listStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/winca/music/Pages/AritstAlbumListPage;)Lcom/winca/music/adapter/AlbumsArtistListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/music/Pages/AritstAlbumListPage;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->setSelection()V

    return-void
.end method

.method private initBrocast()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;-><init>(Lcom/winca/music/Pages/AritstAlbumListPage;Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;)V

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mBrocastReceive:Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->filter:Landroid/content/IntentFilter;

    .line 82
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.winca.kkcmh.UPDATA_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mBrocastReceive:Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/winca/music/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method private initListSView()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->initWidgets()V

    .line 119
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->setAdapter()V

    .line 120
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->initBrocast()V

    .line 121
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->setListener()V

    .line 122
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v1, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 158
    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->getPlayingSongMap()Ljava/util/Map;

    move-result-object v0

    .line 159
    .local v0, playing:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v1, Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    .line 160
    const v3, 0x7f030006

    invoke-direct {v1, v2, v0, v3}, Lcom/winca/music/adapter/AlbumsArtistListAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 159
    iput-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    .line 161
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->albumsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbumsArtistListAdapter:Lcom/winca/music/adapter/AlbumsArtistListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mListsPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 98
    sget v1, Lcom/winca/music/player/MusicPlayerDataManager;->curPlayPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 99
    invoke-static {}, Lcom/winca/music/player/MusicPlayerDataManager;->getSelectionPos()I

    move-result v0

    .line 100
    .local v0, index:I
    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 102
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method private unRegisterBrocast()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mBrocastReceive:Lcom/winca/music/Pages/AritstAlbumListPage$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method


# virtual methods
.method public OnDestrory()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->unRegisterBrocast()V

    .line 172
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->OnDestrory()V

    .line 173
    return-void
.end method

.method public ShowCurrtentItem()V
    .locals 4

    .prologue
    .line 63
    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    iget-object v1, v2, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 64
    .local v1, da:Lcom/winca/music/player/MusicPlayerDataManager;
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->getPlayingSongMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/music/mediautil/AudioEntity;

    .line 66
    .local v0, audio:Lcom/winca/music/mediautil/AudioEntity;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getAlbum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbum:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mArtist:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .end local v0           #audio:Lcom/winca/music/mediautil/AudioEntity;
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public create()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->createLayout(I)V

    .line 127
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->setVisibility(I)V

    .line 128
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->initListSView()V

    .line 129
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->create()V

    .line 130
    return-void
.end method

.method public initWidgets()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->albumsListView:Landroid/widget/ListView;

    .line 50
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mListsPlay:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->iconAlbum:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/winca/music/Pages/AritstAlbumListPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbum:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mArtist:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvAlbumName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->tvArtistName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->iconAlbum:Landroid/widget/ImageView;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mListsPlay:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->updaPlayerPlayList()V

    .line 195
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 197
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-virtual {v0}, Lcom/winca/music/MusicActivity;->updaPlayerPlayList()V

    .line 186
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    invoke-static {v0, p3}, Lcom/winca/music/player/MusicOperaUtil;->SetPlay(Landroid/content/Context;I)V

    .line 187
    return-void
.end method

.method public onKeyBack()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/winca/music/Pages/AritstAlbumListPage;->mActivity:Lcom/winca/music/MusicActivity;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 107
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->UpdateListStyle()V

    .line 112
    invoke-virtual {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->ShowCurrtentItem()V

    .line 113
    invoke-direct {p0}, Lcom/winca/music/Pages/AritstAlbumListPage;->setSelection()V

    .line 114
    invoke-super {p0}, Lcom/winca/music/Pages/Page;->onShow()V

    .line 115
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/winca/music/Pages/Page;->setVisibility(I)V

    .line 167
    return-void
.end method
