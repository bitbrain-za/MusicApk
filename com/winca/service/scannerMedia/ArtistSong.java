package com.winca.service.scannerMedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ArtistSong
  implements Parcelable
{
  public static final Parcelable.Creator<ArtistSong> CREATOR = new Parcelable.Creator()
  {
    public ArtistSong createFromParcel(Parcel paramParcel)
    {
      ArtistSong localArtistSong = new ArtistSong();
      localArtistSong.setTitle(paramParcel.readString());
      localArtistSong.setArtist(paramParcel.readString());
      localArtistSong.setAlbum(paramParcel.readString());
      localArtistSong.setData(paramParcel.readString());
      localArtistSong.setDuration(paramParcel.readString());
      return localArtistSong;
    }

    public ArtistSong[] newArray(int paramInt)
    {
      return new ArtistSong[paramInt];
    }
  };
  private String album = null;
  private String artist = null;
  private String data = null;
  private String duration = null;
  private String title = null;

  public int describeContents()
  {
    return 0;
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

  public String getTitle()
  {
    return this.title;
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

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.title);
    paramParcel.writeString(this.artist);
    paramParcel.writeString(this.album);
    paramParcel.writeString(this.data);
    paramParcel.writeString(this.duration);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.ArtistSong
 * JD-Core Version:    0.6.0
 */