.class public Lcom/winca/music/adapter/AlbumsViewHolder;
.super Ljava/lang/Object;
.source "AlbumsViewHolder.java"


# instance fields
.field public flAlbum:Landroid/widget/FrameLayout;

.field public ivAlbum:Landroid/widget/ImageView;

.field public tvAlbumName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsViewHolder;->ivAlbum:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsViewHolder;->tvAlbumName:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/winca/music/adapter/AlbumsViewHolder;->flAlbum:Landroid/widget/FrameLayout;

    .line 7
    return-void
.end method
