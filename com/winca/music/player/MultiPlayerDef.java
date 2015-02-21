package com.winca.music.player;

public abstract interface MultiPlayerDef
{
  public static final String ACTION_PLAYER_SET_TITLE = "tokenwireless.bluetooth.action.PLAYER_SET_TITLE";
  public static final String ALBUM_NAME = "music_album_name";
  public static final String ARTIST_NAME = "music_artist_name";
  public static final String CURRENT_MUSIC_TIME = "music_current_time";
  public static final String CURRENT_VIDEO_TIME = "video_current_time";
  public static final String EXTRA_PLAYER_SET_DETAIL = "android.bluetooth.extra.PLAYER_SET_DETAIL";
  public static final String EXTRA_PLAYER_SET_TITLE = "android.bluetooth.extra.PLAYER_SET_TITLE";
  public static final int LAST = 3;
  public static final int LOCAL_MEPG_PLAYER_POS = 1;
  public static final int LOCAL_SDMUSIC_PLAYER_POS = 0;
  public static final int LOCAL_USBMUSIC_PLAYER_POS = 2;
  public static final String MEDIA_META_CHANGED = "com.winca.multiplayer.music.metachanged";
  public static final String MEDIA_PLAY_CHANGE = "com.winca.multiplayer.media.play.change";
  public static final int MEDIA_PLAY_CHANGE_NEXT = 4;
  public static final int MEDIA_PLAY_CHANGE_NONE = 0;
  public static final int MEDIA_PLAY_CHANGE_PAUSE = 2;
  public static final int MEDIA_PLAY_CHANGE_PLAY = 1;
  public static final int MEDIA_PLAY_CHANGE_PREVIOUS = 3;
  public static final int MEDIA_PLAY_CHANGE_STOP = 5;
  public static final String MPEG_SERVICE = "com.winca.service.mpegNotification";
  public static final int NEXT = 2;
  public static final int NOW = 1;
  public static final int PLAYBACKSERVICE_STATUS = 1;
  public static final int PLAYER_MAX = 3;
  public static final int REPEAT_ALL = 2;
  public static final int REPEAT_CURRENT = 1;
  public static final int REPEAT_NONE = 0;
  public static final String SD_MEDIA_TYPE = "sd_media_type";
  public static final int SHUFFLE_AUTO = 2;
  public static final int SHUFFLE_NONE = 0;
  public static final int SHUFFLE_NORMAL = 1;
  public static final int SHUFFLE_ON = 1;
  public static final String SPARAM_PLAY_CHANGE_CMD = "com.winca.multiplayer.media.play.change.command";
  public static final String TOTAL_MUSIC_TIME = "music_total_time";
  public static final String TOTAL_VIDEO_TIME = "video_total_time";
  public static final String TRACK_NAME = "music_track_name";
  public static final String UPDATE_AUDIO_TIME = "update_audio_time";
  public static final String UPDATE_LIST_VIEW = "update_list_view";
  public static final String UPDATE_TRACK_INFO = "update_track_info";
  public static final String UPDATE_VIDEO_INFO = "update_video_info";
  public static final String UPDATE_VIDEO_TIME = "update_video_time";
  public static final String VIDEO_NAME = "video_name";
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MultiPlayerDef
 * JD-Core Version:    0.6.0
 */