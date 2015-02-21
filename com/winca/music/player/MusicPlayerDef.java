package com.winca.music.player;

public abstract interface MusicPlayerDef
{
  public static final String ACTKEY_VOLUME_VOLUME = "com.winca.audio.key_volume_value";
  public static final int ALBUMLIST = 1;
  public static final int ARTISTLIST = 2;
  public static final int AUDIOS = 0;
  public static final String AUDIO_RECEIVE_NOTIFICATION = "com.winca.service.audiochannel.audio";
  public static final String BROCAST_ASK_AUDIO_VOLUME = "com.winca.audio.askVolume";
  public static final String BROCAST_CURENT_PLAY_ID = "com.winca.kkcmh.CURENT_PLAY_ID";
  public static final String BROCAST_PROGRESS_UPDATE = "com.winca.music.progress";
  public static final String BROCAST_RETURN_AUDIO_VOLUME = "com.winca.audio.returnVolume";
  public static final String BROCAST_SCAN_START = "com.winca.service.scannerMedia.SCAN_START";
  public static final String BROCAST_SCAN_TASK_FINISHED = "com.winca.service.scannerMedia.SCAN_TASK_FINISHED";
  public static final String BROCAST_SCAN_TYPE_STATE = "com.winca.service.scannerMedia.SCAN_TYPE_STATE";
  public static final String BROCAST_SOUND_SOURCE_KEY = "com.winca.scanner.SoundSource_key";
  public static final String BROCAST_SOURCE_TYPE = "com.winca.scanner.setCurSoundSource";
  public static final String BROCAST_UPDATA_ADAPTER = "com.winca.kkcmh.UPDATA_ADAPTER";
  public static final String BROCAST_UPDATA_PLAYING_SONG_ADAPTER = "com.winca.kkcmh.UPDATA_PLAYING_SONG_ADAPTER";
  public static final String BROCAST_VOLUME_DATA_CHANGED = "com.winca.kkcmh.VOLUME_DATA_CHANGED";
  public static final String BROCAST_VOLUME_KEY = "com.winca.scanner.volume_key";
  public static final String BUNDLE_KEY_SCAN_TYPE = "SCAN_TYPE";
  public static final String BUNDLE_KEY_SCAN_TYPE_STATE = "SCAN_TYPE_STATE";
  public static final String CHANNEL_DESELECTED = "CHANNEL_DESELECTED";
  public static final String CHANNEL_NOTIFICATION = "CHANNEL_NOTIFICATION";
  public static final String CHANNEL_SELECTED = "CHANNEL_SELECTED";
  public static final String CURENT_PLAY_ID_KEY = "cur_ID";
  public static final String FILEMANAGER_MUSIC_ACTIO = "com.winca.filemanager.MUSIC_ACTION";
  public static final String FILEMANAGER_VIDEO_ACTIO = "com.winca.filemanager.VIDEO_ACTION";
  public static final int HDStorageStyle = 2;
  public static final String LIST_NAME_ALBUM = "Album";
  public static final String LIST_NAME_ARTIST = "Artist";
  public static final String LIST_NAME_AUDIO = "Audio";
  public static final String LIST_NAME_PLAYING = "Playing";
  public static final String MSG_KEY_PLAYSTORY = "MUSIC_PALY_HISTORY";
  public static final String MUSIC_BROCAST_CHANGE_PLAY_MODE = "com.winca.MusicPlay.BROCAST_CHANGE_PLAY_MODE";
  public static final String MUSIC_BROCAST_MODE_KEY = "com.winca.Music.PLAY_MODE";
  public static final String MUSIC_BROCAST_PLAYING_INFO = "com.winca.MusicPlay.BROCAST_PLAYING_INFO";
  public static final String MUSIC_BROCAST_PLAY_MODE = "com.winca.MusicPlay.BROCAST_PLAY_MODE";
  public static final String MUSIC_BROCAST_SET_PLAY_MODE = "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE";
  public static final String MUSIC_BROCAST_STATE = "com.winca.MusicPlay.BROCAST_STATE";
  public static final String MUSIC_EXIT_ACTION = "com.winca.music_EXIT_ACTION";
  public static final String MUSIC_HARDDISK_MOUNT_PATH = "/mnt/harddisk/";
  public static final String MUSIC_OPERATION_BROCAST = "com.winca.MusicPlay.OPERATION_BROCAST";
  public static final String MUSIC_OPERATION_BROCAST_COM = "com.winca.MusicPlay.OPERATION_BROCAST";
  public static final String MUSIC_OPERATION_COMMAND_KEY = "com.winca.MusicPlay.COMMAND_KEY";
  public static final String MUSIC_OPERATION_ID_KEY = "Id";
  public static final String MUSIC_OPERATION_MODE_KEY = "com.winca.MusicPlay.MODE_KEY";
  public static final String MUSIC_OPERATION_NEXT = "winca.music.Next";
  public static final String MUSIC_OPERATION_PAUSE = "winca.music.pause";
  public static final String MUSIC_OPERATION_PLAY = "winca.music.paly";
  public static final String MUSIC_OPERATION_PRE = "winca.music.Pre";
  public static final String MUSIC_OPERATION_RESET = "winca.music.reset";
  public static final String MUSIC_OPERATION_STATE_KEY = "com.winca.MusicPlay.STATE_KEY";
  public static final String MUSIC_OPERATION_STOP = "winca.music.stop";
  public static final String MUSIC_OPERATION_UPDATALIST_BRAOCAST = "com.winca.MusicPlay.UPDATA_LIST";
  public static final String MUSIC_OPERATION_UPDATA_LIST_KEY = "com.winca.MusicPlay.OPERATION_Updata";
  public static final String MUSIC_SDCARD_MOUNT_PATH = "/mnt/sdcard/sdcard";
  public static final String MUSIC_SEEK_BAR = "com.winca.music.seekBar";
  public static final String MUSIC_SERVICE_NAME = "com.winca.music.MUSICSERVICE_ACTION";
  public static final String MUSIC_SET_PALY_MODE_KEY = "com.winca.MusicPlay.BROCAST_SET_PLAY_MODE_KEY";
  public static final String MUSIC_SHARE_ID_KEY = "MUSIC_ID_KEY";
  public static final String MUSIC_SHARE_ISPLAYHISOTYR = "MUSIC_SP_ISHISTORY";
  public static final String MUSIC_SHARE_LAST_USB_VOLUME = "MUSIC_SHARE_LAST_USB_VOLUME";
  public static final String MUSIC_SHARE_MUSIC_LIB = "MUSIC_SP_MUSIC_LIB";
  public static final String MUSIC_SHARE_PATH_KEY = "MUSIC_PATH_KEY";
  public static final String MUSIC_SHARE_PLAYMODE_KEY = "MUSIC_POSITION_KEY";
  public static final String MUSIC_SHARE_POSITION_KEY = "MUSIC_POSITION_KEY";
  public static final String MUSIC_SHARE_SATATE_KEY = "MUSIC_PLAY_STATE_KEY";
  public static final String MUSIC_SHUTDOWN = "android.intent.action.ACTION_SHUTDOWN";
  public static final int MUSIC_STATA_NOPLAY = 0;
  public static final int MUSIC_STATA_PAUSE = 2;
  public static final int MUSIC_STATA_PLAYING = 1;
  public static final int MUSIC_STATA_STOP = 3;
  public static final String MUSIC_UDISK_MOUNT_PATH = "/mnt/udisk";
  public static final String MUSIC_UDISK_MOUNT_PATH1 = "/mnt/udisk1";
  public static final String REMOTE_SERVER_CONNECT_ACTION = "com.winca.music.REMOTE_SERVER_CONNECT_ACTION";
  public static final String RESTART_MEDIA_SERVICE_ACTION = "com.winca.scanmedia.ACTION_RESTARTSERVICE";
  public static final String SCANMEDIA_MUSIC_SCAN_ACTION = "com.winca.music.SCANMEDIA_MUSIC_SCAN_ACTION";
  public static final String SCANMEDIA_MUSIC_SCAN_DONE_ACTION = "com.winca.service.scannerMedia.SCAN_FINISHED";
  public static final int SDStorageStyle = 0;
  public static final int SEARCH_AUDIO = 1;
  public static final int SEARCH_IMAGE = 2;
  public static final int SEARCH_VIDEO = 3;
  public static final int SHUFFLE_NONE = 0;
  public static final int SHUFFLE_ON = 1;
  public static final String SOURCETYP_IS_IN_CURRENT = "source_type_is_in_current_page";
  public static final int SOURCE_AUDIO_TYPE = 0;
  public static final int SOURCE_IMAGE_TYPE = 1;
  public static final int SOURCE_TYPE_AUDIO = 19;
  public static final int SOURCE_VIDEO_TYPE = 2;
  public static final String SPARAM_SOURCE_TYPE = "source_type";
  public static final int STYLE_UNKNOWN = -1;
  public static final String SWITCH_SOURCETYPE_ACTION = "com.winca.audiochannelmanager.switchsource";
  public static final String SYSTEM_EXIT_ACTION = "com.winca.music.ACTION_SYSTEM_EXIT";
  public static final int UDickStorageStyle = 1;
  public static final int UDickStorageStyle1 = 3;
  public static final String VIDEO_ACTION = "com.winca.video.VIDEO_ACTION";
  public static final int mMusicPlayState;

