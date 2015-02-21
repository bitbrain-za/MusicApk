package com.winca.service.scannerMedia;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IScanMediaService extends IInterface
{
  public abstract Album[] getAlbum(int paramInt)
    throws RemoteException;

  public abstract AlbumSong[] getAlbumSong(String paramString, int paramInt)
    throws RemoteException;

  public abstract Artist[] getArtist(int paramInt)
    throws RemoteException;

  public abstract ArtistSong[] getArtistSong(String paramString, int paramInt)
    throws RemoteException;

  public abstract Audio[] getAudio(int paramInt)
    throws RemoteException;

  public abstract Video[] getVideo(int paramInt)
    throws RemoteException;

  public abstract boolean isScanning()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IScanMediaService
  {
    private static final String DESCRIPTOR = "com.winca.service.scannerMedia.IScanMediaService";
    static final int TRANSACTION_getAlbum = 3;
    static final int TRANSACTION_getAlbumSong = 5;
    static final int TRANSACTION_getArtist = 4;
    static final int TRANSACTION_getArtistSong = 6;
    static final int TRANSACTION_getAudio = 2;
    static final int TRANSACTION_getVideo = 7;
    static final int TRANSACTION_isScanning = 1;

    public Stub()
    {
      attachInterface(this, "com.winca.service.scannerMedia.IScanMediaService");
    }

    public static IScanMediaService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.winca.service.scannerMedia.IScanMediaService");
      if ((localIInterface != null) && ((localIInterface instanceof IScanMediaService)))
        return (IScanMediaService)localIInterface;
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.winca.service.scannerMedia.IScanMediaService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        boolean bool = isScanning();
        paramParcel2.writeNoException();
        if (bool);
        for (int i = 1; ; i = 0)
        {
          paramParcel2.writeInt(i);
          return true;
        }
      case 2:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        Audio[] arrayOfAudio = getAudio(paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeTypedArray(arrayOfAudio, 1);
        return true;
      case 3:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        Album[] arrayOfAlbum = getAlbum(paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeTypedArray(arrayOfAlbum, 1);
        return true;
      case 4:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        Artist[] arrayOfArtist = getArtist(paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeTypedArray(arrayOfArtist, 1);
        return true;
      case 5:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        AlbumSong[] arrayOfAlbumSong = getAlbumSong(paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeTypedArray(arrayOfAlbumSong, 1);
        return true;
      case 6:
        paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
        ArtistSong[] arrayOfArtistSong = getArtistSong(paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeTypedArray(arrayOfArtistSong, 1);
        return true;
      case 7:
      }
      paramParcel1.enforceInterface("com.winca.service.scannerMedia.IScanMediaService");
      Video[] arrayOfVideo = getVideo(paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeTypedArray(arrayOfVideo, 1);
      return true;
    }

    private static class Proxy
      implements IScanMediaService
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public Album[] getAlbum(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          Album[] arrayOfAlbum = (Album[])localParcel2.createTypedArray(Album.CREATOR);
          return arrayOfAlbum;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public AlbumSong[] getAlbumSong(String paramString, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeString(paramString);
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          AlbumSong[] arrayOfAlbumSong = (AlbumSong[])localParcel2.createTypedArray(AlbumSong.CREATOR);
          return arrayOfAlbumSong;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public Artist[] getArtist(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          Artist[] arrayOfArtist = (Artist[])localParcel2.createTypedArray(Artist.CREATOR);
          return arrayOfArtist;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public ArtistSong[] getArtistSong(String paramString, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeString(paramString);
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ArtistSong[] arrayOfArtistSong = (ArtistSong[])localParcel2.createTypedArray(ArtistSong.CREATOR);
          return arrayOfArtistSong;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public Audio[] getAudio(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          Audio[] arrayOfAudio = (Audio[])localParcel2.createTypedArray(Audio.CREATOR);
          return arrayOfAudio;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public String getInterfaceDescriptor()
      {
        return "com.winca.service.scannerMedia.IScanMediaService";
      }

      public Video[] getVideo(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          Video[] arrayOfVideo = (Video[])localParcel2.createTypedArray(Video.CREATOR);
          return arrayOfVideo;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean isScanning()
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.scannerMedia.IScanMediaService");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int j = localParcel2.readInt();
          if (j != 0)
            return i;
          i = 0;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.scannerMedia.IScanMediaService
 * JD-Core Version:    0.6.0
 */