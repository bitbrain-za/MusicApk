.class public interface abstract Lcom/winca/music/SystemDef;
.super Ljava/lang/Object;
.source "SystemDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/winca/music/SystemDef$DataLocation;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE:Ljava/lang/String; = "com.winca.audio.STATE"

.field public static final ACTION_AUDIO_STATE_MIX:Ljava/lang/String; = "audio.mix"

.field public static final ACTION_AUDIO_STATE_MUSIC:Ljava/lang/String; = "audio.music"

.field public static final ACTION_AUDIO_STATE_OTHER:Ljava/lang/String; = "audio.other"

.field public static final ACTION_BACK_SEAT_DO_QUERY_STRING:Ljava/lang/String; = "query"

.field public static final ACTION_BACK_SEAT_DO_SET_STRING:Ljava/lang/String; = "set"

.field public static final ACTION_BACK_SEAT_DO_STRING:Ljava/lang/String; = "do"

.field public static final ACTION_BACK_SEAT_VIDEO_REQUEST:Ljava/lang/String; = "com.winca.backseat.video.request"

.field public static final ACTION_BACK_SEAT_VIDEO_RESPONSE:Ljava/lang/String; = "com.winca.backseat.video.response"

.field public static final ACTION_LASTMODEL_STATUS_ERROR:Ljava/lang/String; = "com.winca.system.lastmodel.error"

.field public static final ACTION_LASTMODEL_STATUS_READ:Ljava/lang/String; = "com.winca.system.lastmodel.read"

.field public static final ACTION_LASTMODEL_STATUS_SAVE:Ljava/lang/String; = "com.winca.system.lastmodel.save"

.field public static final ACTION_LASTMODEL_STATUS_SAVED:Ljava/lang/String; = "com.winca.system.lastmodel.saved"

.field public static final ACTION_PLAYER_SET_TITLE:Ljava/lang/String; = "winca.bluetooth.action.PLAYER_SET_TITLE"

.field public static final ACTION_PLAY_STATUS:Ljava/lang/String; = "com.winca.playstatus"

.field public static final ACTION_PLAY_STEXT:Ljava/lang/String; = "com.winca.playtext"

.field public static final ACTION_START_AUX1:Ljava/lang/String; = "com.winca.system.start.aux1"

.field public static final ACTION_START_AUX2:Ljava/lang/String; = "com.winca.system.start.aux2"

.field public static final ACTION_START_CD:Ljava/lang/String; = "com.winca.system.start.cd"

.field public static final ACTION_START_CMMB:Ljava/lang/String; = "com.winca.system.start.cmmb"

.field public static final ACTION_START_DVD:Ljava/lang/String; = "com.winca.system.start.dvd"

.field public static final ACTION_START_RADIO:Ljava/lang/String; = "com.winca.system.start.radio"

.field public static final ACTION_START_ROM:Ljava/lang/String; = "com.winca.system.start.rom"

.field public static final ACTION_START_SDCARD:Ljava/lang/String; = "com.winca.system.start.sdcard"

.field public static final ACTION_START_USB:Ljava/lang/String; = "com.winca.system.start.usb"

.field public static final ACTION_STATUSBAR_EXPAND_CHANGE:Ljava/lang/String; = "com.android.systemui.statusbar.phone.ACTION_STATUSBAR_EXPAND_CHANGE"

.field public static final ACTION_STATUSBAR_EXPAND_CHANGE_EXTRA:Ljava/lang/String; = "com.android.systemui.statusbar.phone.ACTION_STATUSBAR_EXPAND_CHANGE_EXTRA"

.field public static final ALBUM_NAME:Ljava/lang/String; = "music_album_name"

.field public static final ARTIST_NAME:Ljava/lang/String; = "music_artist_name"

.field public static final AUDIO_CHANNEL_REQUEST:I = 0x0

.field public static final AUDIO_PLAYER_KEY_TYPE:Ljava/lang/String; = "com.winca.service.audioplayer.KEY_TYPE"

.field public static final AUDIO_PLAYER_KEY_TYPE_ACTION:Ljava/lang/String; = "com.winca.service.audioplayer.action.KEY_TYPE"

.field public static final AUDIO_PLAYER_KEY_TYPE_NEXT:I = 0x2

.field public static final AUDIO_PLAYER_KEY_TYPE_PAUSE:I = 0x4

.field public static final AUDIO_PLAYER_KEY_TYPE_PREV:I = 0x3

.field public static final AUDIO_PLAYER_ONNEWINTENT:Ljava/lang/String; = "com.winca.service.audioplayer.action.AUDIO_PLAYER_ONNEWINTENT"

.field public static final AUDIO_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.audio"

.field public static final AUX1_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.aux1"

.field public static final AUX1_VIDEO_CHANNEL_NUM:I = 0x3

.field public static final AUX2_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.aux2"

.field public static final AUX2_VIDEO_CHANNEL_NUM:I = 0x4

.field public static final BLUETOOTH_KEY_TYPE:Ljava/lang/String; = "com.winca.service.bluetooth.KEY_TYPE"

.field public static final BLUETOOTH_KEY_TYPE_ACTION:Ljava/lang/String; = "com.winca.service.bluetooth.action.KEY_TYPE"

.field public static final BLUETOOTH_MANAGER_OPERATION:I = 0x2

.field public static final BLUETOOTH_MANAGER_STATUS:I = 0x0

.field public static final BLUETOOTH_MANAGER_STORE:I = 0x1

.field public static final BLUETOOTH_VIEW_ID:I = 0x4

.field public static final BOTH_SEAT_REQUEST:I = 0x2

.field public static final BT_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.bt"

.field public static final CARD_IN:I = 0x0

.field public static final CARD_OUT:I = 0x1

.field public static final CARD_SCAN_FINISHED:I = 0x2

.field public static final CAR_RECORD__NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.carrecord"

.field public static final CHANNEL_DESELECTED:Ljava/lang/String; = "CHANNEL_DESELECTED"

.field public static final CHANNEL_NOTIFICATION:Ljava/lang/String; = "CHANNEL_NOTIFICATION"

.field public static final CHANNEL_SELECTED:Ljava/lang/String; = "CHANNEL_SELECTED"

.field public static final CMMB_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.cmmb"

.field public static final CMMB_VIDEO_CHANNEL_NUM:I = 0x1

.field public static final CMMB_VIEW_ID:I = 0x3

.field public static final CONTROLLER_DISC_IN:I = 0x1

