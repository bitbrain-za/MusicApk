package com.winca.service.media;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface OnSourceChangeListener extends IInterface
{
  public abstract void OnSourceChange(int paramInt)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements OnSourceChangeListener
  {
    private static final String DESCRIPTOR = "com.winca.service.media.OnSourceChangeListener";
    static final int TRANSACTION_OnSourceChange = 1;

    public Stub()
    {
      attachInterface(this, "com.winca.service.media.OnSourceChangeListener");
    }

    public static OnSourceChangeListener asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.winca.service.media.OnSourceChangeListener");
      if ((localIInterface != null) && ((localIInterface instanceof OnSourceChangeListener)))
        return (OnSourceChangeListener)localIInterface;
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
        paramParcel2.writeString("com.winca.service.media.OnSourceChangeListener");
        return true;
      case 1:
      }
      paramParcel1.enforceInterface("com.winca.service.media.OnSourceChangeListener");
      OnSourceChange(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements OnSourceChangeListener
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public void OnSourceChange(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.winca.service.media.OnSourceChangeListener");
          localParcel1.writeInt(paramInt);
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

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public String getInterfaceDescriptor()
      {
        return "com.winca.service.media.OnSourceChangeListener";
      }
    }
  }
}

/* Location:           /home/philip/I045APKWorking/MusicAPK/UnpackClasses/classes-dex2jar.jar
 * Qualified Name:     com.winca.service.media.OnSourceChangeListener
 * JD-Core Version:    0.6.0
 */