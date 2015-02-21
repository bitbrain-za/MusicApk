.class Lcom/winca/music/AudioPickActivity$TimeProgressThread;
.super Ljava/lang/Thread;
.source "AudioPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/AudioPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeProgressThread"
.end annotation


# instance fields
.field isRun:Z

.field final synthetic this$0:Lcom/winca/music/AudioPickActivity;


# direct methods
.method public constructor <init>(Lcom/winca/music/AudioPickActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->this$0:Lcom/winca/music/AudioPickActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->isRun:Z

    .line 191
    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->isRun:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 210
    :goto_0
    iget-boolean v1, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->isRun:Z

    if-nez v1, :cond_0

    .line 220
    return-void

    .line 213
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->this$0:Lcom/winca/music/AudioPickActivity;

    #getter for: Lcom/winca/music/AudioPickActivity;->mMusicHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/winca/music/AudioPickActivity;->access$7(Lcom/winca/music/AudioPickActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->setThreadState(Z)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setThreadState(Z)V
    .locals 0
    .parameter "isRun"

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->isRun:Z

    .line 195
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->setThreadState(Z)V

    .line 204
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