  public static enum ListType
  {
    static
    {
      TYPE_ALBUM = new ListType("TYPE_ALBUM", 1);
      TYPE_ARTIST = new ListType("TYPE_ARTIST", 2);
      ListType[] arrayOfListType = new ListType[3];
      arrayOfListType[0] = TYPE_AUDIOS;
      arrayOfListType[1] = TYPE_ALBUM;
      arrayOfListType[2] = TYPE_ARTIST;
      ENUM$VALUES = arrayOfListType;
    }
  }

  public static enum PageEnum
  {
    static
    {
      PAGE_MAIN_PAGE = new PageEnum("PAGE_MAIN_PAGE", 1);
      PAGE_PLAYING_MUSIC = new PageEnum("PAGE_PLAYING_MUSIC", 2);
      PAGE_ALBUMN_ARTIST_LIST = new PageEnum("PAGE_ALBUMN_ARTIST_LIST", 3);
      PAGE_PLAYING_LIST = new PageEnum("PAGE_PLAYING_LIST", 4);
      PageEnum[] arrayOfPageEnum = new PageEnum[5];
      arrayOfPageEnum[0] = PAGE_UNKNOW;
      arrayOfPageEnum[1] = PAGE_MAIN_PAGE;
      arrayOfPageEnum[2] = PAGE_PLAYING_MUSIC;
      arrayOfPageEnum[3] = PAGE_ALBUMN_ARTIST_LIST;
      arrayOfPageEnum[4] = PAGE_PLAYING_LIST;
      ENUM$VALUES = arrayOfPageEnum;
    }
  }

  public static class PlayMode
  {
    public static final int MODE_FIRST = 0;
    public static final int MODE_LAST = 3;
    public static final int MODE_RANDMON = 0;
    public static final int REPEAT_ALL = 2;
    public static final int REPEAT_CURRENT = 1;
    public static final int REPEAT_LIST = 3;
  }

  public static class PlayState
  {
    public static final int PLAY_STATE_PLAY = 0;
    public static final int PLAY_STATE_PUASE = 1;
    public static final int PLAY_STATE_STOP = 2;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MusicPlayerDef
 * JD-Core Version:    0.6.0
 */