.class public Lcom/winca/music/AudioPickActivity;
.super Landroid/app/Activity;
.source "AudioPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/AudioPickActivity$TimeProgressThread;
    }
.end annotation


# instance fields
.field public final HANDLER_MSG_UPDATE_TIME:I

.field private final TAG:Ljava/lang/String;

.field private curTimeTv:Landroid/widget/TextView;

.field private filePath:Ljava/lang/String;

.field private isTouch:Z

.field private mMusicHandler:Landroid/os/Handler;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

.field private musicNameTx:Landroid/widget/TextView;

.field private pauseBtn:Landroid/widget/Button;

.field private playBtn:Landroid/widget/Button;

.field private player:Lcom/winca/music/player/MusicPickerPlayer;

.field private timeSeekBar:Landroid/widget/SeekBar;

.field private totalTimeTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-class v0, Lcom/winca/music/AudioPickActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/winca/music/AudioPickActivity;->HANDLER_MSG_UPDATE_TIME:I

    .line 28
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->musicNameTx:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->totalTimeTv:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->curTimeTv:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->filePath:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->playBtn:Landroid/widget/Button;

    .line 33
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->pauseBtn:Landroid/widget/Button;

    .line 34
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;

    .line 35
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    .line 37
    iput-object v1, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winca/music/AudioPickActivity;->isTouch:Z

    .line 242
    new-instance v0, Lcom/winca/music/AudioPickActivity$1;

    invoke-direct {v0, p0}, Lcom/winca/music/AudioPickActivity$1;-><init>(Lcom/winca/music/AudioPickActivity;)V

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 268
    new-instance v0, Lcom/winca/music/AudioPickActivity$2;

    invoke-direct {v0, p0}, Lcom/winca/music/AudioPickActivity$2;-><init>(Lcom/winca/music/AudioPickActivity;)V

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->mMusicHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/winca/music/AudioPickActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/winca/music/AudioPickActivity;->isTouch:Z

    return-void
.end method

.method static synthetic access$1(Lcom/winca/music/AudioPickActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/winca/music/AudioPickActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/winca/music/AudioPickActivity;)Lcom/winca/music/player/MusicPickerPlayer;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/winca/music/AudioPickActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->curTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/winca/music/AudioPickActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->totalTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/winca/music/AudioPickActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/winca/music/AudioPickActivity;->isTouch:Z

    return v0
.end method

.method static synthetic access$7(Lcom/winca/music/AudioPickActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mMusicHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPlaySrcFromOtherApps(Landroid/content/Intent;)V
    .locals 5
    .parameter "it"

    .prologue
    .line 89
    move-object v2, p1

    .line 90
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, fileUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/winca/music/AudioPickActivity;->filePath:Ljava/lang/String;

    .line 94
    new-instance v3, Lcom/winca/music/player/MusicPickerPlayer;

    iget-object v4, p0, Lcom/winca/music/AudioPickActivity;->filePath:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/winca/music/player/MusicPickerPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    .line 95
    iget-object v3, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v3, p0}, Lcom/winca/music/player/MusicPickerPlayer;->setStateListener(Lcom/winca/music/player/MusicPickerPlayer$IPlayStateListener;)V

    .line 96
    iget-object v3, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/MusicPickerPlayer;->play()V

    .line 97
    iget-object v3, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v3}, Lcom/winca/music/player/MusicPickerPlayer;->getAudioEntity()Lcom/winca/music/mediautil/AudioEntity;

    move-result-object v0

    .line 98
    .local v0, entity:Lcom/winca/music/mediautil/AudioEntity;
    iget-object v3, p0, Lcom/winca/music/AudioPickActivity;->musicNameTx:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/winca/music/mediautil/AudioEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->startThread()V

    .line 103
    .end local v0           #entity:Lcom/winca/music/mediautil/AudioEntity;
    .end local v1           #fileUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->initWidagets()V

    .line 49
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->setListener()V

    .line 50
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->showPlayState()V

    .line 52
    return-void
.end method

.method private initWidagets()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->playBtn:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->pauseBtn:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->musicNameTx:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->totalTimeTv:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->curTimeTv:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;

    .line 62
    return-void
.end method

.method private killActivity()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->stopThread()V

    .line 150
    invoke-virtual {p0}, Lcom/winca/music/AudioPickActivity;->finish()V

    .line 151
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->playBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->pauseBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->timeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    return-void
.end method

.method private showCurTime()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->curTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPickerPlayer;->getCurPosStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    return-void
.end method

.method private showPlayState()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 72
    const/4 v0, 0x2

    .line 73
    .local v0, state:I
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPickerPlayer;->getPlayerState()I

    move-result v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPlayState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->playBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->pauseBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->playBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->pauseBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTime()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->showCurTime()V

    .line 126
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->showTotalTime()V

    .line 127
    return-void
.end method

.method private showTotalTime()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->totalTimeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPickerPlayer;->getTotalTimeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method private startThread()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    invoke-direct {v0, p0}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;-><init>(Lcom/winca/music/AudioPickActivity;)V

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    .line 108
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    invoke-virtual {v0}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->start()V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->setThreadState(Z)V

    goto :goto_0
.end method

.method private stopThread()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/winca/music/AudioPickActivity$TimeProgressThread;->setThreadState(Z)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/winca/music/AudioPickActivity;->mTimeThread:Lcom/winca/music/AudioPickActivity$TimeProgressThread;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 169
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPickerPlayer;->play()V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPickerPlayer;->pause()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f0a002d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/winca/music/AudioPickActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->init()V

    .line 44
    invoke-virtual {p0}, Lcom/winca/music/AudioPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/winca/music/AudioPickActivity;->getPlaySrcFromOtherApps(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    const-string v1, "On Destory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->player:Lcom/winca/music/player/MusicPickerPlayer;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPickerPlayer;->deInit()V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 142
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->killActivity()V

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMusicComplete()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->killActivity()V

    .line 227
    return-void
.end method

.method public onMusicPause()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    const-string v1, "On MusicPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->showPlayState()V

    .line 240
    return-void
.end method

.method public onMusicPlay()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/winca/music/AudioPickActivity;->TAG:Ljava/lang/String;

    const-string v1, "On MusicPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->showPlayState()V

    .line 233
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 156
    invoke-direct {p0}, Lcom/winca/music/AudioPickActivity;->killActivity()V

    .line 157
    return-void
.end method
