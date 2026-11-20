package com.intentfilter.androidpermissions.models;

import android.os.Parcel;
import android.os.Parcelable;
import org.parceler.IdentityCollection;
import org.parceler.ParcelWrapper;
import org.parceler.ParcelerRuntimeException;

public class DeniedPermission$$Parcelable implements Parcelable, ParcelWrapper<DeniedPermission> {
    public static final Parcelable.Creator<DeniedPermission$$Parcelable> CREATOR = new Parcelable.Creator<DeniedPermission$$Parcelable>() {
        @Override
        public DeniedPermission$$Parcelable createFromParcel(Parcel parcel) {
            return new DeniedPermission$$Parcelable(DeniedPermission$$Parcelable.read(parcel, new IdentityCollection()));
        }

        @Override
        public DeniedPermission$$Parcelable[] newArray(int i) {
            return new DeniedPermission$$Parcelable[i];
        }
    };
    private DeniedPermission deniedPermission$$0;

    @Override
    public int describeContents() {
        return 0;
    }

    public DeniedPermission$$Parcelable(DeniedPermission deniedPermission) {
        this.deniedPermission$$0 = deniedPermission;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        write(this.deniedPermission$$0, parcel, i, new IdentityCollection());
    }

    public static void write(DeniedPermission deniedPermission, Parcel parcel, int i, IdentityCollection identityCollection) {
        int key = identityCollection.getKey(deniedPermission);
        if (key != -1) {
            parcel.writeInt(key);
            return;
        }
        parcel.writeInt(identityCollection.put(deniedPermission));
        parcel.writeString(deniedPermission.permission);
        parcel.writeInt(deniedPermission.shouldShowRationale ? 1 : 0);
    }

    @Override
    public DeniedPermission getParcel() {
        return this.deniedPermission$$0;
    }

    public static DeniedPermission read(Parcel parcel, IdentityCollection identityCollection) {
        int i = parcel.readInt();
        if (identityCollection.containsKey(i)) {
            if (identityCollection.isReserved(i)) {
                throw new ParcelerRuntimeException("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
            }
            return (DeniedPermission) identityCollection.get(i);
        }
        int iReserve = identityCollection.reserve();
        DeniedPermission deniedPermission = new DeniedPermission(parcel.readString(), parcel.readInt() == 1);
        identityCollection.put(iReserve, deniedPermission);
        identityCollection.put(i, deniedPermission);
        return deniedPermission;
    }
}
