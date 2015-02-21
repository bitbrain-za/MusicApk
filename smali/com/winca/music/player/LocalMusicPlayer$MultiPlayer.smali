.class Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;
.super Ljava/lang/Object;
.source "LocalMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/LocalMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/winca/music/player/LocalMusicPlayer;


# direct methods
.method public constructor <init>(Lcom/winca/music/player/LocalMusicPlayer;)V
    .locals 3
    .parameter

    .prologue
    .line 940
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1019
    new-instance v0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$1;-><init>(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1032
    new-instance v0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$2;-><init>(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1037
    new-instance v0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer$3;-><init>(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)V

    iput-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 941
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {p1}, Lcom/winca/music/player/LocalMusicPlayer;->access$11(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 942
    return-void
.end method

.method static synthetic access$0(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 937
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 938
    iput-boolean p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    return-void
.end method

.method static synthetic access$2(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$4(Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;)Lcom/winca/music/player/LocalMusicPlayer;
    .locals 1
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    return-object v0
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1013
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->stop()V

    .line 1008
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1009
    return-void
.end method

.method public seek(J)J
    .locals 2
    .parameter "whereto"

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1080
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const/4 v6, 0x0

    .line 946
    :try_start_0
    const-string v3, "LocalMusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setDataSource Playing++++:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 950
    const-wide/16 v3, 0x32

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 956
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 958
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->this$0:Lcom/winca/music/player/LocalMusicPlayer;

    #getter for: Lcom/winca/music/player/LocalMusicPlayer;->mContext:Lcom/winca/music/service/MusicService;
    invoke-static {v4}, Lcom/winca/music/player/LocalMusicPlayer;->access$11(Lcom/winca/music/player/LocalMusicPlayer;)Lcom/winca/music/service/MusicService;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 964
    :goto_1
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 966
    :try_start_3
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 980
    :goto_2
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 981
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 982
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mPreparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 984
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 985
    const-string v3, "LocalMusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setDataSource----:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_3
    return-void

    .line 951
    :catch_0
    move-exception v1

    .line 953
    .local v1, e1:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 971
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 972
    .local v2, ex:Ljava/io/IOException;
    iput-boolean v6, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    goto :goto_3

    .line 961
    .end local v2           #ex:Ljava/io/IOException;
    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 974
    :catch_2
    move-exception v2

    .line 976
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v6, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    goto :goto_3

    .line 967
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 968
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "LocalMusicPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 1017
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "vol"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1085
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 995
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 998
    const-string v0, "LocalMusicPlayer"

    const-string v1, "mMediaPlayer.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/player/LocalMusicPlayer$MultiPlayer;->mIsInitialized:Z

    .line 1001
    return-void
.end method
