.class public Lcom/winca/music/adapter/SongAdapter;
.super Landroid/widget/BaseAdapter;
.source "SongAdapter.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "resId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const-string v0, "SongAdapter"

    iput-object v0, p0, Lcom/winca/music/adapter/SongAdapter;->TAG:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/winca/music/adapter/SongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    iput-object v1, p0, Lcom/winca/music/adapter/SongAdapter;->mList:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/adapter/SongAdapter;->resID:I

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/adapter/SongAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p2, p0, Lcom/winca/music/adapter/SongAdapter;->mList:Ljava/util/Map;

    .line 29
    iput p3, p0, Lcom/winca/music/adapter/SongAdapter;->resID:I

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/winca/music/adapter/SongAdapter;->mList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 50
    iget-object v3, p0, Lcom/winca/music/adapter/SongAdapter;->mList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winca/music/mediautil/AudioEntity;

    .line 52
    .local v1, songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    if-nez p2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/winca/music/adapter/SongAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/winca/music/adapter/SongAdapter;->resID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v2, Lcom/winca/music/adapter/SongsViewHolder;

    invoke-direct {v2}, Lcom/winca/music/adapter/SongsViewHolder;-><init>()V

    .line 56
    .local v2, viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    const v3, 0x7f0a0047

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0a0046

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 57
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    .line 60
    const v3, 0x7f0a0048

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongName:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0a000a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvArtistName:Landroid/widget/TextView;

    .line 64
    const v3, 0x7f0a0049

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongTime:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    if-nez v1, :cond_1

    .line 103
    :goto_1
    return-object p2

    .line 69
    .end local v2           #viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winca/music/adapter/SongsViewHolder;

    .restart local v2       #viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v3, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v3}, Lcom/winca/music/player/MusicPlayerControler;->getCurPlayPath()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, Path:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 80
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 81
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_2
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvArtistName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_4

    .line 99
    const/high16 v3, 0x7f05

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 85
    :cond_2
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 90
    :cond_3
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 101
    :cond_4
    const v3, 0x7f050001

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
