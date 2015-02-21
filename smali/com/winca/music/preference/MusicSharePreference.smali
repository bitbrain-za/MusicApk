.class public Lcom/winca/music/preference/MusicSharePreference;
.super Lcom/winca/music/preference/SharedPreferenceUtil;
.source "MusicSharePreference.java"

# interfaces
.implements Lcom/winca/music/player/MusicPlayerDef;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "contxt"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/winca/music/preference/SharedPreferenceUtil;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public ReadLastPlayId()I
    .locals 1

    .prologue
    .line 42
    const-string v0, "MUSIC_ID_KEY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReadLastPlayPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "MUSIC_PATH_KEY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadLastPlayState()I
    .locals 1

    .prologue
    .line 26
    const-string v0, "MUSIC_PLAY_STATE_KEY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReadLastPosition()I
    .locals 1

    .prologue
    .line 46
    const-string v0, "MUSIC_POSITION_KEY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReadLastUSBType()I
    .locals 1

    .prologue
    .line 72
    const-string v0, "MUSIC_SHARE_LAST_USB_VOLUME"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ReadPlayMode()I
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StoryLastPlay(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 34
    const-string v0, "MUSIC_PATH_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public StoryLastPlayState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 30
    const-string v0, "MUSIC_PLAY_STATE_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutInt(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public StoryLastPosition(I)V
    .locals 1
    .parameter "Position"

    .prologue
    .line 14
    const-string v0, "MUSIC_POSITION_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutInt(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public StoryLastUSBType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 68
    const-string v0, "MUSIC_SHARE_LAST_USB_VOLUME"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutInt(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public StoryPlayMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 22
    const-string v0, "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutInt(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public getIsPlayHistory()Z
    .locals 1

    .prologue
    .line 54
    const-string v0, "MUSIC_SP_ISHISTORY"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readMusicLib()I
    .locals 1

    .prologue
    .line 63
    const-string v0, "MUSIC_SP_MUSIC_LIB"

    invoke-virtual {p0, v0}, Lcom/winca/music/preference/MusicSharePreference;->GetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public storyIsPlayHistory(Z)V
    .locals 1
    .parameter "isPlay"

    .prologue
    .line 50
    const-string v0, "MUSIC_SP_ISHISTORY"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public storyMusicLib(I)V
    .locals 1
    .parameter "lib"

    .prologue
    .line 59
    const-string v0, "MUSIC_SP_MUSIC_LIB"

    invoke-virtual {p0, v0, p1}, Lcom/winca/music/preference/MusicSharePreference;->PutInt(Ljava/lang/String;I)V

    .line 60
    return-void
.end method
