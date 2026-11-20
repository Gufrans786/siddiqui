package org.parceler;

public interface TypeRangeParcelConverter<L, U extends L> {
    U fromParcel(android.os.Parcel parcel);

    void toParcel(L l, android.os.Parcel parcel);
}