.field public static final CONTROLLER_DISC_OUT:I = 0x0

.field public static final CONTROLLER_DISC_READY:I = 0x2

.field public static final CURRENT_MUSIC_TIME:Ljava/lang/String; = "music_current_time"

.field public static final CURRENT_VIDEO_TIME:Ljava/lang/String; = "video_current_time"

.field public static final DATA_APP_SCAN_DONE:Ljava/lang/String; = "data_app_scan_done"

.field public static final DEFAULT_INDEX_FOR_START:I = 0x2

.field public static final DEFAULT_VALUE:I = -0x1

.field public static final DISC_BAD:I = 0x0

.field public static final DISC_EJECT_IN_AUTO:I = 0x0

.field public static final DISC_EJECT_IN_MANUAL:I = 0x1

.field public static final DISC_EJECT_IN_START:I = 0x0

.field public static final DISC_EJECT_IN_STOP:I = 0x1

.field public static final DISC_EJECT_OUT_START:I = 0x2

.field public static final DISC_EJECT_OUT_STOP:I = 0x3

.field public static final DISC_NORMAL:I = 0x1

.field public static final DISC_SOURCE_CFM_CLOSE:I = 0x0

.field public static final DISC_SOURCE_CFM_OPEN:I = 0x1

.field public static final DISC_SUPPORT_FILE_EXIST:I = 0x1

.field public static final DISC_SUPPORT_FILE_NOEXIST:I = 0x0

.field public static final DISC_TYPE_CD:I = 0x2

.field public static final DISC_TYPE_DVD:I = 0x0

.field public static final DISC_TYPE_ROM:I = 0x3

.field public static final DISC_TYPE_UNKNOWN:I = 0x7

.field public static final DISC_TYPE_UPDATE:I = 0xf

.field public static final DISC_TYPE_VCD:I = 0x1

.field public static final DVR_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.dvr"

.field public static final EXTRA_LASTMODEL_ERROR_TYPE:Ljava/lang/String; = "com.winca.lastmodel.error.type"

.field public static final EXTRA_PLAYER_SET_DETAIL:Ljava/lang/String; = "android.bluetooth.extra.PLAYER_SET_DETAIL"

.field public static final EXTRA_PLAYER_SET_TITLE:Ljava/lang/String; = "android.bluetooth.extra.PLAYER_SET_TITLE"

.field public static final FM_VIEW_ID:I = 0x2

.field public static final FRONT_SEAT_REQUEST:I = 0x0

.field public static final FULL_SCREEN_MENU_ACTION:Ljava/lang/String; = "FULL_SCREEN_MENU_ACTION"

.field public static final GPS_VIEW_ID:I = 0x1

.field public static final HAND_BREAK_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.handbreak"

.field public static final HAND_BREAK_ACTION_EXTRA:Ljava/lang/String; = "com.winca.audiochannelmanager.handbreak.extra"

.field public static final HOME_VIEW_ID:I = 0x0

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final IPOD_KEY_TYPE:Ljava/lang/String; = "com.winca.service.ipod.KEY_TYPE"

.field public static final IPOD_KEY_TYPE_ACTION:Ljava/lang/String; = "com.winca.service.ipod.action.KEY_TYPE"

.field public static final IPOD_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.ipod"

.field public static final KEY_VALUE_BOTTOM:I = 0x11

.field public static final KEY_VALUE_LEFT:I = 0xe

.field public static final KEY_VALUE_RIGHT:I = 0xf

.field public static final KEY_VALUE_UP:I = 0x10

.field public static final LAST:I = 0x3

.field public static final LASTMODEL_ERROR_TYPE_NOMPEG:I = 0x2

.field public static final LASTMODEL_ERROR_TYPE_NONE:I = 0x0

.field public static final LASTMODEL_ERROR_TYPE_NOSDCARD:I = 0x1

.field public static final LASTMODEL_ERROR_TYPE_NOUSB:I = 0x3

.field public static final LASTMODEL_STATUS_ERROR:Ljava/lang/String; = "com.winca.lastmodel.error"

.field public static final LASTMODEL_STATUS_ERROR_INT:I = 0x1

.field public static final LASTMODEL_STATUS_NONE:I = -0x1

.field public static final LASTMODEL_STATUS_READ:Ljava/lang/String; = "com.winca.lastmodel.read"

.field public static final LASTMODEL_STATUS_SAVE:Ljava/lang/String; = "com.winca.lastmodel.save"

.field public static final LASTMODEL_STATUS_SAVED:Ljava/lang/String; = "com.winca.lastmodel.saved"

.field public static final LASTMODEL_STATUS_SAVED_INT:I = 0x0

.field public static final LASTMODE_TYPE_BLUETOOTH:I = 0x1

.field public static final LASTMODE_TYPE_NONE:I = -0x1

.field public static final LASTMODE_TYPE_REBOOT:I = 0x0

.field public static final LIST_VIEW_ALBUM:I = 0x2

.field public static final LIST_VIEW_ALBUM_TRACK:I = 0x6

.field public static final LIST_VIEW_ALL:I = 0x0

.field public static final LIST_VIEW_ARTIST:I = 0x3

.field public static final LIST_VIEW_CURR:I = 0x4

.field public static final LIST_VIEW_FILE:I = 0x5

.field public static final LIST_VIEW_FOLDER:I = 0x1

.field public static final LOCAL_MEPG_PLAYER_POS:I = 0x1

.field public static final LOCAL_SDMUSIC_PLAYER_POS:I = 0x0

.field public static final LOCAL_USBMUSIC_PLAYER_POS:I = 0x2

.field public static final MCU_CHANNEL_APP:I = 0xe

.field public static final MCU_CHANNEL_AUX1:I = 0x5

.field public static final MCU_CHANNEL_AUX2:I = 0x6

.field public static final MCU_CHANNEL_BT:I = 0x4

.field public static final MCU_CHANNEL_CAMARA_LENS:I = 0xb

.field public static final MCU_CHANNEL_CAR_RECORD:I = 0xf

.field public static final MCU_CHANNEL_CMMB:I = 0xa

.field public static final MCU_CHANNEL_DVD:I = 0x2

.field public static final MCU_CHANNEL_FM:I = 0x1

.field public static final MCU_CHANNEL_IPOD:I = 0xc

.field public static final MCU_CHANNEL_MPUAUDIO:I = 0x8

.field public static final MCU_CHANNEL_MPUVIDIO:I = 0x7

.field public static final MCU_CHANNEL_NAVI:I = 0x3

