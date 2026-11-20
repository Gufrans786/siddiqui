package org.parceler;

public interface ParcelConverter<T> extends TypeRangeParcelConverter<T, T> {
    public static final String CONVERT_FROM_PARCEL = "fromParcel";
    public static final String CONVERT_TO_PARCEL = "toParcel";

    public static class EmptyConverter implements ParcelConverter<Object> {
        @Override
        public void toParcel(Object obj, android.os.Parcel parcel) {
            throw new ParcelerRuntimeException("Empty Converter should not be used.");
        }

        @Override
        public Object fromParcel(android.os.Parcel parcel) {
            throw new ParcelerRuntimeException("Empty Converter should not be used.");
        }
    }
}
