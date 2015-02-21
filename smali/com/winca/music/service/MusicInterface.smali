.class public interface abstract Lcom/winca/music/service/MusicInterface;
.super Ljava/lang/Object;
.source "MusicInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/service/MusicInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract next()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pre()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