.field public static final MCU_CHANNEL_VIDEORECORD:I = 0xd

.field public static final MCU_CHANNEL_VIRTUALDISCBOX:I = 0x9

.field public static final MCU_MENU_APP:I = 0xf

.field public static final MCU_MENU_AUDIOPLAY:I = 0xd

.field public static final MCU_MENU_AUDIO_SETTING:I = 0x18

.field public static final MCU_MENU_AUX1:I = 0x8

.field public static final MCU_MENU_AUX2:I = 0x9

.field public static final MCU_MENU_BT:I = 0x3

.field public static final MCU_MENU_CAM:I = 0xa

.field public static final MCU_MENU_CAR_INFO:I = 0x30

.field public static final MCU_MENU_CAR_RECORD:I = 0x1a

.field public static final MCU_MENU_CD:I = 0x5

.field public static final MCU_MENU_DVD:I = 0x4

.field public static final MCU_MENU_DVR:I = 0xe

.field public static final MCU_MENU_ENGINEER_MODE:I = 0x1c

.field public static final MCU_MENU_FORCED_BACKCAR:I = 0x12

.field public static final MCU_MENU_HANDBRAKE:I = 0x16

.field public static final MCU_MENU_INFO_VIEW:I = 0x31

.field public static final MCU_MENU_IPOD:I = 0xb

.field public static final MCU_MENU_NAVI:I = 0x15

.field public static final MCU_MENU_NAVI_PIP:I = 0x1b

.field public static final MCU_MENU_NOSIGNAL:I = 0x13

.field public static final MCU_MENU_NULL:I = 0xff

.field public static final MCU_MENU_OPENLOGO:I = 0x14

.field public static final MCU_MENU_POWWEROFF:I = 0x19

.field public static final MCU_MENU_RADIO:I = 0x2

.field public static final MCU_MENU_SETUP:I = 0x10

.field public static final MCU_MENU_SRC:I = 0x1

.field public static final MCU_MENU_STUDY_SWC:I = 0x17

.field public static final MCU_MENU_TV:I = 0x7

.field public static final MCU_MENU_VCDC:I = 0x6

.field public static final MCU_MENU_VIDEOPLAY:I = 0xc

.field public static final MCU_MENU_VIDEOSETUP:I = 0x11

.field public static final MEDIA_AO_EXIST:I = 0x0

.field public static final MEDIA_AP_EXIST:I = 0x5

.field public static final MEDIA_AVP_EXIST:I = 0x6

.field public static final MEDIA_AV_EXIST:I = 0x3

.field public static final MEDIA_EXTERNAL_EXTSD:Ljava/lang/String; = "external_extsd"

.field public static final MEDIA_EXTERNAL_SD:Ljava/lang/String; = "external"

.field public static final MEDIA_EXTERNAL_UDISK:Ljava/lang/String; = "external_udisk"

.field public static final MEDIA_META_CHANGED:Ljava/lang/String; = "com.winca.multiplayer.music.metachanged"

.field public static final MEDIA_MODE_LIST:I = 0x1

.field public static final MEDIA_MODE_PLAYER:I = 0x0

.field public static final MEDIA_NONE_EXIST:I = 0x7

.field public static final MEDIA_PLAY_CHANGE:Ljava/lang/String; = "com.winca.multiplayer.media.play.change"

.field public static final MEDIA_PLAY_CHANGE_NEXT:I = 0x4

.field public static final MEDIA_PLAY_CHANGE_NONE:I = 0x0

.field public static final MEDIA_PLAY_CHANGE_PAUSE:I = 0x2

.field public static final MEDIA_PLAY_CHANGE_PLAY:I = 0x1

.field public static final MEDIA_PLAY_CHANGE_PREVIOUS:I = 0x3

.field public static final MEDIA_PLAY_CHANGE_STOP:I = 0x5

.field public static final MEDIA_PO_EXIST:I = 0x2

.field public static final MEDIA_TYPE_AUDIO:I = 0x0

.field public static final MEDIA_TYPE_NONE:I = -0x1

.field public static final MEDIA_TYPE_PHOTO:I = 0x2

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field public static final MEDIA_VO_EXIST:I = 0x1

.field public static final MEDIA_VP_EXIST:I = 0x4

.field public static final MPEG_AUDIO_CHANNEL_2_1:I = 0x2

.field public static final MPEG_AUDIO_CHANNEL_5_1:I = 0x5

.field public static final MPEG_AUDIO_CHANNEL_DIVX_TYPE:I = 0x40

.field public static final MPEG_AUDIO_CHANNEL_DOLBY:I = 0x5

.field public static final MPEG_AUDIO_CHANNEL_DTS:I = 0x3

.field public static final MPEG_AUDIO_CHANNEL_DVD_TYPE:I = 0x80

.field public static final MPEG_AUDIO_CHANNEL_LPCM:I = 0x2

.field public static final MPEG_AUDIO_CHANNEL_MP3:I = 0x4

.field public static final MPEG_AUDIO_CHANNEL_MPEG:I = 0x1

.field public static final MPEG_AUDIO_CHANNEL_NONE:I = 0x0

.field public static final MPEG_AUDIO_CHANNEL_NO_TYPE:I = 0x0

.field public static final MPEG_AUDIO_CHANNEL_VCD_LEFT_TYPE:I = 0x2

.field public static final MPEG_AUDIO_CHANNEL_VCD_MIX_TYPE:I = 0x4

.field public static final MPEG_AUDIO_CHANNEL_VCD_RIGHT_TYPE:I = 0x3

.field public static final MPEG_AUDIO_CHANNEL_VCD_STERO_TYPE:I = 0x1

.field public static final MPEG_DEFAULT_VALUE:I = -0x3

.field public static final MPEG_ID3_COVER:I = 0x14

.field public static final MPEG_ID3_MP3_ALBUM:I = 0x2

.field public static final MPEG_ID3_MP3_ARTIST:I = 0x1

.field public static final MPEG_ID3_MP3_COMMENT:I = 0x6

.field public static final MPEG_ID3_MP3_GENRE:I = 0x5

.field public static final MPEG_ID3_MP3_NAME:I = 0x0

.field public static final MPEG_ID3_MP3_TRACKNUM:I = 0x4

.field public static final MPEG_ID3_MP3_YEAR:I = 0x3

.field public static final MPEG_ID3_WMA_ARTIST:I = 0x11

.field public static final MPEG_ID3_WMA_COPYRIGHT:I = 0x12

