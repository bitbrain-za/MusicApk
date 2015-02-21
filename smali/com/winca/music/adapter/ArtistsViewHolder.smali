.class public Lcom/winca/music/adapter/ArtistsViewHolder;
.super Ljava/lang/Object;
.source "ArtistsViewHolder.java"


# instance fields
.field public flArtist:Landroid/widget/FrameLayout;

.field public ivArtist:Landroid/widget/ImageView;

.field public tvArtistName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/winca/music/adapter/ArtistsViewHolder;->ivArtist:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/winca/music/adapter/ArtistsViewHolder;->tvArtistName:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/winca/music/adapter/ArtistsViewHolder;->flArtist:Landroid/widget/FrameLayout;

    .line 7
    return-void
.end method
