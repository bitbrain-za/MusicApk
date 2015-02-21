.class public Lcom/winca/music/MusicActivity;
.super Landroid/app/Activity;
.source "MusicActivity.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicActivity"


# instance fields
.field public final PLAY_STATE_PAUSE:I

.field public final PLAY_STATE_PLAY:I

.field public final PLAY_STATE_STOP:I

.field private dlListener:Lcom/winca/Dialog/DialogListener;

.field private isFirstRun:Z

.field public isPlayHistoryAlready:Z

.field public lastFileExist:Z

.field public lastPlayPath:Ljava/lang/String;

.field public lastPlayPosition:I

.field public lastPlayState:I

.field private loadDialog:Lcom/winca/Dialog/LoadingDialog;

.field public mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

.field private mMusicSharePreference:Lcom/winca/music/preference/MusicSharePreference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbVolume:I

.field public mViewManager:Lcom/winca/music/Pages/PageManager;

.field public mbPause:Z

.field public mbadRemove:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput v1, p0, Lcom/winca/music/MusicActivity;->PLAY_STATE_PLAY:I

    .line 31
    iput v3, p0, Lcom/winca/music/MusicActivity;->PLAY_STATE_PAUSE:I

    .line 32
    iput v0, p0, Lcom/winca/music/MusicActivity;->PLAY_STATE_STOP:I

    .line 35
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/winca/music/MusicActivity;->lastFileExist:Z

    .line 37
    iput v0, p0, Lcom/winca/music/MusicActivity;->lastPlayState:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/winca/music/MusicActivity;->lastPlayPosition:I

    .line 39
    iput-boolean v1, p0, Lcom/winca/music/MusicActivity;->isPlayHistoryAlready:Z

    .line 40
    iput-boolean v1, p0, Lcom/winca/music/MusicActivity;->mbadRemove:Z

    .line 41
    iput-boolean v1, p0, Lcom/winca/music/MusicActivity;->mbPause:Z

    .line 42
    iput-boolean v1, p0, Lcom/winca/music/MusicActivity;->isFirstRun:Z

    .line 43
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    .line 44
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 45
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    .line 47
    iput v3, p0, Lcom/winca/music/MusicActivity;->mUsbVolume:I

    .line 48
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 49
    iput-object v2, p0, Lcom/winca/music/MusicActivity;->mMusicSharePreference:Lcom/winca/music/preference/MusicSharePreference;

    .line 123
    new-instance v0, Lcom/winca/music/MusicActivity$1;

    invoke-direct {v0, p0}, Lcom/winca/music/MusicActivity$1;-><init>(Lcom/winca/music/MusicActivity;)V

    iput-object v0, p0, Lcom/winca/music/MusicActivity;->dlListener:Lcom/winca/Dialog/DialogListener;

    .line 27
    return-void
.end method

.method private StartMusicService()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.music.MUSICSERVICE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 282
    return-void
.end method

.method private StopMusicService()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.music.MUSICSERVICE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->stopService(Landroid/content/Intent;)Z

    .line 288
    return-void
.end method

.method private initial()V
    .locals 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/winca/music/MusicActivity;->StartMusicService()V

    .line 293
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/winca/music/MusicActivity;->setContentView(I)V

    .line 294
    new-instance v1, Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-direct {v1, p0}, Lcom/winca/music/player/MusicPlayerDataManager;-><init>(Lcom/winca/music/MusicActivity;)V

    iput-object v1, p0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    .line 295
    new-instance v1, Lcom/winca/music/Pages/PageManager;

    invoke-direct {v1, p0}, Lcom/winca/music/Pages/PageManager;-><init>(Lcom/winca/music/MusicActivity;)V

    iput-object v1, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    .line 296
    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {p0, v1}, Lcom/winca/music/MusicActivity;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 298
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getMusicSharePreference()Lcom/winca/music/preference/MusicSharePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/winca/music/preference/MusicSharePreference;->ReadLastUSBType()I

    move-result v0

    .line 299
    .local v0, type:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getmStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    const-string v2, "/mnt/udisk1"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iput v0, p0, Lcom/winca/music/MusicActivity;->mUsbVolume:I

    .line 303
    :cond_0
    return-void
