package com.winca.music.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface MusicInterface extends IInterface
{
  public abstract void next()
    throws RemoteException;

  public abstract void pre()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements MusicInterface
  {
    private static final String DESCRIPTOR = "com.winca.music.service.MusicInterface";
    static final int TRANSACTION_next = 1;
    static final int TRANSACTION_pre = 2;

    public Stub()
    {
      attachInterface(this, "com.winca.music.service.MusicInterface");
    }

    public static MusicInterface asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.winca.music.service.MusicInterface");
      if ((localIInterface != null) && ((localIInterface instanceof MusicInterface)))
        return (MusicInterface)localIInterface;
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
        paramParcel2.writeString("com.winca.music.service.MusicInterface");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.winca.music.service.MusicInterface");
        next();
        paramParcel2.writeNoException();
        return true;
      case 2:
      }
      paramParcel1.enforceInterface("com.winca.music.service.MusicInterface");
      pre();
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements MusicInterface
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

      public String getInterfaceDescriptor()
      {
        return "com.winca.music.service.MusicInterface";
      }

      public void next()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.music.service.MusicInterface");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public void pre()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.music.service.MusicInterface");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
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
 * Qualified Name:     com.winca.music.service.MusicInterface
 * JD-Core Version:    0.6.0
 */