package com.winca.service.scannerMedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Artist
  implements Parcelable
{
  public static final Parcelable.Creator<Artist> CREATOR = new Parcelable.Creator()
  {
    public Artist createFromParcel(Parcel paramParcel)
    {
      Artist localArtist = new Artist();
      localArtist.setArtist(paramParcel.readString());
      return localArtist;
    }

    public Artist[] newArray(int paramInt)
    {
      return new Artist[paramInt];
    }
  };
  private String artist = null;

  public int describeContents()
  {
    return 0;
  }

  public String getArtist()
  {
    return this.artist;
  }

  public void setArtist(String paramString)
  {
    this.artist = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.artist);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.Artist
 * JD-Core Version:    0.6.0
 */