.field public static final MPEG_ID3_WMA_DESCRIPTION:I = 0x13

.field public static final MPEG_ID3_WMA_TITLE:I = 0x10

.field public static final MPEG_LANG_INDEX_CHINESE:I = 0x2

.field public static final MPEG_LANG_INDEX_CZECH:I = 0xb

.field public static final MPEG_LANG_INDEX_DANISH:I = 0x11

.field public static final MPEG_LANG_INDEX_DUTCH:I = 0xf

.field public static final MPEG_LANG_INDEX_ENGLISH:I = 0x1

.field public static final MPEG_LANG_INDEX_FINISH:I = 0x13

.field public static final MPEG_LANG_INDEX_FRENCH:I = 0x5

.field public static final MPEG_LANG_INDEX_GERMAN:I = 0x7

.field public static final MPEG_LANG_INDEX_GREEK:I = 0x14

.field public static final MPEG_LANG_INDEX_HINDI:I = 0xe

.field public static final MPEG_LANG_INDEX_HUNGARIAN:I = 0xc

.field public static final MPEG_LANG_INDEX_ICELANDIC:I = 0xd

.field public static final MPEG_LANG_INDEX_ITALIAN:I = 0x18

.field public static final MPEG_LANG_INDEX_JAPANESE:I = 0x4

.field public static final MPEG_LANG_INDEX_KOREAN:I = 0x16

.field public static final MPEG_LANG_INDEX_LATIN:I = 0x8

.field public static final MPEG_LANG_INDEX_NORWEGIAN:I = 0x15

.field public static final MPEG_LANG_INDEX_NULL:I = 0x0

.field public static final MPEG_LANG_INDEX_POLISH:I = 0xa

.field public static final MPEG_LANG_INDEX_PORTUGUESE:I = 0x6

.field public static final MPEG_LANG_INDEX_RUSSIAN:I = 0x3

.field public static final MPEG_LANG_INDEX_SPANISH:I = 0x9

.field public static final MPEG_LANG_INDEX_SWEDISH:I = 0x12

.field public static final MPEG_LANG_INDEX_THAI:I = 0x17

.field public static final MPEG_LANG_INDEX_TURKISH:I = 0x10

.field public static final MPEG_PLAYLIST_AUDIO_FILE:I = 0x1

.field public static final MPEG_PLAYLIST_AUDIO_FOLDER:I = 0x0

.field public static final MPEG_PLAYLIST_PHOTO_FILE:I = 0x5

.field public static final MPEG_PLAYLIST_PHOTO_FOLDER:I = 0x4

.field public static final MPEG_PLAYLIST_VIDEO_FILE:I = 0x3

.field public static final MPEG_PLAYLIST_VIDEO_FOLDER:I = 0x2

.field public static final MPEG_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.mpeg"

.field public static final MPEG_SERVICE:Ljava/lang/String; = "com.winca.service.mpegNotification"

.field public static final MPEG_UPDATA_MODE_ENTER:I = 0x40

.field public static final MPEG_UPDATA_MODE_EXIT:I = 0x41

.field public static final MPEG_UPDATA_MODE_START:I = 0x42

.field public static final MPEG_VCDC_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.mpeg.vcdc"

.field public static final MPEG_VIDEO_CHANNEL_NUM:I = 0x0

.field public static final MPEG_VIDEO_CLOSE:I = 0x0

.field public static final MPEG_VIDEO_OPEN:I = 0x1

.field public static final MPEG_VIEW_ID:I = 0x6

.field public static final MPU_VIDEO_CHANNEL_NUM:I = 0x5

.field public static final MSG_TIP_ANGLE:I = 0x20

.field public static final MSG_TIP_CD_RIP_ENABLE:I = 0x1f

.field public static final MSG_TIP_FB_X2:I = 0x16

.field public static final MSG_TIP_FB_X20:I = 0x19

.field public static final MSG_TIP_FB_X4:I = 0x17

.field public static final MSG_TIP_FB_X8:I = 0x18

.field public static final MSG_TIP_FF_X2:I = 0x12

.field public static final MSG_TIP_FF_X20:I = 0x15

.field public static final MSG_TIP_FF_X4:I = 0x13

.field public static final MSG_TIP_FF_X8:I = 0x14

.field public static final MSG_TIP_INVALID:I = 0x1

.field public static final MSG_TIP_JPEG_ZOOM_1_3:I = 0x21

.field public static final MSG_TIP_JPEG_ZOOM_2_0:I = 0x22

.field public static final MSG_TIP_JPEG_ZOOM_RESET:I = 0x23

.field public static final MSG_TIP_NEXT:I = 0x2

.field public static final MSG_TIP_PAUSE:I = 0x4

.field public static final MSG_TIP_PBC_OFF:I = 0x1e

.field public static final MSG_TIP_PBC_ON:I = 0x1d

.field public static final MSG_TIP_PLAY:I = 0x6

.field public static final MSG_TIP_PREV:I = 0x3

.field public static final MSG_TIP_REPEAT_A:I = 0x1a

.field public static final MSG_TIP_REPEAT_AB:I = 0x1b

.field public static final MSG_TIP_REPEAT_AB_OFF:I = 0x1c

.field public static final MSG_TIP_REPEAT_ALL:I = 0x9

.field public static final MSG_TIP_REPEAT_CHAPTER:I = 0x8

.field public static final MSG_TIP_REPEAT_FOLDER:I = 0xb

.field public static final MSG_TIP_REPEAT_OFF:I = 0xc

.field public static final MSG_TIP_REPEAT_TITLE:I = 0x7

.field public static final MSG_TIP_REPEAT_TRACK:I = 0xa

.field public static final MSG_TIP_RESUME:I = 0x0

.field public static final MSG_TIP_ROTATE_LEFT:I = 0x24

.field public static final MSG_TIP_ROTATE_RIGHT:I = 0x25

.field public static final MSG_TIP_SCAN_OFF:I = 0x10

.field public static final MSG_TIP_SCAN_ON:I = 0xf

.field public static final MSG_TIP_SHUFFLE_OFF:I = 0xe

.field public static final MSG_TIP_SHUFFLE_ON:I = 0xd

.field public static final MSG_TIP_STOP:I = 0x5

.field public static final MSG_TIP_ZOOM:I = 0x11

.field public static final NEXT:I = 0x2

.field public static final NORMAL_STATE:I = 0x0

.field public static final NOTIFIY_TYPE_DISC_DEVICE:I = 0x0

