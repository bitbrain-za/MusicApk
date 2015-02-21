.class Lcom/winca/music/service/MusicService$MusicPlayerImpl;
.super Lcom/winca/music/service/MusicInterface$Stub;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicPlayerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/winca/music/service/MusicService;


# direct methods
.method constructor <init>(Lcom/winca/music/service/MusicService;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/winca/music/service/MusicService$MusicPlayerImpl;->this$0:Lcom/winca/music/service/MusicService;

    invoke-direct {p0}, Lcom/winca/music/service/MusicInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerControler;->Next()V

    .line 78
    return-void
.end method

.method public pre()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerControler;->Pre()V

    .line 82
    return-void
.end method
