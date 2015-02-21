.class public Lcom/winca/service/scannerMedia/AudioConnectService;
.super Ljava/lang/Object;
.source "AudioConnectService.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;
    }
.end annotation


# instance fields
.field private isBind:Z

.field private mContext:Lcom/winca/music/MusicActivity;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/winca/service/scannerMedia/IScanMediaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/winca/music/MusicActivity;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;

    .line 27
    iput-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 28
    iput-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->isBind:Z

    .line 178
    new-instance v1, Lcom/winca/service/scannerMedia/AudioConnectService$1;

    invoke-direct {v1, p0}, Lcom/winca/service/scannerMedia/AudioConnectService$1;-><init>(Lcom/winca/service/scannerMedia/AudioConnectService;)V

    iput-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;

    .line 34
    new-instance v1, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;

    invoke-direct {v1, p0}, Lcom/winca/service/scannerMedia/AudioConnectService$AudioConnectServiceImpl;-><init>(Lcom/winca/service/scannerMedia/AudioConnectService;)V

    iput-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.service.scannerMedia.IScanMediaService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;

    iget-object v2, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/winca/music/MusicActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/winca/service/scannerMedia/AudioConnectService;)Lcom/winca/music/MusicActivity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/service/scannerMedia/AudioConnectService;Lcom/winca/service/scannerMedia/IScanMediaService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    return-void
.end method

.method static synthetic access$2(Lcom/winca/service/scannerMedia/AudioConnectService;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/winca/service/scannerMedia/AudioConnectService;->getBind()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/winca/service/scannerMedia/AudioConnectService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/winca/service/scannerMedia/AudioConnectService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/winca/service/scannerMedia/AudioConnectService;->setBind(Z)V

    return-void
.end method

.method private getBind()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->isBind:Z

    return v0
.end method

.method private setBind(Z)V
    .locals 0
    .parameter "bind"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->isBind:Z

    .line 55
    return-void
.end method


# virtual methods
.method public doUnBindService()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mContext:Lcom/winca/music/MusicActivity;

    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/winca/music/MusicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/service/scannerMedia/AudioConnectService;->setBind(Z)V

    .line 47
    return-void
.end method

.method public getAlbum(I)[Lcom/winca/service/scannerMedia/Album;
    .locals 2
    .parameter "volume"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1, p1}, Lcom/winca/service/scannerMedia/IScanMediaService;->getAlbum(I)[Lcom/winca/service/scannerMedia/Album;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlbumSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/AlbumSong;
    .locals 2
    .parameter "album"
    .parameter "volume"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1, p1, p2}, Lcom/winca/service/scannerMedia/IScanMediaService;->getAlbumSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/AlbumSong;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArtist(I)[Lcom/winca/service/scannerMedia/Artist;
    .locals 2
    .parameter "volume"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1, p1}, Lcom/winca/service/scannerMedia/IScanMediaService;->getArtist(I)[Lcom/winca/service/scannerMedia/Artist;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArtistSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/ArtistSong;
    .locals 2
    .parameter "artist"
    .parameter "volume"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1, p1, p2}, Lcom/winca/service/scannerMedia/IScanMediaService;->getArtistSong(Ljava/lang/String;I)[Lcom/winca/service/scannerMedia/ArtistSong;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 153
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAudio(I)[Lcom/winca/service/scannerMedia/Audio;
    .locals 2
    .parameter "volume"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1, p1}, Lcom/winca/service/scannerMedia/IScanMediaService;->getAudio(I)[Lcom/winca/service/scannerMedia/Audio;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/winca/service/scannerMedia/AudioConnectService;->mService:Lcom/winca/service/scannerMedia/IScanMediaService;

    invoke-interface {v1}, Lcom/winca/service/scannerMedia/IScanMediaService;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 67
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
