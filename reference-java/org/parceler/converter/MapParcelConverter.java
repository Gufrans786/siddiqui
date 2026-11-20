package org.parceler.converter;

import android.os.Parcel;
import java.util.Map;
import org.parceler.TypeRangeParcelConverter;

public abstract class MapParcelConverter<K, V, M extends Map<K, V>> implements TypeRangeParcelConverter<Map<K, V>, M> {
    private static final int NULL = -1;

    public abstract M createMap();

    public abstract K mapKeyFromParcel(Parcel parcel);

    public abstract void mapKeyToParcel(K k, Parcel parcel);

    public abstract V mapValueFromParcel(Parcel parcel);

    public abstract void mapValueToParcel(V v, Parcel parcel);

    @Override
    public void toParcel(Map<K, V> map, Parcel parcel) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            mapKeyToParcel(entry.getKey(), parcel);
            mapValueToParcel(entry.getValue(), parcel);
        }
    }

    @Override
    public M fromParcel(Parcel parcel) {
        int i = parcel.readInt();
        if (i == -1) {
            return null;
        }
        M m = (M) createMap();
        for (int i2 = 0; i2 < i; i2++) {
            m.put(mapKeyFromParcel(parcel), mapValueFromParcel(parcel));
        }
        return m;
    }
}
