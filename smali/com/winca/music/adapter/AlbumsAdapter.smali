.class public Lcom/winca/music/adapter/AlbumsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumsAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMap:Ljava/util/Map;
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
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mMap:Ljava/util/Map;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/winca/music/adapter/AlbumsAdapter;->resID:I

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mMap:Ljava/util/Map;

    .line 28
    iput p3, p0, Lcom/winca/music/adapter/AlbumsAdapter;->resID:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f020005

    .line 53
    iget-object v3, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/winca/service/scannerMedia/Album;

    .line 54
    .local v0, album:Lcom/winca/service/scannerMedia/Album;
    invoke-virtual {v0}, Lcom/winca/service/scannerMedia/Album;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, albumStr:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/winca/music/adapter/AlbumsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/winca/music/adapter/AlbumsAdapter;->resID:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v2, Lcom/winca/music/adapter/AlbumsViewHolder;

    invoke-direct {v2}, Lcom/winca/music/adapter/AlbumsViewHolder;-><init>()V

    .line 59
    .local v2, albumsViewHolder:Lcom/winca/music/adapter/AlbumsViewHolder;
    const/high16 v3, 0x7f0a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 58
    iput-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->flAlbum:Landroid/widget/FrameLayout;

    .line 61
    const v3, 0x7f0a0001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    iput-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->ivAlbum:Landroid/widget/ImageView;

    .line 63
    const v3, 0x7f0a0002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    iput-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->tvAlbumName:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    sget-object v3, Lcom/winca/music/util/MusicUtil;->mCurrentPlayAlbum:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 72
    sget-object v3, Lcom/winca/music/util/MusicUtil;->mCurrentPlayAlbum:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->flAlbum:Landroid/widget/FrameLayout;

    .line 74
    const v4, 0x7f02005d

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 83
    :goto_1
    iget-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->ivAlbum:Landroid/widget/ImageView;

    .line 84
    const v4, 0x7f02005e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->tvAlbumName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-object p2

    .line 68
    .end local v2           #albumsViewHolder:Lcom/winca/music/adapter/AlbumsViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/winca/music/adapter/AlbumsViewHolder;

    .restart local v2       #albumsViewHolder:Lcom/winca/music/adapter/AlbumsViewHolder;
    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->flAlbum:Landroid/widget/FrameLayout;

    .line 77
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v3, v2, Lcom/winca/music/adapter/AlbumsViewHolder;->flAlbum:Landroid/widget/FrameLayout;

    .line 81
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
