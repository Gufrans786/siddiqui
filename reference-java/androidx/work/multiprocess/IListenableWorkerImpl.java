package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IListenableWorkerImpl extends IInterface {
    public static final String DESCRIPTOR = "androidx.work.multiprocess.IListenableWorkerImpl";

    public static class Default implements IListenableWorkerImpl {
        @Override
        public IBinder asBinder() {
            return null;
        }

        @Override
        public void interrupt(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override
        public void startWork(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }
    }

    void interrupt(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void startWork(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IListenableWorkerImpl {
        static final int TRANSACTION_interrupt = 2;
        static final int TRANSACTION_startWork = 1;

        @Override
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, IListenableWorkerImpl.DESCRIPTOR);
        }

        public static IListenableWorkerImpl asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(IListenableWorkerImpl.DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IListenableWorkerImpl)) {
                return (IListenableWorkerImpl) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IListenableWorkerImpl.DESCRIPTOR);
            }
            if (code == 1598968902) {
                reply.writeString(IListenableWorkerImpl.DESCRIPTOR);
                return true;
            }
            if (code == 1) {
                startWork(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
            } else if (code == 2) {
                interrupt(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
            } else {
                return super.onTransact(code, data, reply, flags);
            }
            return true;
        }

        private static class Proxy implements IListenableWorkerImpl {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IListenableWorkerImpl.DESCRIPTOR;
            }

            @Override
            public void startWork(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IListenableWorkerImpl.DESCRIPTOR);
                    parcelObtain.writeByteArray(request);
                    parcelObtain.writeStrongInterface(callback);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override
            public void interrupt(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IListenableWorkerImpl.DESCRIPTOR);
                    parcelObtain.writeByteArray(request);
                    parcelObtain.writeStrongInterface(callback);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }
}
