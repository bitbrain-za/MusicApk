package com.winca.music.player;

import android.content.Context;
import android.util.Log;
import com.winca.music.MusicActivity;
import com.winca.music.mediautil.AudioEntity;
import com.winca.music.service.MusicService;
import com.winca.service.scannerMedia.Album;
import com.winca.service.scannerMedia.AlbumSong;
import com.winca.service.scannerMedia.Artist;
import com.winca.service.scannerMedia.ArtistSong;
import com.winca.service.scannerMedia.Audio;
import com.winca.service.scannerMedia.AudioConnectService;
import java.util.HashMap;
import java.util.Map;

public class MusicPlayerDataManager
  implements MusicPlayerDef
{
  private static final String TAG = "MusicPlayerDataManager";
  public static AudioEntity curPlayAudio = null;
  public static int curPlayPos = -1;
  private int iCurVolume = -1;
  private Map<Integer, Object> mAlbumMap = new HashMap();
  private Map<Integer, Object> mAlbumSongsMap = new HashMap();
  private Map<Integer, Object> mArtistMap = new HashMap();
  private Map<Integer, Object> mArtistSongsMap = new HashMap();
  private AudioConnectService mAudioConnectService = null;
  private Map<Integer, Object> mAudioMap = new HashMap();
  private String mCurPlayingListName = null;
  private Map<Integer, Object> mPlayerMap = new HashMap();
  private Map<Integer, Object> mPlayingMap = new HashMap();
  private Context mcontext = null;

  public MusicPlayerDataManager(MusicActivity paramMusicActivity)
  {
    this.mcontext = paramMusicActivity;
    this.mAudioConnectService = new AudioConnectService(paramMusicActivity);
  }

  private void SetCurrentVolume(int paramInt)
  {
    this.iCurVolume = paramInt;
  }

  private boolean UpdataAlbumData()
  {
    Album[] arrayOfAlbum = this.mAudioConnectService.getAlbum(this.iCurVolume);
    if (arrayOfAlbum == null);
    int i;
    do
    {
      return false;
      this.mAlbumMap.clear();
      i = arrayOfAlbum.length;
    }
    while (i <= 0);
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return true;
      Album localAlbum = arrayOfAlbum[j];
      this.mAlbumMap.put(Integer.valueOf(j), localAlbum);
    }
  }

  private boolean UpdataArtistData()
  {
    Artist[] arrayOfArtist = this.mAudioConnectService.getArtist(this.iCurVolume);
    if (arrayOfArtist == null);
    int i;
    do
    {
      return false;
      this.mArtistMap.clear();
      i = arrayOfArtist.length;
    }
    while (i <= 0);
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return true;
      Artist localArtist = arrayOfArtist[j];
      this.mArtistMap.put(Integer.valueOf(j), localArtist);
    }
  }

  private boolean UpdataAudiosData()
  {
    Audio[] arrayOfAudio = this.mAudioConnectService.getAudio(this.iCurVolume);
    if (arrayOfAudio == null);
    int i;
    do
    {
      return false;
      i = arrayOfAudio.length;
    }
    while (i <= 0);
    if (!this.mAudioMap.isEmpty())
      this.mAudioMap.clear();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return true;
      Audio localAudio = arrayOfAudio[j];
      AudioEntity localAudioEntity = new AudioEntity();
      localAudioEntity.setTitle(localAudio.getTitle());
      localAudioEntity.setAlbum(localAudio.getAlbum());
      localAudioEntity.setArtist(localAudio.getArtist());
      localAudioEntity.setData(localAudio.getData());
      localAudioEntity.setDuration(localAudio.getDuration());
      this.mAudioMap.put(Integer.valueOf(j), localAudioEntity);
    }
  }

  public static int getSelectionPos()
  {
    int i = -2 + curPlayPos;
    if (-2 + curPlayPos < 0)
      i = 0;
    return i;
  }

  public void ChangeVolmue(int paramInt)
  {
    SetCurrentVolume(paramInt);
    if (!UpdataAudiosData())
      this.mAudioMap.clear();
    if (!UpdataArtistData())
      this.mArtistMap.clear();
    if (!UpdataAlbumData())
      this.mAlbumMap.clear();
  }

  public Map<Integer, Object> GetAlbumMap()
  {
    return this.mAlbumMap;
  }

  public Map<Integer, Object> GetArtistMap()
  {
    return this.mArtistMap;
  }

  public Map<Integer, Object> GetAudioMap()
  {
    return this.mAudioMap;
  }

  public int GetCurrentVolume()
  {
    return this.iCurVolume;
  }

  public Map<Integer, Object> getAlbumSongsMap()
  {
    return this.mAlbumSongsMap;
  }

  public Map<Integer, Object> getArtistSongMap()
  {
    return this.mArtistSongsMap;
  }

  public int getIdByPath(String paramString)
  {
    Map localMap = this.mPlayingMap;
    new AudioEntity();
    if (localMap != null);
    for (int i = 0; ; i++)
    {
      if (i >= localMap.size())
        i = -1;
      AudioEntity localAudioEntity;
      do
      {
        return i;
        localAudioEntity = (AudioEntity)localMap.get(Integer.valueOf(i));
        this.mPlayerMap.put(Integer.valueOf(i), localAudioEntity);
      }
      while (localAudioEntity.getData().compareTo(paramString) == 0);
    }
  }

  public Map<Integer, Object> getPlayerMap()
  {
    return this.mPlayerMap;
  }

  public Map<Integer, Object> getPlayingSongMap()
  {
    return this.mPlayingMap;
  }

  public boolean isScanning()
  {
    return this.mAudioConnectService.isScanning();
  }

  public void onDestory()
  {
    this.mAudioConnectService.doUnBindService();
  }

  public boolean updataAlbumSongsMap(String paramString)
  {
    AlbumSong[] arrayOfAlbumSong = this.mAudioConnectService.getAlbumSong(paramString, this.iCurVolume);
    this.mAlbumSongsMap.clear();
    if (arrayOfAlbumSong != null)
    {
      int i = arrayOfAlbumSong.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          return true;
        AlbumSong localAlbumSong = arrayOfAlbumSong[j];
        AudioEntity localAudioEntity = new AudioEntity();
        localAudioEntity.setTitle(localAlbumSong.getTitle());
        localAudioEntity.setAlbum(localAlbumSong.getAlbum());
        localAudioEntity.setArtist(localAlbumSong.getArtist());
        localAudioEntity.setData(localAlbumSong.getData());
        localAudioEntity.setDuration(localAlbumSong.getDuration());
        this.mAlbumSongsMap.put(Integer.valueOf(j), localAudioEntity);
      }
    }
    return false;
  }

  public boolean updataArtistSongList(String paramString)
  {
    ArtistSong[] arrayOfArtistSong = this.mAudioConnectService.getArtistSong(paramString, this.iCurVolume);
    this.mArtistSongsMap.clear();
    if (arrayOfArtistSong != null)
    {
      int i = arrayOfArtistSong.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          return true;
        AudioEntity localAudioEntity = new AudioEntity();
        ArtistSong localArtistSong = arrayOfArtistSong[j];
        localAudioEntity.setTitle(localArtistSong.getTitle());
        localAudioEntity.setAlbum(localArtistSong.getAlbum());
        localAudioEntity.setArtist(localArtistSong.getArtist());
        localAudioEntity.setData(localArtistSong.getData());
        localAudioEntity.setDuration(localArtistSong.getDuration());
        this.mArtistSongsMap.put(Integer.valueOf(j), localAudioEntity);
      }
    }
    return false;
  }

  public void updataPlayerPlayList()
  {
    Map localMap = this.mPlayingMap;
    String[] arrayOfString = new String[localMap.size()];
    new AudioEntity();
    this.mPlayerMap.clear();
    for (int i = 0; ; i++)
    {
      if (i >= localMap.size())
      {
        MusicPlayerControler localMusicPlayerControler = MusicService.getMusicPlayer();
        if (localMusicPlayerControler != null)
          localMusicPlayerControler.updatePlayerPlayList(arrayOfString);
        return;
      }
      AudioEntity localAudioEntity = (AudioEntity)localMap.get(Integer.valueOf(i));
      this.mPlayerMap.put(Integer.valueOf(i), localAudioEntity);
      arrayOfString[i] = localAudioEntity.getData();
    }
  }

  public void updataPlayingMap()
  {
    if (this.mCurPlayingListName != null)
      updataPlayingMapByListType(this.mCurPlayingListName);
  }

  public void updataPlayingMapByListType(String paramString)
  {
    Log.i("MusicPlayerDataManager", "kkcmh updata Play List:" + paramString);
    Map localMap;
    if (paramString.equals("Audio"))
    {
      this.mCurPlayingListName = "Audio";
      localMap = this.mAudioMap;
      if (localMap != null)
        this.mPlayingMap.clear();
    }
    for (int i = 0; ; i++)
    {
      if (i >= localMap.size())
      {
        return;
        if (paramString.equals("Artist"))
        {
          this.mCurPlayingListName = "Artist";
          localMap = this.mArtistSongsMap;
          break;
        }
        boolean bool = paramString.equals("Album");
        localMap = null;
        if (!bool)
          break;
        this.mCurPlayingListName = "Album";
        localMap = this.mAlbumSongsMap;
        break;
      }
      AudioEntity localAudioEntity = (AudioEntity)localMap.get(Integer.valueOf(i));
      this.mPlayingMap.put(Integer.valueOf(i), localAudioEntity);
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.player.MusicPlayerDataManager
 * JD-Core Version:    0.6.0
 */