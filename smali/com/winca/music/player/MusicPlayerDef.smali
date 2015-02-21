.class public interface abstract Lcom/winca/music/player/MusicPlayerDef;
.super Ljava/lang/Object;
.source "MusicPlayerDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/player/MusicPlayerDef$ListType;,
        Lcom/winca/music/player/MusicPlayerDef$PageEnum;,
        Lcom/winca/music/player/MusicPlayerDef$PlayMode;,
        Lcom/winca/music/player/MusicPlayerDef$PlayState;
    }
.end annotation


# static fields
.field public static final ACTKEY_VOLUME_VOLUME:Ljava/lang/String; = "com.winca.audio.key_volume_value"

.field public static final ALBUMLIST:I = 0x1

.field public static final ARTISTLIST:I = 0x2

.field public static final AUDIOS:I = 0x0

.field public static final AUDIO_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.audio"

.field public static final BROCAST_ASK_AUDIO_VOLUME:Ljava/lang/String; = "com.winca.audio.askVolume"

.field public static final BROCAST_CURENT_PLAY_ID:Ljava/lang/String; = "com.winca.kkcmh.CURENT_PLAY_ID"

.field public static final BROCAST_PROGRESS_UPDATE:Ljava/lang/String; = "com.winca.music.progress"

.field public static final BROCAST_RETURN_AUDIO_VOLUME:Ljava/lang/String; = "com.winca.audio.returnVolume"

.field public static final BROCAST_SCAN_START:Ljava/lang/String; = "com.winca.service.scannerMedia.SCAN_START"

.field public static final BROCAST_SCAN_TASK_FINISHED:Ljava/lang/String; = "com.winca.service.scannerMedia.SCAN_TASK_FINISHED"

.field public static final BROCAST_SCAN_TYPE_STATE:Ljava/lang/String; = "com.winca.service.scannerMedia.SCAN_TYPE_STATE"

.field public static final BROCAST_SOUND_SOURCE_KEY:Ljava/lang/String; = "com.winca.scanner.SoundSource_key"

.field public static final BROCAST_SOURCE_TYPE:Ljava/lang/String; = "com.winca.scanner.setCurSoundSource"

.field public static final BROCAST_UPDATA_ADAPTER:Ljava/lang/String; = "com.winca.kkcmh.UPDATA_ADAPTER"

.field public static final BROCAST_UPDATA_PLAYING_SONG_ADAPTER:Ljava/lang/String; = "com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER"

.field public static final BROCAST_VOLUME_DATA_CHANGED:Ljava/lang/String; = "com.winca.kkcmh.VOLUME_DATA_CHANGED"

.field public static final BROCAST_VOLUME_KEY:Ljava/lang/String; = "com.winca.scanner.volume_key"

.field public static final BUNDLE_KEY_SCAN_TYPE:Ljava/lang/String; = "SCAN_TYPE"

.field public static final BUNDLE_KEY_SCAN_TYPE_STATE:Ljava/lang/String; = "SCAN_TYPE_STATE"

.field public static final CHANNEL_DESELECTED:Ljava/lang/String; = "CHANNEL_DESELECTED"

.field public static final CHANNEL_NOTIFICATION:Ljava/lang/String; = "CHANNEL_NOTIFICATION"

.field public static final CHANNEL_SELECTED:Ljava/lang/String; = "CHANNEL_SELECTED"

.field public static final CURENT_PLAY_ID_KEY:Ljava/lang/String; = "cur_ID"

.field public static final FILEMANAGER_MUSIC_ACTIO:Ljava/lang/String; = "com.winca.filemanager.MUSIC_ACTION"

.field public static final FILEMANAGER_VIDEO_ACTIO:Ljava/lang/String; = "com.winca.filemanager.VIDEO_ACTION"

.field public static final HDStorageStyle:I = 0x2

.field public static final LIST_NAME_ALBUM:Ljava/lang/String; = "Album"

.field public static final LIST_NAME_ARTIST:Ljava/lang/String; = "Artist"

.field public static final LIST_NAME_AUDIO:Ljava/lang/String; = "Audio"

.field public static final LIST_NAME_PLAYING:Ljava/lang/String; = "Playing"

.field public static final MSG_KEY_PLAYSTORY:Ljava/lang/String; = "MUSIC_PALY_HISTORY"

.field public static final MUSIC_BROCAST_CHANGE_PLAY_MODE:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE"

.field public static final MUSIC_BROCAST_MODE_KEY:Ljava/lang/String; = "com.winca.Music.PLAY_MODE"

.field public static final MUSIC_BROCAST_PLAYING_INFO:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_PLAYING_INFO"

.field public static final MUSIC_BROCAST_PLAY_MODE:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_PLAY_MODE"

.field public static final MUSIC_BROCAST_SET_PLAY_MODE:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE"

.field public static final MUSIC_BROCAST_STATE:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_STATE"

.field public static final MUSIC_EXIT_ACTION:Ljava/lang/String; = "com.winca.music_EXIT_ACTION"

.field public static final MUSIC_HARDDISK_MOUNT_PATH:Ljava/lang/String; = "/mnt/harddisk/"

.field public static final MUSIC_OPERATION_BROCAST:Ljava/lang/String; = "com.winca.MusicPlay.OPERATION_BROCAST"

.field public static final MUSIC_OPERATION_BROCAST_COM:Ljava/lang/String; = "com.winca.MusicPlay.OPERATION_BROCAST"

.field public static final MUSIC_OPERATION_COMMAND_KEY:Ljava/lang/String; = "com.winca.MusicPlay.COMMAND_KEY"

