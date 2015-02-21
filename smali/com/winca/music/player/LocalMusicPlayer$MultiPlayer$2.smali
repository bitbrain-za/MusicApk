.class Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$2;
.super Ljava/lang/Object;
.source "LocalMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$2;->this$1:Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 1034
    return-void
.end method
