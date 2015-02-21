.class public Lcom/winca/music/adapter/AlbumsArtistListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumsArtistListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumsArtistListAdapter"


# instance fields
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
    .locals 1
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
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mList:Ljava/util/Map;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->resID:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mList:Ljava/util/Map;

    .line 28
    iput p3, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->resID:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 43
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

    .line 49
    iget-object v3, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/winca/music/mediautil/AudioEntity;

    .line 50
    .local v1, songsUtil:Lcom/winca/music/mediautil/AudioEntity;
    if-nez p2, :cond_0

    .line 51
    iget-object v3, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/winca/music/adapter/AlbumsArtistListAdapter;->resID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v2, Lcom/winca/music/adapter/SongsViewHolder;

    invoke-direct {v2}, Lcom/winca/music/adapter/SongsViewHolder;-><init>()V

    .line 54
    .local v2, viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    const v3, 0x7f0a0012

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 53
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f0a0011

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 55
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    .line 58
    const v3, 0x7f0a0013

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongName:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0a0014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvArtistName:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0a0015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    iput-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongTime:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v3, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v3}, Lcom/winca/music/player/MusicPlayerControler;->getCurPlayPath()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, Path:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 77
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 79
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_1
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvArtistName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/winca/music/mediautil/AudioEntity;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_3

    .line 98
    const/high16 v3, 0x7f05

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    :goto_2
    return-object p2

    .line 67
    .end local v0           #Path:Ljava/lang/String;
    .end local v2           #viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winca/music/adapter/SongsViewHolder;

    .restart local v2       #viewHolder:Lcom/winca/music/adapter/SongsViewHolder;
    goto :goto_0

    .line 84
    .restart local v0       #Path:Ljava/lang/String;
    :cond_1
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v3, v2, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 100
    :cond_3
    const v3, 0x7f050001

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method