.field public static final NOTIFIY_TYPE_DISC_INFO:I = 0x1

.field public static final NOTIFIY_TYPE_MISC:I = 0x3

.field public static final NOTIFIY_TYPE_PLAY_STATUS:I = 0x2

.field public static final NOTIFIY_TYPE_UNKNOWN:I = 0x4

.field public static final NOTIFY_CANCEL:I = 0x2

.field public static final NOTIFY_CAN_CLEAR:I = 0x0

.field public static final NOTIFY_MODE:Ljava/lang/String; = "notify_mode"

.field public static final NOTIFY_NO_CLEAR:I = 0x1

.field public static final NOTIFY_STATUS_ACTION:Ljava/lang/String; = "notify_status_action"

.field public static final NOTIFY_VALUE_UNKOWN:I = 0xffff

.field public static final NOW:I = 0x1

.field public static final PAUSE_STRING:Ljava/lang/String; = "\ufffd\ufffd\u0363\u05f4\u032c"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYER_MAX:I = 0x3

.field public static final PLAYING_STRING:Ljava/lang/String; = "\ufffd\ufffd\ufffd\u06b2\ufffd\ufffd\ufffd"

.field public static final PLAY_REPEAT_ALL:I = 0x3

.field public static final PLAY_REPEAT_CHAPTER:I = 0x5

.field public static final PLAY_REPEAT_FOLDER:I = 0x2

.field public static final PLAY_REPEAT_OFF:I = 0x0

.field public static final PLAY_REPEAT_ONE:I = 0x1

.field public static final PLAY_REPEAT_TITLE:I = 0x4

.field public static final PLAY_ROOTMENU_IN:I = 0x1

.field public static final PLAY_ROOTMENU_OUT:I = 0x0

.field public static final PLAY_SHUFFLE_OFF:I = 0x0

.field public static final PLAY_SHUFFLE_ON:I = 0x1

.field public static final PLAY_STATUS_BACKWARD_20X:I = 0xd

.field public static final PLAY_STATUS_BACKWARD_2X:I = 0xa

.field public static final PLAY_STATUS_BACKWARD_4X:I = 0xb

.field public static final PLAY_STATUS_BACKWARD_8X:I = 0xc

.field public static final PLAY_STATUS_BACKWARD_OFF:I = 0x9

.field public static final PLAY_STATUS_FORWARD_20X:I = 0x8

.field public static final PLAY_STATUS_FORWARD_2X:I = 0x5

.field public static final PLAY_STATUS_FORWARD_4X:I = 0x6

.field public static final PLAY_STATUS_FORWARD_8X:I = 0x7

.field public static final PLAY_STATUS_FORWARD_OFF:I = 0x4

.field public static final PLAY_STATUS_LOADING:I = 0xe

.field public static final PLAY_STATUS_PAUSE:I = 0x1

.field public static final PLAY_STATUS_PLAY:I = 0x0

.field public static final PLAY_STATUS_PRE_STOP:I = 0x2

.field public static final PLAY_STATUS_STOP:I = 0x3

.field public static final PLAY_TYPE_AUDIO:I = 0x0

.field public static final PLAY_TYPE_PHOTO:I = 0x2

.field public static final PLAY_TYPE_VIDEO:I = 0x1

.field public static final RADIO_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.radio"

.field public static final REARCAM_VIDEO_CHANNEL_NUM:I = 0x2

.field public static final REAR_SEAT_REQUEST:I = 0x1

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final ROM_TYPE_AUDIO:I = 0x1

.field public static final ROM_TYPE_PHOTO:I = 0x2

.field public static final ROM_TYPE_VIDEO:I = 0x3

.field public static final RUNNING_SELECTED_STATE:I = 0x3

.field public static final RUNNING_STATE:I = 0x1

.field public static final SAVE_CHANNEL_MENU_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.SAVE_CHANNEL_MENU_ACTION"

.field public static final SAVE_CHANNEL_MENU_EXTRA:Ljava/lang/String; = "com.winca.audiochannelmanager.SAVE_CHANNEL_MENU_EXTRA"

.field public static final SD_MEDIA_TYPE:Ljava/lang/String; = "sd_media_type"

.field public static final SD_VIEW_ID:I = 0x7

.field public static final SELECTED_STATE:I = 0x2

.field public static final SERVICE_AUX_READY:Ljava/lang/String; = "service_aux_radio"

.field public static final SERVICE_AUX_STATUS:Ljava/lang/String; = "com.winca.service.aux"

.field public static final SERVICE_BT_READY:Ljava/lang/String; = "bt_service_ready"

.field public static final SERVICE_BT_STATUS:Ljava/lang/String; = "com.winca.service.bt"

.field public static final SERVICE_CHANGED:Ljava/lang/String; = "com.winca.service.change"

.field public static final SERVICE_DVR_READY:Ljava/lang/String; = "service_videorecorder"

.field public static final SERVICE_DVR_STATUS:Ljava/lang/String; = "com.winca.service.videorecorder"

.field public static final SERVICE_INTERFACE_AUDIOCONTROL:I = 0x1

.field public static final SERVICE_INTERFACE_AUX:I = 0x6

.field public static final SERVICE_INTERFACE_BLUETOOTH:I = 0x3

.field public static final SERVICE_INTERFACE_DVR:I = 0x9

.field public static final SERVICE_INTERFACE_IPOD:I = 0x8

.field public static final SERVICE_INTERFACE_MAX:I = 0xa

.field public static final SERVICE_INTERFACE_MISC:I = 0x4

.field public static final SERVICE_INTERFACE_MULTIPLAYER:I = 0x0

.field public static final SERVICE_INTERFACE_NONE:I = -0x1

.field public static final SERVICE_INTERFACE_RADIO:I = 0x2

.field public static final SERVICE_INTERFACE_SETTING:I = 0x7

.field public static final SERVICE_INTERFACE_TV:I = 0x5

.field public static final SERVICE_IPETRONIK_READY:Ljava/lang/String; = "service_ipetronik"

.field public static final SERVICE_IPETRONIK_STATUS:Ljava/lang/String; = "com.winca.service.ipetronik"

.field public static final SERVICE_IPOD_READY:Ljava/lang/String; = "service_ready_ipod"

.field public static final SERVICE_IPOD_STATUS:Ljava/lang/String; = "com.winca.service.ipod"

.field public static final SERVICE_MPEG_READY:Ljava/lang/String; = "service_ready_mpeg"

