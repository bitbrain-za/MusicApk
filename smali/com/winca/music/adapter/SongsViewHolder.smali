.class public Lcom/winca/music/adapter/SongsViewHolder;
.super Ljava/lang/Object;
.source "SongsViewHolder.java"


# instance fields
.field public ivPlaying:Landroid/widget/ImageView;

.field public tvArtistName:Landroid/widget/TextView;

.field public tvSongID:Landroid/widget/TextView;

.field public tvSongName:Landroid/widget/TextView;

.field public tvSongTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/winca/music/adapter/SongsViewHolder;->tvSongID:Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Lcom/winca/music/adapter/SongsViewHolder;->ivPlaying:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/winca/music/adapter/SongsViewHolder;->tvSongName:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/winca/music/adapter/SongsViewHolder;->tvArtistName:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/winca/music/adapter/SongsViewHolder;->tvSongTime:Landroid/widget/TextView;

    .line 6
    return-void
.end method
