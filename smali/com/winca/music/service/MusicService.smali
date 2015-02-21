.class public Lcom/winca/music/service/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/service/MusicService$MusicPlayerImpl;
    }
.end annotation


# static fields
.field public static mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

.field private musicBinder:Lcom/winca/music/service/MusicService$MusicPlayerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    const-string v0, "MusicService"

    iput-object v0, p0, Lcom/winca/music/service/MusicService;->TAG:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    .line 20
    iput-object v1, p0, Lcom/winca/music/service/MusicService;->musicBinder:Lcom/winca/music/service/MusicService$MusicPlayerImpl;

    .line 15
    return-void
.end method

.method public static getMusicPlayer()Lcom/winca/music/player/MusicPlayerControler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    return-object v0
.end method


# virtual methods
.method public getMediaOperationManager()Lcom/winca/service/media/MediaOperationManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/winca/service/media/MediaOperationManager;

    invoke-direct {v0, p0}, Lcom/winca/service/media/MediaOperationManager;-><init>(Lcom/winca/music/service/MusicService;)V

    iput-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    .line 68
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->musicBinder:Lcom/winca/music/service/MusicService$MusicPlayerImpl;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/winca/music/player/MusicPlayerControler;

    invoke-direct {v0, p0}, Lcom/winca/music/player/MusicPlayerControler;-><init>(Lcom/winca/music/service/MusicService;)V

    sput-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    .line 43
    new-instance v0, Lcom/winca/music/service/MusicService$MusicPlayerImpl;

    invoke-direct {v0, p0}, Lcom/winca/music/service/MusicService$MusicPlayerImpl;-><init>(Lcom/winca/music/service/MusicService;)V

    iput-object v0, p0, Lcom/winca/music/service/MusicService;->musicBinder:Lcom/winca/music/service/MusicService$MusicPlayerImpl;

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    new-instance v0, Lcom/winca/service/media/MediaOperationManager;

    invoke-direct {v0, p0}, Lcom/winca/service/media/MediaOperationManager;-><init>(Lcom/winca/music/service/MusicService;)V

    iput-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    .line 47
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->doBindService()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerControler;->onDestory()V

    .line 36
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/winca/music/service/MusicService;->mMediaOperationManager:Lcom/winca/service/media/MediaOperationManager;

    invoke-virtual {v0}, Lcom/winca/service/media/MediaOperationManager;->doUnbindService()V

    .line 38
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 57
    :cond_0
    return-void
.end method

.method public stopPlayMusic()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/winca/music/service/MusicService;->mMusicPlayer:Lcom/winca/music/player/MusicPlayerControler;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerControler;->leaveAudio()V

    .line 63
    :cond_0
    return-void
.end method