.field public static final SERVICE_MPEG_STATUS:Ljava/lang/String; = "com.winca.service.mpeg"

.field public static final SERVICE_RADIO_READY:Ljava/lang/String; = "service_ready_radio"

.field public static final SERVICE_RADIO_STATUS:Ljava/lang/String; = "com.winca.service.radio"

.field public static final SERVICE_STATUS:Ljava/lang/String; = "com.winca.service.status"

.field public static final SERVICE_STATUS_ALLCONNECTED:Ljava/lang/String; = "com.winca.service.status.allconnected"

.field public static final SERVICE_STATUS_QUERY:Ljava/lang/String; = "com.winca.service.status.query"

.field public static final SERVICE_TV_READY:Ljava/lang/String; = "service_tv_radio"

.field public static final SERVICE_TV_STATUS:Ljava/lang/String; = "com.winca.service.tv"

.field public static final SERVICE_VOLUMEMANAGER_READY:Ljava/lang/String; = "service_ready_volumemanager"

.field public static final SERVICE_VOLUMEMANAGER_STATUS:Ljava/lang/String; = "com.winca.service.volumemanager"

.field public static final SETTING_MANAGER_OPERATION:I = 0x5

.field public static final SETTING_MANAGER_STATUS:I = 0x3

.field public static final SETTING_MANAGER_STORE:I = 0x4

.field public static final SETTING_VIEW_ID:I = 0x5

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final SHUFFLE_ON:I = 0x1

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field public static final SOURCETYP_IS_IN_CURRENT:Ljava/lang/String; = "source_type_is_in_current_page"

.field public static final SOURCE_CAR_RECORD:I = 0x11

.field public static final SOURCE_TYPE_3GPHONE:I = 0xb

.field public static final SOURCE_TYPE_APP:I = 0x12

.field public static final SOURCE_TYPE_AUDIO:I = 0x13

.field public static final SOURCE_TYPE_AUX1:I = 0x4

.field public static final SOURCE_TYPE_AUX2:I = 0x5

.field public static final SOURCE_TYPE_BACK:I = 0xe

.field public static final SOURCE_TYPE_BT:I = 0x7

.field public static final SOURCE_TYPE_BTA2DP:I = 0x7

.field public static final SOURCE_TYPE_BTPHONE:I = 0xa

.field public static final SOURCE_TYPE_CMMB:I = 0x8

.field public static final SOURCE_TYPE_DEFAULT:I = -0x1

.field public static final SOURCE_TYPE_DVR:I = 0x10

.field public static final SOURCE_TYPE_FM:I = 0x3

.field public static final SOURCE_TYPE_IPOD:I = 0x6

.field public static final SOURCE_TYPE_MPEG:I = 0x0

.field public static final SOURCE_TYPE_MPU:I = 0xd

.field public static final SOURCE_TYPE_NAVI:I = 0x15

.field public static final SOURCE_TYPE_REARCAMERA:I = 0x9

.field public static final SOURCE_TYPE_SD:I = 0x1

.field public static final SOURCE_TYPE_SHELL:I = 0xc

.field public static final SOURCE_TYPE_USB:I = 0x2

.field public static final SOURCE_TYPE_VCDC:I = 0xf

.field public static final SOURCE_TYPE_VIDEO:I = 0x14

.field public static final SPARAM_LASTMODEL_TYPE:Ljava/lang/String; = "com.winca.system.lastmodel.type"

.field public static final SPARAM_PASS_VIEW_ID:Ljava/lang/String; = "VIEWID"

.field public static final SPARAM_PLAY_CHANGE_CMD:Ljava/lang/String; = "com.winca.multiplayer.media.play.change.command"

.field public static final SPARAM_PLAY_STATUS:Ljava/lang/String; = "play_status"

.field public static final SPARAM_PLAY_TEXT:Ljava/lang/String; = "play_text"

.field public static final SPARAM_PLAY_TYPE:Ljava/lang/String; = "play_type"

.field public static final SPARAM_SERVICE_SOURCE:Ljava/lang/String; = "com.winca.service.source"

.field public static final SPARAM_SERVICE_STATUS:Ljava/lang/String; = "com.winca.service.status"

.field public static final SPARAM_SERVICE_STATUS_ALL:Ljava/lang/String; = "com.winca.service.status.all"

.field public static final SPARAM_SERVICE_STATUS_AUDIOCONTROL:Ljava/lang/String; = "com.winca.service.status.audiocontrol"

.field public static final SPARAM_SERVICE_STATUS_BLUETOOTH:Ljava/lang/String; = "com.winca.service.status.bluetooth"

.field public static final SPARAM_SERVICE_STATUS_MISC:Ljava/lang/String; = "com.winca.service.status.misc"

.field public static final SPARAM_SERVICE_STATUS_MULTIPLAYER:Ljava/lang/String; = "com.winca.service.status.multiplayer"

.field public static final SPARAM_SERVICE_STATUS_RADIO:Ljava/lang/String; = "com.winca.service.status.radio"

.field public static final SPARAM_SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field public static final SPARAM_STORAGE_MEDIATYPE:Ljava/lang/String; = "com.winca.storage.media_type"

.field public static final SPARAM_STORAGE_SOURCE:Ljava/lang/String; = "source_type"

.field public static final SPARAM_STORAGE_STATUS:Ljava/lang/String; = "com.winca.storage.status"

.field public static final START_THIRD_PARTY_APP_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.START_THIRD_PARTY_APP_ACTION"

.field public static final START_THIRD_PARTY_APP_ACTION_EXTRA:Ljava/lang/String; = "com.winca.audiochannelmanager.START_THIRD_PARTY_APP_EXTRA"

.field public static final STORAGE_STATUS_CHANGE:Ljava/lang/String; = "com.winca.storage.status.change"

.field public static final STORAGE_STATUS_EJECT:I = 0x3

.field public static final STORAGE_STATUS_INJECT:I = 0x2

.field public static final STORAGE_STATUS_MOUNTED:I = 0x6

.field public static final STORAGE_STATUS_NONE:I = 0x0

.field public static final STORAGE_STATUS_QUERY:Ljava/lang/String; = "com.winca.storage.status.query"

.field public static final STORAGE_STATUS_QUERYDONE:I = 0x4

.field public static final STORAGE_STATUS_RESIDENT:I = 0x1

.field public static final STORAGE_STATUS_SCANDONE:I = 0x5

.field public static final STORAGE_TYPE_MAX:I = 0x3

