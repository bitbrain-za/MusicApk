package com.winca.service.scannerMedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Album
  implements Parcelable
{
  public static final Parcelable.Creator<Album> CREATOR = new Parcelable.Creator()
  {
    public Album createFromParcel(Parcel paramParcel)
    {
      Album localAlbum = new Album();
      localAlbum.setAlbum(paramParcel.readString());
      return localAlbum;
    }

    public Album[] newArray(int paramInt)
    {
      return new Album[paramInt];
    }
  };
  private String album = null;

  public int describeContents()
  {
    return 0;
  }

  public String getAlbum()
  {
    return this.album;
  }

  public void setAlbum(String paramString)
  {
    this.album = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.album);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.Album
 * JD-Core Version:    0.6.0
 */