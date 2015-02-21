.class public interface abstract Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;
.super Ljava/lang/Object;
.source "MusicPickerPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/music/player/MusicPickerPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPlayStateListener"
.end annotation


# virtual methods
.method public abstract onMusicComplete()V
.end method

.method public abstract onMusicPause()V
.end method

.method public abstract onMusicPlay()V
.end method
