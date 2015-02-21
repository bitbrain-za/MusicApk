package com.winca.music.mediautil;

public class AudioEntity
{
  private String album = null;
  private String artist = null;
  private String data = null;
  private String duration = null;
  private String id = null;
  private String title = null;
  private int volume = -1;

  public AudioEntity()
  {
    setId("-1");
    setAlbum("Unknown");
    setArtist("Unknown");
    setDuration("0");
    setTitle("Unknown");
    setData("");
    setVolume(-1);
  }

  public String getAlbum()
  {
    return this.album;
  }

  public String getArtist()
  {
    return this.artist;
  }

  public String getData()
  {
    return this.data;
  }

  public String getDuration()
  {
    return this.duration;
  }

  public String getId()
  {
    return this.id;
  }

  public String getTitle()
  {
    return this.title;
  }

  public int getVolume()
  {
    return this.volume;
  }

  public void setAlbum(String paramString)
  {
    this.album = paramString;
  }

  public void setArtist(String paramString)
  {
    this.artist = paramString;
  }

  public void setData(String paramString)
  {
    this.data = paramString;
  }

  public void setDuration(String paramString)
  {
    this.duration = paramString;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setVolume(int paramInt)
  {
    this.volume = paramInt;
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.music.mediautil.AudioEntity
 * JD-Core Version:    0.6.0
 */