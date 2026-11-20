package com.intentfilter.androidpermissions.models;

import android.os.Parcel;
import android.os.Parcelable;
import org.parceler.IdentityCollection;
import org.parceler.ParcelWrapper;
import org.parceler.ParcelerRuntimeException;

public class DeniedPermissions$$Parcelable implements Parcelable, ParcelWrapper<DeniedPermissions> {
    public static final Parcelable.Creator<DeniedPermissions$$Parcelable> CREATOR = new Parcelable.Creator<DeniedPermissions$$Parcelable>() {
        @Override
        public DeniedPermissions$$Parcelable createFromParcel(Parcel parcel) {
            return new DeniedPermissions$$Parcelable(DeniedPermissions$$Parcelable.read(parcel, new IdentityCollection()));
        }

        @Override
        public DeniedPermissions$$Parcelable[] newArray(int i) {
            return new DeniedPermissions$$Parcelable[i];
        }
    };
    private DeniedPermissions deniedPermissions$$0;

    @Override
    public int describeContents() {
        return 0;
    }

    public DeniedPermissions$$Parcelable(DeniedPermissions deniedPermissions) {
        this.deniedPermissions$$0 = deniedPermissions;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        write(this.deniedPermissions$$0, parcel, i, new IdentityCollection());
    }

    public static void write(DeniedPermissions deniedPermissions, Parcel parcel, int i, IdentityCollection identityCollection) {
        int key = identityCollection.getKey(deniedPermissions);
        if (key != -1) {
            parcel.writeInt(key);
        } else {
            parcel.writeInt(identityCollection.put(deniedPermissions));
        }
    }

    @Override
    public DeniedPermissions getParcel() {
        return this.deniedPermissions$$0;
    }

    public static DeniedPermissions read(Parcel parcel, IdentityCollection identityCollection) {
        int i = parcel.readInt();
        if (identityCollection.containsKey(i)) {
            if (identityCollection.isReserved(i)) {
                throw new ParcelerRuntimeException("An instance loop was detected whild building Parcelable and deseralization cannot continue.  This error is most likely due to using @ParcelConstructor or @ParcelFactory.");
            }
            return (DeniedPermissions) identityCollection.get(i);
        }
        int iReserve = identityCollection.reserve();
        DeniedPermissions deniedPermissions = new DeniedPermissions();
        identityCollection.put(iReserve, deniedPermissions);
        identityCollection.put(i, deniedPermissions);
        return deniedPermissions;
    }
}
