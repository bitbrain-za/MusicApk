package com.winca.service.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IMediaInterface extends IInterface
{
  public abstract boolean audioCurrentPlayTime(int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;

  public abstract boolean audioData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    throws RemoteException;

  public abstract boolean audioPlay()
    throws RemoteException;

  public abstract boolean audioPuase()
    throws RemoteException;

  public abstract boolean audioStartVoice()
    throws RemoteException;

  public abstract boolean audioStopVoice()
    throws RemoteException;

  public abstract boolean registerSourceChange(OnSourceChangeListener paramOnSourceChangeListener)
    throws RemoteException;

  public abstract int sendMCUDate(byte[] paramArrayOfByte, int paramInt)
    throws RemoteException;

  public abstract boolean setAudioDataType(int paramInt)
    throws RemoteException;

  public abstract boolean setVideoDataType(int paramInt)
    throws RemoteException;

  public abstract boolean videoCurrentPlayTime(int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;

  public abstract boolean videoData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    throws RemoteException;

  public abstract boolean videoPlay()
    throws RemoteException;

  public abstract boolean videoPuase()
    throws RemoteException;

  public abstract boolean videoStartVoice()
    throws RemoteException;

  public abstract boolean videoStopVoice()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IMediaInterface
  {
    private static final String DESCRIPTOR = "com.winca.service.media.IMediaInterface";
    static final int TRANSACTION_audioCurrentPlayTime = 7;
    static final int TRANSACTION_audioData = 8;
    static final int TRANSACTION_audioPlay = 2;
    static final int TRANSACTION_audioPuase = 3;
    static final int TRANSACTION_audioStartVoice = 4;
    static final int TRANSACTION_audioStopVoice = 5;
    static final int TRANSACTION_registerSourceChange = 1;
    static final int TRANSACTION_sendMCUDate = 16;
    static final int TRANSACTION_setAudioDataType = 6;
    static final int TRANSACTION_setVideoDataType = 13;
    static final int TRANSACTION_videoCurrentPlayTime = 14;
    static final int TRANSACTION_videoData = 15;
    static final int TRANSACTION_videoPlay = 9;
    static final int TRANSACTION_videoPuase = 10;
    static final int TRANSACTION_videoStartVoice = 11;
    static final int TRANSACTION_videoStopVoice = 12;

    public Stub()
    {
      attachInterface(this, "com.winca.service.media.IMediaInterface");
    }

    public static IMediaInterface asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.winca.service.media.IMediaInterface");
      if ((localIInterface != null) && ((localIInterface instanceof IMediaInterface)))
        return (IMediaInterface)localIInterface;
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
        paramParcel2.writeString("com.winca.service.media.IMediaInterface");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool15 = registerSourceChange(OnSourceChangeListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        if (bool15);
        for (int i11 = 1; ; i11 = 0)
        {
          paramParcel2.writeInt(i11);
          return true;
        }
      case 2:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool14 = audioPlay();
        paramParcel2.writeNoException();
        int i10 = 0;
        if (bool14)
          i10 = 1;
        paramParcel2.writeInt(i10);
        return true;
      case 3:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool13 = audioPuase();
        paramParcel2.writeNoException();
        int i9 = 0;
        if (bool13)
          i9 = 1;
        paramParcel2.writeInt(i9);
        return true;
      case 4:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool12 = audioStartVoice();
        paramParcel2.writeNoException();
        int i8 = 0;
        if (bool12)
          i8 = 1;
        paramParcel2.writeInt(i8);
        return true;
      case 5:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool11 = audioStopVoice();
        paramParcel2.writeNoException();
        int i7 = 0;
        if (bool11)
          i7 = 1;
        paramParcel2.writeInt(i7);
        return true;
      case 6:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool10 = setAudioDataType(paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i6 = 0;
        if (bool10)
          i6 = 1;
        paramParcel2.writeInt(i6);
        return true;
      case 7:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool9 = audioCurrentPlayTime(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i5 = 0;
        if (bool9)
          i5 = 1;
        paramParcel2.writeInt(i5);
        return true;
      case 8:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool8 = audioData(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i4 = 0;
        if (bool8)
          i4 = 1;
        paramParcel2.writeInt(i4);
        return true;
      case 9:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool7 = videoPlay();
        paramParcel2.writeNoException();
        int i3 = 0;
        if (bool7)
          i3 = 1;
        paramParcel2.writeInt(i3);
        return true;
      case 10:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool6 = videoPuase();
        paramParcel2.writeNoException();
        int i2 = 0;
        if (bool6)
          i2 = 1;
        paramParcel2.writeInt(i2);
        return true;
      case 11:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool5 = videoStartVoice();
        paramParcel2.writeNoException();
        int i1 = 0;
        if (bool5)
          i1 = 1;
        paramParcel2.writeInt(i1);
        return true;
      case 12:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool4 = videoStopVoice();
        paramParcel2.writeNoException();
        int n = 0;
        if (bool4)
          n = 1;
        paramParcel2.writeInt(n);
        return true;
      case 13:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool3 = setVideoDataType(paramParcel1.readInt());
        paramParcel2.writeNoException();
        int m = 0;
        if (bool3)
          m = 1;
        paramParcel2.writeInt(m);
        return true;
      case 14:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool2 = videoCurrentPlayTime(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int k = 0;
        if (bool2)
          k = 1;
        paramParcel2.writeInt(k);
        return true;
      case 15:
        paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
        boolean bool1 = videoData(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int j = 0;
        if (bool1)
          j = 1;
        paramParcel2.writeInt(j);
        return true;
      case 16:
      }
      paramParcel1.enforceInterface("com.winca.service.media.IMediaInterface");
      int i = sendMCUDate(paramParcel1.createByteArray(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i);
      return true;
    }

    private static class Proxy
      implements IMediaInterface
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

      public boolean audioCurrentPlayTime(int paramInt1, int paramInt2, int paramInt3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeInt(paramInt3);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean audioData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeInt(paramInt3);
          localParcel1.writeInt(paramInt4);
          localParcel1.writeInt(paramInt5);
          this.mRemote.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean audioPlay()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean audioPuase()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean audioStartVoice()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean audioStopVoice()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
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
        return "com.winca.service.media.IMediaInterface";
      }

      public boolean registerSourceChange(OnSourceChangeListener paramOnSourceChangeListener)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          IBinder localIBinder;
          if (paramOnSourceChangeListener != null)
          {
            localIBinder = paramOnSourceChangeListener.asBinder();
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int j = localParcel2.readInt();
            if (j == 0)
              break label84;
          }
          while (true)
          {
            return i;
            localIBinder = null;
            break;
            label84: i = 0;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public int sendMCUDate(byte[] paramArrayOfByte, int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeByteArray(paramArrayOfByte);
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(16, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean setAudioDataType(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean setVideoDataType(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoCurrentPlayTime(int paramInt1, int paramInt2, int paramInt3)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeInt(paramInt3);
          this.mRemote.transact(14, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoData(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeInt(paramInt3);
          localParcel1.writeInt(paramInt4);
          localParcel1.writeInt(paramInt5);
          this.mRemote.transact(15, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoPlay()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoPuase()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoStartVoice()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public boolean videoStopVoice()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.IMediaInterface");
          this.mRemote.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          int j = 0;
          if (i != 0)
            j = 1;
          return j;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.media.IMediaInterface
 * JD-Core Version:    0.6.0
 */