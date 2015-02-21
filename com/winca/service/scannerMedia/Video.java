package com.winca.service.scannerMedia;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Video
  implements Parcelable
{
  public static final Parcelable.Creator<Video> CREATOR = new Parcelable.Creator()
  {
    public Video createFromParcel(Parcel paramParcel)
    {
      Video localVideo = new Video();
      localVideo.setTitle(paramParcel.readString());
      localVideo.setData(paramParcel.readString());
      localVideo.setDuration(paramParcel.readString());
      return localVideo;
    }

    public Video[] newArray(int paramInt)
    {
      return new Video[paramInt];
    }
  };
  private String data = null;
  private String duration = null;
  private String title = null;

  public int describeContents()
  {
    return 0;
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
    paramParcel.writeString(this.data);
    paramParcel.writeString(this.duration);
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.Video
 * JD-Core Version:    0.6.0
 */