.field public static final STORAGE_TYPE_MPEG:I = 0x0

.field public static final STORAGE_TYPE_NONE:I = -0x1

.field public static final STORAGE_TYPE_SDCARD:I = 0x1

.field public static final STORAGE_TYPE_UDISK:I = 0x2

.field public static final SUBTITLE_SHOW_MODE_ALL:I = 0x2

.field public static final SUBTITLE_SHOW_MODE_OFF:I = 0x0

.field public static final SUBTITLE_SHOW_MODE_SIMPLE:I = 0x1

.field public static final SUB_MENU_NOSIGNAL:Ljava/lang/String; = "com.winca.audiochannelmanager.nosignal"

.field public static final SUB_MENU_NOSIGNAL_EXTRA:Ljava/lang/String; = "com.winca.audiochannelmanager.nosignal.extra"

.field public static final SWITCH_MENU_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.switchmenu"

.field public static final SWITCH_MENU_EXTRA:Ljava/lang/String; = "com.winca.audiochannelmanager.switchmenu.extra"

.field public static final SWITCH_SOURCETYPE_ACTION:Ljava/lang/String; = "com.winca.audiochannelmanager.switchsource"

.field public static final SYSTEM_REBOOT_TYPE_NONE:I = 0x0

.field public static final SYSTEM_REBOOT_TYPE_SERVICE_BINDERROR:I = 0x2

.field public static final SYSTEM_REBOOT_TYPE_SERVICE_DISCONNECT:I = 0x5

.field public static final SYSTEM_REBOOT_TYPE_SERVICE_NOTREADY:I = 0x6

.field public static final SYSTEM_REBOOT_TYPE_SERVICE_NOTRUN:I = 0x1

.field public static final SYSTEM_REBOOT_TYPE_TEST:I = -0x1

.field public static final SYSTEM_REBOOT_TYPE_THREAD_EXCEPTION:I = 0x4

.field public static final SYSTEM_REBOOT_TYPE_TRICYCLEUI_NEWERROR:I = 0x3

.field public static final SYSTEM_SHUT_DOWN_START:Ljava/lang/String; = "com.winca.shutdown_start"

.field public static final SYSTEM_UPDATE_DATETIME:Ljava/lang/String; = "com.winca.update.datetime"

.field public static final S_AUDIO_CHANNEL_ENV:Ljava/lang/String; = "D_AUDIO_CHANNEL_ENV"

.field public static final S_AUDIO_CHANNEL_LANG_ID:Ljava/lang/String; = "D_AUDIO_CHANNEL_LANG_ID"

.field public static final S_AUDIO_CHANNEL_MODE:Ljava/lang/String; = "D_AUDIO_CHANNEL_MODE"

.field public static final S_AUDIO_CHANNEL_TYPE:Ljava/lang/String; = "D_AUDIO_CHANNEL_TYPE"

.field public static final S_AUDIO_CURRENT_AUDIO_CHANNEL:Ljava/lang/String; = "D_AUDIO_CHANNELD_CURRENT"

.field public static final S_AUDIO_TOTAL_AUDIO_CHANNEL:Ljava/lang/String; = "D_AUDIO_CHANNELD_TOTAL"

.field public static final S_DISC_BAD_STATE:Ljava/lang/String; = "D_BADDISC_NOTIFIY"

.field public static final S_DISC_EJECT_ACTION:Ljava/lang/String; = "D_EJECT_ACTION_NOTIFIY"

.field public static final S_DISC_EJECT_STATE:Ljava/lang/String; = "D_EJECT_NOTIFIY"

.field public static final S_DISC_SUPPORT_STATE:Ljava/lang/String; = "D_SUPPORT_NOTIFIY"

.field public static final S_DISC_TYPE_STATE:Ljava/lang/String; = "D_TYPE_NOTIFIY"

.field public static final S_MPEG_TIP:Ljava/lang/String; = "I_MPEG_TIP_NOTIFY"

.field public static final S_MPEG_UPDATE_STATUS:Ljava/lang/String; = "D_MPEG_UPDATE_STATUS"

.field public static final S_MPEG_VIDEO_MODE_REQ:Ljava/lang/String; = "D_MPEG_VIDEO_MODE_REQ"

.field public static final S_PLAYLIST_REPORT_FILEDIR_NUMBER:Ljava/lang/String; = "D_PLAYLIST_FILEDIR_NUMBER"

.field public static final S_PLAYLIST_REPORT_FOLDER:Ljava/lang/String; = "D_PLAYLIST_FOLER"

.field public static final S_PLAYLIST_REPORT_MODE:Ljava/lang/String; = "D_PLAYLIST_MODE"

.field public static final S_PLAYLIST_REPORT_NUMBER:Ljava/lang/String; = "D_PLAYLIST_NUMBER"

.field public static final S_PLAYLIST_REPORT_PARENT_INDEX:Ljava/lang/String; = "D_PLAYLIST_PARENT_INDEX"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_1:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_1"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_2:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_2"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_3:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_3"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_4:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_4"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_5:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_5"

.field public static final S_PLAYLIST_REPORT_RECORD_INDEX_6:Ljava/lang/String; = "D_PLAYLIST_RECORD_INDEX_6"

.field public static final S_PLAYLIST_REPORT_TYPE:Ljava/lang/String; = "D_PLAYLIST_TYPE"

.field public static final S_PLAY_CURR_TIME:Ljava/lang/String; = "P_TRACK_PLAY_CURR_TIME"

.field public static final S_PLAY_DVD_RMENU:Ljava/lang/String; = "I_DVD_RMENU_NOTIFY"

.field public static final S_PLAY_INFO_DVD_CHAPT_CURRENT:Ljava/lang/String; = "P_TRACKDVDCHAPT_CURR_NOTIFY"

.field public static final S_PLAY_INFO_DVD_CHAPT_TOTAL:Ljava/lang/String; = "I_TRACKDVDCHAPT_ALL_NOTIFY"

.field public static final S_PLAY_INFO_DVD_TITLE_CURRENT:Ljava/lang/String; = "P_TRACKDVDTITLE_CURR_NOTIFY"

.field public static final S_PLAY_INFO_DVD_TITLE_TOTAL:Ljava/lang/String; = "I_TRACKDVDTITLE_ALL_NOTIFY"

.field public static final S_PLAY_INFO_ROM_CURRENT_DIRINDEX:Ljava/lang/String; = "P_ROMPLAY_CURRENT_DIRINDEX"