.field public static final MUSIC_OPERATION_ID_KEY:Ljava/lang/String; = "Id"

.field public static final MUSIC_OPERATION_MODE_KEY:Ljava/lang/String; = "com.winca.MusicPlay.MODE_KEY"

.field public static final MUSIC_OPERATION_NEXT:Ljava/lang/String; = "winca.music.Next"

.field public static final MUSIC_OPERATION_PAUSE:Ljava/lang/String; = "winca.music.pause"

.field public static final MUSIC_OPERATION_PLAY:Ljava/lang/String; = "winca.music.paly"

.field public static final MUSIC_OPERATION_PRE:Ljava/lang/String; = "winca.music.Pre"

.field public static final MUSIC_OPERATION_RESET:Ljava/lang/String; = "winca.music.reset"

.field public static final MUSIC_OPERATION_STATE_KEY:Ljava/lang/String; = "com.winca.MusicPlay.STATE_KEY"

.field public static final MUSIC_OPERATION_STOP:Ljava/lang/String; = "winca.music.stop"

.field public static final MUSIC_OPERATION_UPDATALIST_BRAOCAST:Ljava/lang/String; = "com.winca.MusicPlay.UPDATA_LIST"

.field public static final MUSIC_OPERATION_UPDATA_LIST_KEY:Ljava/lang/String; = "com.winca.MusicPlay.OPERATION_Updata"

.field public static final MUSIC_SDCARD_MOUNT_PATH:Ljava/lang/String; = "/mnt/sdcard/sdcard"

.field public static final MUSIC_SEEK_BAR:Ljava/lang/String; = "com.winca.music.seekBar"

.field public static final MUSIC_SERVICE_NAME:Ljava/lang/String; = "com.winca.music.MUSICSERVICE_ACTION"

.field public static final MUSIC_SET_PALY_MODE_KEY:Ljava/lang/String; = "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY"

.field public static final MUSIC_SHARE_ID_KEY:Ljava/lang/String; = "MUSIC_ID_KEY"

.field public static final MUSIC_SHARE_ISPLAYHISOTYR:Ljava/lang/String; = "MUSIC_SP_ISHISTORY"

.field public static final MUSIC_SHARE_LAST_USB_VOLUME:Ljava/lang/String; = "MUSIC_SHARE_LAST_USB_VOLUME"

.field public static final MUSIC_SHARE_MUSIC_LIB:Ljava/lang/String; = "MUSIC_SP_MUSIC_LIB"

.field public static final MUSIC_SHARE_PATH_KEY:Ljava/lang/String; = "MUSIC_PATH_KEY"

.field public static final MUSIC_SHARE_PLAYMODE_KEY:Ljava/lang/String; = "MUSIC_POSITION_KEY"

.field public static final MUSIC_SHARE_POSITION_KEY:Ljava/lang/String; = "MUSIC_POSITION_KEY"

.field public static final MUSIC_SHARE_SATATE_KEY:Ljava/lang/String; = "MUSIC_PLAY_STATE_KEY"

.field public static final MUSIC_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final MUSIC_STATA_NOPLAY:I = 0x0

.field public static final MUSIC_STATA_PAUSE:I = 0x2

.field public static final MUSIC_STATA_PLAYING:I = 0x1

.field public static final MUSIC_STATA_STOP:I = 0x3

.field public static final MUSIC_UDISK_MOUNT_PATH:Ljava/lang/String; = "/mnt/udisk"

.field public static final MUSIC_UDISK_MOUNT_PATH1:Ljava/lang/String; = "/mnt/udisk1"

.field public static final REMOTE_SERVER_CONNECT_ACTION:Ljava/lang/String; = "com.winca.music.REMOTE_SERVER_CONNECT_ACTION"

.field public static final RESTART_MEDIA_SERVICE_ACTION:Ljava/lang/String; = "com.winca.scanmedia.ACTION_RESTARTSERVICE"

.field public static final SCANMEDIA_MUSIC_SCAN_ACTION:Ljava/lang/String; = "com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION"

.field public static final SCANMEDIA_MUSIC_SCAN_DONE_ACTION:Ljava/lang/String; = "com.winca.service.scannerMedia.SCAN_FINISHED"

.field public static final SDStorageStyle:I = 0x0

.field public static final SEARCH_AUDIO:I = 0x1

.field public static final SEARCH_IMAGE:I = 0x2

.field public static final SEARCH_VIDEO:I = 0x3

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_ON:I = 0x1

.field public static final SOURCETYP_IS_IN_CURRENT:Ljava/lang/String; = "source_type_is_in_current_page"

.field public static final SOURCE_AUDIO_TYPE:I = 0x0

.field public static final SOURCE_IMAGE_TYPE:I = 0x1

.field public static final SOURCE_TYPE_AUDIO:I = 0x13

.field public static final SOURCE_VIDEO_TYPE:I = 0x2

.field public static final SPARAM_SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field public static final STYLE_UNKNOWN:I = -0x1

.field public static final SWITCH_SOURCETYPE_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.switchsource"

.field public static final SYSTEM_EXIT_ACTION:Ljava/lang/String; = "com.winca.music.ACTION_SYSTEM_EXIT"

.field public static final UDickStorageStyle:I = 0x1

.field public static final UDickStorageStyle1:I = 0x3

.field public static final VIDEO_ACTION:Ljava/lang/String; = "com.winca.video.VIDEO_ACTION"

.field public static final mMusicPlayState:I
