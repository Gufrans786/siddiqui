package androidx.datastore.preferences.protobuf;

import java.util.Map;

@CheckReturnValue
final class MapFieldSchemaLite implements MapFieldSchema {
    MapFieldSchemaLite() {
    }

    @Override
    public Map<?, ?> forMutableMapData(Object mapField) {
        return (MapFieldLite) mapField;
    }

    @Override
    public MapEntryLite.Metadata<?, ?> forMapMetadata(Object mapDefaultEntry) {
        return ((MapEntryLite) mapDefaultEntry).getMetadata();
    }

    @Override
    public Map<?, ?> forMapData(Object mapField) {
        return (MapFieldLite) mapField;
    }

    @Override
    public boolean isImmutable(Object mapField) {
        return !((MapFieldLite) mapField).isMutable();
    }

    @Override
    public Object toImmutable(Object mapField) {
        ((MapFieldLite) mapField).makeImmutable();
        return mapField;
    }

    @Override
    public Object newMapField(Object unused) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override
    public Object mergeFrom(Object destMapField, Object srcMapField) {
        return mergeFromLite(destMapField, srcMapField);
    }

    private static <K, V> MapFieldLite<K, V> mergeFromLite(Object destMapField, Object srcMapField) {
        MapFieldLite<K, V> mapFieldLiteMutableCopy = (MapFieldLite) destMapField;
        MapFieldLite<K, V> mapFieldLite = (MapFieldLite) srcMapField;
        if (!mapFieldLite.isEmpty()) {
            if (!mapFieldLiteMutableCopy.isMutable()) {
                mapFieldLiteMutableCopy = mapFieldLiteMutableCopy.mutableCopy();
            }
            mapFieldLiteMutableCopy.mergeFrom(mapFieldLite);
        }
        return mapFieldLiteMutableCopy;
    }

    @Override
    public int getSerializedSize(int fieldNumber, Object mapField, Object mapDefaultEntry) {
        return getSerializedSizeLite(fieldNumber, mapField, mapDefaultEntry);
    }

    private static <K, V> int getSerializedSizeLite(int fieldNumber, Object mapField, Object defaultEntry) {
        MapFieldLite mapFieldLite = (MapFieldLite) mapField;
        MapEntryLite mapEntryLite = (MapEntryLite) defaultEntry;
        int iComputeMessageSize = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            iComputeMessageSize += mapEntryLite.computeMessageSize(fieldNumber, entry.getKey(), entry.getValue());
        }
        return iComputeMessageSize;
    }
}