.end method

.method private requireAudioSoundSource(Z)V
    .locals 3
    .parameter "bstate"

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.scanner.setCurSoundSource"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.winca.scanner.SoundSource_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "source_type_is_in_current_page"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method private scanAll()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, scanIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    invoke-static {p0}, Lcom/winca/music/player/MusicOperaUtil;->setReset(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method private setWincaMenuState(Z)V
    .locals 3
    .parameter "bState"

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.winca.audiochannelmanager.switchmenu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 318
    const-string v1, "com.winca.audiochannelmanager.switchmenu.extra"

    .line 319
    const/16 v2, 0xd

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    :goto_0
    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void

    .line 321
    :cond_0
    const-string v1, "com.winca.audiochannelmanager.switchmenu.extra"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    invoke-virtual {v0, p1}, Lcom/winca/music/Pages/PageManager;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 260
    return-void
.end method

.method public checkAndShowLoadingDialog()V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->readPlayerData()V

    .line 308
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->setLoadingState(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method public getCurPage()Lcom/winca/music/player/MusicPlayerDef$PageEnum;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    invoke-virtual {v0}, Lcom/winca/music/Pages/PageManager;->GetCurPageId()Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    move-result-object v0

    return-object v0
.end method

.method public getIDfromPlayerPlaying(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v0, p1}, Lcom/winca/music/player/MusicPlayerDataManager;->getIdByPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastPlayState()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/winca/music/MusicActivity;->lastPlayState:I

    return v0
.end method

.method public getMusicSharePreference()Lcom/winca/music/preference/MusicSharePreference;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mMusicSharePreference:Lcom/winca/music/preference/MusicSharePreference;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/winca/music/preference/MusicSharePreference;

    invoke-direct {v0, p0}, Lcom/winca/music/preference/MusicSharePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/winca/music/MusicActivity;->mMusicSharePreference:Lcom/winca/music/preference/MusicSharePreference;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mMusicSharePreference:Lcom/winca/music/preference/MusicSharePreference;

    return-object v0
.end method

.method public getUsbVolume()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/winca/music/MusicActivity;->mUsbVolume:I

    return v0
.end method

.method public getmStorageManager()Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 89
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/winca/music/MusicActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public isActivityPause()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/winca/music/MusicActivity;->mbPause:Z

    return v0
.end method

.method public isFirstRun()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/winca/music/MusicActivity;->isFirstRun:Z

    return v0
.end method

.method public loadDialgUpdate()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/winca/Dialog/LoadingDialog;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/winca/Dialog/LoadingDialog;->update()V

    .line 189
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "MusicActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_run"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/winca/music/MusicActivity;->isFirstRun:Z

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/winca/music/MusicActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getmStorageManager()Landroid/os/storage/StorageManager;

    .line 58
    invoke-direct {p0}, Lcom/winca/music/MusicActivity;->initial()V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 159
    const-string v1, "MusicActivity"

    const-string v2, "onDesttory"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    iget-object v1, p0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v1}, Lcom/winca/music/player/MusicPlayerDataManager;->onDestory()V

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    invoke-virtual {v1}, Lcom/winca/music/Pages/PageManager;->onDestrory()V

    .line 164
    invoke-direct {p0}, Lcom/winca/music/MusicActivity;->StopMusicService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MusicActivity"

    const-string v2, "Error in  MusicAcitivity  onDestrory()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    invoke-virtual {v0}, Lcom/winca/music/Pages/PageManager;->onKeyBack()Z

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 218
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lcom/winca/music/MusicActivity;->scanAll()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x7f0a004a
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 197
    const-string v0, "MusicActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winca/music/MusicActivity;->mbPause:Z

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/winca/music/MusicActivity;->requireAudioSoundSource(Z)V

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    const-string v0, "MusicActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-boolean v2, p0, Lcom/winca/music/MusicActivity;->mbPause:Z

    .line 144
    invoke-static {p0}, Lcom/winca/music/player/MusicOperaUtil;->BrocastInquireSoundSounce(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/winca/music/player/MusicPlayerControler;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_PLAYING_MUSIC:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/Pages/PageManager;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 154
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 155
    return-void

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/winca/music/MusicActivity;->mbadRemove:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    sget-object v1, Lcom/winca/music/player/MusicPlayerDef$PageEnum;->PAGE_MAIN_PAGE:Lcom/winca/music/player/MusicPlayerDef$PageEnum;

    invoke-virtual {v0, v1}, Lcom/winca/music/Pages/PageManager;->JumpPage(Lcom/winca/music/player/MusicPlayerDef$PageEnum;)V

    .line 151
    iput-boolean v2, p0, Lcom/winca/music/MusicActivity;->mbadRemove:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    const-string v0, "MusicActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0, v2}, Lcom/winca/music/MusicActivity;->requireAudioSoundSource(Z)V

    .line 80
    invoke-direct {p0, v2}, Lcom/winca/music/MusicActivity;->setWincaMenuState(Z)V

    .line 83
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mViewManager:Lcom/winca/music/Pages/PageManager;

    invoke-virtual {v0}, Lcom/winca/music/Pages/PageManager;->onResume()V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    return-void
.end method

.method public readPlayerData()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getMusicSharePreference()Lcom/winca/music/preference/MusicSharePreference;

    move-result-object v0

    .line 271
    .local v0, sp:Lcom/winca/music/preference/MusicSharePreference;
    invoke-virtual {v0}, Lcom/winca/music/preference/MusicSharePreference;->ReadLastPlayPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/winca/music/MusicActivity;->lastPlayPath:Ljava/lang/String;

    .line 272
    invoke-virtual {v0}, Lcom/winca/music/preference/MusicSharePreference;->ReadLastPosition()I

    move-result v1

    iput v1, p0, Lcom/winca/music/MusicActivity;->lastPlayPosition:I

    .line 273
    invoke-virtual {v0}, Lcom/winca/music/preference/MusicSharePreference;->ReadLastPlayState()I

    move-result v1

    iput v1, p0, Lcom/winca/music/MusicActivity;->lastPlayState:I

    .line 275
    return-void
.end method

.method public setLoadingState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/winca/Dialog/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/winca/Dialog/LoadingDialog;-><init>(Lcom/winca/music/MusicActivity;)V

    iput-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    iget-object v1, p0, Lcom/winca/music/MusicActivity;->dlListener:Lcom/winca/Dialog/DialogListener;

    invoke-virtual {v0, v1}, Lcom/winca/Dialog/LoadingDialog;->setDialogLisener(Lcom/winca/Dialog/DialogListener;)V

    .line 180
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->loadDialog:Lcom/winca/Dialog/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/winca/Dialog/LoadingDialog;->setLoadingState(Z)V

    .line 182
    return-void
.end method

.method public setUsbVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 104
    iput p1, p0, Lcom/winca/music/MusicActivity;->mUsbVolume:I

    .line 105
    invoke-virtual {p0}, Lcom/winca/music/MusicActivity;->getMusicSharePreference()Lcom/winca/music/preference/MusicSharePreference;

    move-result-object v0

    iget v1, p0, Lcom/winca/music/MusicActivity;->mUsbVolume:I

    invoke-virtual {v0, v1}, Lcom/winca/music/preference/MusicSharePreference;->StoryLastUSBType(I)V

    .line 106
    return-void
.end method

.method public updaPlayerPlayList()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/winca/music/MusicActivity;->mDataManager:Lcom/winca/music/player/MusicPlayerDataManager;

    invoke-virtual {v0}, Lcom/winca/music/player/MusicPlayerDataManager;->updataPlayerPlayList()V

    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/winca/music/player/MusicPlayerControler;->setResetState(Z)V

    .line 250
    return-void
.end method