.field public static final S_PLAY_INFO_ROM_CURRENT_TYPE:Ljava/lang/String; = "P_ROMPLAY_CURRENT_TYPE"

.field public static final S_PLAY_INFO_TRACK_CURRENT:Ljava/lang/String; = "P_TRACKCUR_NOTIFY"

.field public static final S_PLAY_INFO_TRACK_TOTAL:Ljava/lang/String; = "I_TRACKALL_NOTIFY"

.field public static final S_PLAY_REPEAT_STATE:Ljava/lang/String; = "PLAY_REPEAT_NOTIFY"

.field public static final S_PLAY_SHUFFLE_STATE:Ljava/lang/String; = "PLAY_SHUFFLE_NOTIFY"

.field public static final S_PLAY_STATE:Ljava/lang/String; = "PLAY_STATE_NOTIFY"

.field public static final S_PLAY_TIME:Ljava/lang/String; = "I_DVD_PLAYTIME_NOTIFY"

.field public static final S_PLAY_TOTAL_TIME:Ljava/lang/String; = "P_TRACK_PLAY_TOTAL_TIME"

.field public static final S_ROMMEDIA_ID3_CURRENT_INDEX:Ljava/lang/String; = "D_ROMMEDIA_ID3_CURRENT_INDEX"

.field public static final S_ROMMEDIA_ID3_CURRENT_PARENT_DIR:Ljava/lang/String; = "D_ROMMEDIA_ID3_CURRENT_PARENT_DIR"

.field public static final S_ROMMEDIA_ID3_TYPE:Ljava/lang/String; = "D_ROMMEDIA_ID3_TYPE"

.field public static final S_ROMMEDIA_MUSIC_DIR_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_MUSIC_DIR_NUMBER"

.field public static final S_ROMMEDIA_MUSIC_FILE_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_MUSIC_FILE_NUMBER"

.field public static final S_ROMMEDIA_PHOTO_DIR_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_PHOTO_DIR_NUMBER"

.field public static final S_ROMMEDIA_PHOTO_FILE_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_PHOTO_FILE_NUMBER"

.field public static final S_ROMMEDIA_QUERY_DONE:Ljava/lang/String; = "D_QUERY_FINISH"

.field public static final S_ROMMEDIA_VIDEO_DIR_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_VIDEO_DIR_NUMBER"

.field public static final S_ROMMEDIA_VIDEO_FILE_NUMBER:Ljava/lang/String; = "D_ROMMEDIA_VIDEO_FILE_NUMBER"

.field public static final S_SOURCE_CFM_STATE:Ljava/lang/String; = "D_SOURCE_CFM_NOTIFIY"

.field public static final S_SUBTITLE_ALL_LANG:Ljava/lang/String; = "D_SUBTITLE_ALL_LANG"

.field public static final S_SUBTITLE_CURR_LANG:Ljava/lang/String; = "D_SUBTITLE_CURR_LANG"

.field public static final S_SUBTITLE_LANG_ID:Ljava/lang/String; = "D_SUBTITLE_LANG_ID"

.field public static final S_SUBTITLE_SHOW_MODE:Ljava/lang/String; = "D_SUBTITLE_SHOW_MODE"

.field public static final S_UNSUPPORT_FILE:Ljava/lang/String; = "D_UNSUPPORT_FILE"

.field public static final S_VERSION:Ljava/lang/String; = "I_MPEG_VERSION_NOTIFY"

.field public static final TOTAL_MUSIC_TIME:Ljava/lang/String; = "music_total_time"

.field public static final TOTAL_VIDEO_TIME:Ljava/lang/String; = "video_total_time"

.field public static final TRACK_NAME:Ljava/lang/String; = "music_track_name"

.field public static final TW8816_FORMAT:Ljava/lang/String; = "tw8816.format"

.field public static final TW8816_TYPE_GDC:I = 0xa

.field public static final TW8816_TYPE_MPEG:I = 0x0

.field public static final TW8816_TYPE_REAR:I = 0x2

.field public static final TYPE_ALL_IMAGES:I = 0x0

.field public static final TYPE_ALL_MUSIC:I = 0x6

.field public static final TYPE_ALL_VIDEOS:I = 0x1

.field public static final TYPE_CAMERA_IMAGES:I = 0x2

.field public static final TYPE_CAMERA_MEDIAS:I = 0x4

.field public static final TYPE_CAMERA_VIDEOS:I = 0x3

.field public static final TYPE_MUSIC_ALBUM:I = 0x7

.field public static final TYPE_MUSIC_ALBUM_TRACK:I = 0x8

.field public static final TYPE_MUSIC_ARTIST:I = 0x9

.field public static final TYPE_MUSIC_ARTIST_TRACK:I = 0xa

.field public static final TYPE_MUSIC_FOLDER:I = 0xb

.field public static final TYPE_MUSIC_FOLDER_TRACK:I = 0xc

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_NORMAL_FOLDERS:I = 0x5

.field public static final UPDATE_AUDIO_TIME:Ljava/lang/String; = "update_audio_time"

.field public static final UPDATE_LIST_VIEW:Ljava/lang/String; = "update_list_view"

.field public static final UPDATE_TRACK_INFO:Ljava/lang/String; = "update_track_info"

.field public static final UPDATE_VIDEO_INFO:Ljava/lang/String; = "update_video_info"

.field public static final UPDATE_VIDEO_TIME:Ljava/lang/String; = "update_video_time"

.field public static final USB_VIEW_ID:I = 0x8

.field public static final VIDEO_CHANNEL_REQUEST:I = 0x1

.field public static final VIDEO_NAME:Ljava/lang/String; = "video_name"

.field public static final VIDEO_PLAYER_KEY_TYPE:Ljava/lang/String; = "com.winca.service.videoplayer.KEY_TYPE"

.field public static final VIDEO_PLAYER_KEY_TYPE_ACTION:Ljava/lang/String; = "com.winca.service.videoplayer.action.KEY_TYPE"

.field public static final VIDEO_PLAYER_KEY_TYPE_NEXT:I = 0x2

.field public static final VIDEO_PLAYER_KEY_TYPE_PAUSE:I = 0x4

.field public static final VIDEO_PLAYER_KEY_TYPE_PREV:I = 0x3

.field public static final VIDEO_RECEIVE_NOTIFICATION:Ljava/lang/String; = "com.winca.service.audiochannel.video"

.field public static final VIEW_MODE_GRID:I = 0x1

.field public static final VIEW_MODE_LIST:I
