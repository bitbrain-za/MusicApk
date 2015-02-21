.class public abstract Lcom/winca/service/media/IMediaInterface$Stub;
.super Landroid/os/Binder;
.source "IMediaInterface.java"

# interfaces
.implements Lcom/winca/service/media/IMediaInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/winca/service/media/IMediaInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/service/media/IMediaInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.winca.service.media.IMediaInterface"

.field static final TRANSACTION_audioCurrentPlayTime:I = 0x7

.field static final TRANSACTION_audioData:I = 0x8

.field static final TRANSACTION_audioPlay:I = 0x2

.field static final TRANSACTION_audioPuase:I = 0x3

.field static final TRANSACTION_audioStartVoice:I = 0x4

.field static final TRANSACTION_audioStopVoice:I = 0x5

.field static final TRANSACTION_registerSourceChange:I = 0x1

.field static final TRANSACTION_sendMCUDate:I = 0x10

.field static final TRANSACTION_setAudioDataType:I = 0x6

.field static final TRANSACTION_setVideoDataType:I = 0xd

.field static final TRANSACTION_videoCurrentPlayTime:I = 0xe

.field static final TRANSACTION_videoData:I = 0xf

.field static final TRANSACTION_videoPlay:I = 0x9

.field static final TRANSACTION_videoPuase:I = 0xa

.field static final TRANSACTION_videoStartVoice:I = 0xb

.field static final TRANSACTION_videoStopVoice:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p0, p0, v0}, Lcom/winca/service/media/IMediaInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/winca/service/media/IMediaInterface;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.winca.service.media.IMediaInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/winca/service/media/IMediaInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/winca/service/media/IMediaInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/winca/service/media/IMediaInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/winca/service/media/IMediaInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/winca/service/media/OnSourceChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/winca/service/media/OnSourceChangeListener;

    move-result-object v1

    .line 50
    .local v1, _arg0:Lcom/winca/service/media/OnSourceChangeListener;
    invoke-virtual {p0, v1}, Lcom/winca/service/media/IMediaInterface$Stub;->registerSourceChange(Lcom/winca/service/media/OnSourceChangeListener;)Z

    move-result v6

    .line 51
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .line 57
    .end local v1           #_arg0:Lcom/winca/service/media/OnSourceChangeListener;
    .end local v6           #_result:Z
    :sswitch_2
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->audioPlay()Z

    move-result v6

    .line 59
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v6           #_result:Z
    :sswitch_3
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->audioPuase()Z

    move-result v6

    .line 67
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v6           #_result:Z
    :sswitch_4
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->audioStartVoice()Z

    move-result v6

    .line 75
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v6           #_result:Z
    :sswitch_5
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->audioStopVoice()Z

    move-result v6

    .line 83
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v6           #_result:Z
    :sswitch_6
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/winca/service/media/IMediaInterface$Stub;->setAudioDataType(I)Z

    move-result v6

    .line 93
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 99
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_7
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/winca/service/media/IMediaInterface$Stub;->audioCurrentPlayTime(III)Z

    move-result v6

    .line 107
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 121
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/winca/service/media/IMediaInterface$Stub;->audioData(IIIII)Z

    move-result v6

    .line 125
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:Z
    :sswitch_9
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->videoPlay()Z

    move-result v6

    .line 133
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v6           #_result:Z
    :sswitch_a
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->videoPuase()Z

    move-result v6

    .line 141
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v6           #_result:Z
    :sswitch_b
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->videoStartVoice()Z

    move-result v6

    .line 149
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/winca/service/media/IMediaInterface$Stub;->videoStopVoice()Z

    move-result v6

    .line 157
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/winca/service/media/IMediaInterface$Stub;->setVideoDataType(I)Z

    move-result v6

    .line 167
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v6, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_e
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/winca/service/media/IMediaInterface$Stub;->videoCurrentPlayTime(III)Z

    move-result v6

    .line 181
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :sswitch_f
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 191
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 195
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 197
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .restart local v5       #_arg4:I
    move-object v0, p0

    .line 198
    invoke-virtual/range {v0 .. v5}, Lcom/winca/service/media/IMediaInterface$Stub;->videoData(IIIII)Z

    move-result v6

    .line 199
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v6, :cond_e

    move v8, v7

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_result:Z
    :sswitch_10
    const-string v0, "com.winca.service.media.IMediaInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 209
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/winca/service/media/IMediaInterface$Stub;->sendMCUDate([BI)I

    move-result v6

    .line 211
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
