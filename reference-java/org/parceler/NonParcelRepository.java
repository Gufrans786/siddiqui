package org.parceler;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import org.parceler.converter.ArrayListParcelConverter;
import org.parceler.converter.BooleanArrayParcelConverter;
import org.parceler.converter.CharArrayParcelConverter;
import org.parceler.converter.CollectionParcelConverter;
import org.parceler.converter.HashMapParcelConverter;
import org.parceler.converter.HashSetParcelConverter;
import org.parceler.converter.LinkedHashMapParcelConverter;
import org.parceler.converter.LinkedHashSetParcelConverter;
import org.parceler.converter.LinkedListParcelConverter;
import org.parceler.converter.NullableParcelConverter;
import org.parceler.converter.SparseArrayParcelConverter;
import org.parceler.converter.TreeMapParcelConverter;
import org.parceler.converter.TreeSetParcelConverter;

final class NonParcelRepository implements Repository<Parcels.ParcelableFactory> {
    private static final NonParcelRepository INSTANCE = new NonParcelRepository();
    private final Map<Class, Parcels.ParcelableFactory> parcelableCollectionFactories;

    private NonParcelRepository() {
        HashMap map = new HashMap();
        this.parcelableCollectionFactories = map;
        map.put(Collection.class, new CollectionParcelableFactory());
        map.put(List.class, new ListParcelableFactory());
        map.put(ArrayList.class, new ListParcelableFactory());
        map.put(Set.class, new SetParcelableFactory());
        map.put(HashSet.class, new SetParcelableFactory());
        map.put(TreeSet.class, new TreeSetParcelableFactory());
        map.put(SparseArray.class, new SparseArrayParcelableFactory());
        map.put(Map.class, new MapParcelableFactory());
        map.put(HashMap.class, new MapParcelableFactory());
        map.put(TreeMap.class, new TreeMapParcelableFactory());
        map.put(Integer.class, new IntegerParcelableFactory());
        map.put(Long.class, new LongParcelableFactory());
        map.put(Double.class, new DoubleParcelableFactory());
        map.put(Float.class, new FloatParcelableFactory());
        map.put(Byte.class, new ByteParcelableFactory());
        map.put(String.class, new StringParcelableFactory());
        map.put(Character.class, new CharacterParcelableFactory());
        map.put(Boolean.class, new BooleanParcelableFactory());
        map.put(byte[].class, new ByteArrayParcelableFactory());
        map.put(char[].class, new CharArrayParcelableFactory());
        map.put(boolean[].class, new BooleanArrayParcelableFactory());
        map.put(IBinder.class, new IBinderParcelableFactory());
        map.put(Bundle.class, new BundleParcelableFactory());
        map.put(SparseBooleanArray.class, new SparseBooleanArrayParcelableFactory());
        map.put(LinkedList.class, new LinkedListParcelableFactory());
        map.put(LinkedHashMap.class, new LinkedHashMapParcelableFactory());
        map.put(SortedMap.class, new TreeMapParcelableFactory());
        map.put(SortedSet.class, new TreeSetParcelableFactory());
        map.put(LinkedHashSet.class, new LinkedHashSetParcelableFactory());
    }

    public static NonParcelRepository getInstance() {
        return INSTANCE;
    }

    @Override
    public Map<Class, Parcels.ParcelableFactory> get() {
        return this.parcelableCollectionFactories;
    }

    private static class ListParcelableFactory implements Parcels.ParcelableFactory<List> {
        private ListParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(List list) {
            return new ListParcelable(list);
        }
    }

    private static class CharacterParcelableFactory implements Parcels.ParcelableFactory<Character> {
        private CharacterParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Character ch2) {
            return new CharacterParcelable(ch2);
        }
    }

    private static class BooleanParcelableFactory implements Parcels.ParcelableFactory<Boolean> {
        private BooleanParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Boolean bool) {
            return new BooleanParcelable(bool.booleanValue());
        }
    }

    private static class ByteArrayParcelableFactory implements Parcels.ParcelableFactory<byte[]> {
        private ByteArrayParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(byte[] bArr) {
            return new ByteArrayParcelable(bArr);
        }
    }

    private static class CharArrayParcelableFactory implements Parcels.ParcelableFactory<char[]> {
        private CharArrayParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(char[] cArr) {
            return new CharArrayParcelable(cArr);
        }
    }

    private static class BooleanArrayParcelableFactory implements Parcels.ParcelableFactory<boolean[]> {
        private BooleanArrayParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(boolean[] zArr) {
            return new BooleanArrayParcelable(zArr);
        }
    }

    private static class IBinderParcelableFactory implements Parcels.ParcelableFactory<IBinder> {
        private IBinderParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(IBinder iBinder) {
            return new IBinderParcelable(iBinder);
        }
    }

    private static class BundleParcelableFactory implements Parcels.ParcelableFactory<Bundle> {
        @Override
        public Parcelable buildParcelable(Bundle bundle) {
            return bundle;
        }

        private BundleParcelableFactory() {
        }
    }

    private static class SparseBooleanArrayParcelableFactory implements Parcels.ParcelableFactory<SparseBooleanArray> {
        private SparseBooleanArrayParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(SparseBooleanArray sparseBooleanArray) {
            return new SparseBooleanArrayParcelable(sparseBooleanArray);
        }
    }

    private static class LinkedListParcelableFactory implements Parcels.ParcelableFactory<LinkedList> {
        private LinkedListParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(LinkedList linkedList) {
            return new LinkedListParcelable(linkedList);
        }
    }

    private static class LinkedHashMapParcelableFactory implements Parcels.ParcelableFactory<LinkedHashMap> {
        private LinkedHashMapParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(LinkedHashMap linkedHashMap) {
            return new LinkedHashMapParcelable(linkedHashMap);
        }
    }

    private static class LinkedHashSetParcelableFactory implements Parcels.ParcelableFactory<LinkedHashSet> {
        private LinkedHashSetParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(LinkedHashSet linkedHashSet) {
            return new LinkedHashSetParcelable(linkedHashSet);
        }
    }

    private static class SetParcelableFactory implements Parcels.ParcelableFactory<Set> {
        private SetParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Set set) {
            return new SetParcelable(set);
        }
    }

    private static class TreeSetParcelableFactory implements Parcels.ParcelableFactory<Set> {
        private TreeSetParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Set set) {
            return new TreeSetParcelable(set);
        }
    }

    private static class MapParcelableFactory implements Parcels.ParcelableFactory<Map> {
        private MapParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Map map) {
            return new MapParcelable(map);
        }
    }

    private static class TreeMapParcelableFactory implements Parcels.ParcelableFactory<Map> {
        private TreeMapParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Map map) {
            return new TreeMapParcelable(map);
        }
    }

    private static class CollectionParcelableFactory implements Parcels.ParcelableFactory<Collection> {
        private CollectionParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Collection collection) {
            return new CollectionParcelable(collection);
        }
    }

    private static class SparseArrayParcelableFactory implements Parcels.ParcelableFactory<SparseArray> {
        private SparseArrayParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(SparseArray sparseArray) {
            return new SparseArrayParcelable(sparseArray);
        }
    }

    private static class IntegerParcelableFactory implements Parcels.ParcelableFactory<Integer> {
        private IntegerParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Integer num) {
            return new IntegerParcelable(num);
        }
    }

    private static class LongParcelableFactory implements Parcels.ParcelableFactory<Long> {
        private LongParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Long l) {
            return new LongParcelable(l);
        }
    }

    private static class DoubleParcelableFactory implements Parcels.ParcelableFactory<Double> {
        private DoubleParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Double d) {
            return new DoubleParcelable(d);
        }
    }

    private static class FloatParcelableFactory implements Parcels.ParcelableFactory<Float> {
        private FloatParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Float f) {
            return new FloatParcelable(f);
        }
    }

    private static class ByteParcelableFactory implements Parcels.ParcelableFactory<Byte> {
        private ByteParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Byte b) {
            return new ByteParcelable(b);
        }
    }

    private static class StringParcelableFactory implements Parcels.ParcelableFactory<String> {
        private StringParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(String str) {
            return new StringParcelable(str);
        }
    }

    static class ParcelableParcelableFactory implements Parcels.ParcelableFactory<Parcelable> {
        ParcelableParcelableFactory() {
        }

        @Override
        public Parcelable buildParcelable(Parcelable parcelable) {
            return new ParcelableParcelable(parcelable);
        }
    }

    public static final class ListParcelable extends ConverterParcelable<List> {
        private static final ArrayListParcelConverter CONVERTER = new ArrayListParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(ListParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final ListParcelableCreator CREATOR = new ListParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public ListParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public ListParcelable(List list) {
            super(list, CONVERTER);
        }

        private static final class ListParcelableCreator implements Parcelable.Creator<ListParcelable> {
            private ListParcelableCreator() {
            }

            @Override
            public ListParcelable createFromParcel(android.os.Parcel parcel) {
                return new ListParcelable(parcel);
            }

            @Override
            public ListParcelable[] newArray(int i) {
                return new ListParcelable[i];
            }
        }
    }

    public static final class LinkedListParcelable extends ConverterParcelable<LinkedList> {
        private static final LinkedListParcelConverter CONVERTER = new LinkedListParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(LinkedListParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final LinkedListParcelableCreator CREATOR = new LinkedListParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public LinkedListParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public LinkedListParcelable(LinkedList linkedList) {
            super(linkedList, CONVERTER);
        }

        private static final class LinkedListParcelableCreator implements Parcelable.Creator<LinkedListParcelable> {
            private LinkedListParcelableCreator() {
            }

            @Override
            public LinkedListParcelable createFromParcel(android.os.Parcel parcel) {
                return new LinkedListParcelable(parcel);
            }

            @Override
            public LinkedListParcelable[] newArray(int i) {
                return new LinkedListParcelable[i];
            }
        }
    }

    public static final class MapParcelable extends ConverterParcelable<Map> {
        private static final HashMapParcelConverter CONVERTER = new HashMapParcelConverter() {
            @Override
            public void mapKeyToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public void mapValueToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public Object mapKeyFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }

            @Override
            public Object mapValueFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }
        };
        public static final MapParcelableCreator CREATOR = new MapParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public MapParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public MapParcelable(Map map) {
            super(map, CONVERTER);
        }

        private static final class MapParcelableCreator implements Parcelable.Creator<MapParcelable> {
            private MapParcelableCreator() {
            }

            @Override
            public MapParcelable createFromParcel(android.os.Parcel parcel) {
                return new MapParcelable(parcel);
            }

            @Override
            public MapParcelable[] newArray(int i) {
                return new MapParcelable[i];
            }
        }
    }

    public static final class LinkedHashMapParcelable extends ConverterParcelable<LinkedHashMap> {
        private static final LinkedHashMapParcelConverter CONVERTER = new LinkedHashMapParcelConverter() {
            @Override
            public void mapKeyToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public void mapValueToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public Object mapKeyFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }

            @Override
            public Object mapValueFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }
        };
        public static final LinkedHashMapParcelableCreator CREATOR = new LinkedHashMapParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public LinkedHashMapParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public LinkedHashMapParcelable(LinkedHashMap linkedHashMap) {
            super(linkedHashMap, CONVERTER);
        }

        private static final class LinkedHashMapParcelableCreator implements Parcelable.Creator<LinkedHashMapParcelable> {
            private LinkedHashMapParcelableCreator() {
            }

            @Override
            public LinkedHashMapParcelable createFromParcel(android.os.Parcel parcel) {
                return new LinkedHashMapParcelable(parcel);
            }

            @Override
            public LinkedHashMapParcelable[] newArray(int i) {
                return new LinkedHashMapParcelable[i];
            }
        }
    }

    public static final class TreeMapParcelable extends ConverterParcelable<Map> {
        private static final TreeMapParcelConverter CONVERTER = new TreeMapParcelConverter() {
            @Override
            public void mapKeyToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public void mapValueToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }

            @Override
            public Object mapKeyFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }

            @Override
            public Object mapValueFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(MapParcelable.class.getClassLoader()));
            }
        };
        public static final TreeMapParcelableCreator CREATOR = new TreeMapParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public TreeMapParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public TreeMapParcelable(Map map) {
            super(map, CONVERTER);
        }

        private static final class TreeMapParcelableCreator implements Parcelable.Creator<TreeMapParcelable> {
            private TreeMapParcelableCreator() {
            }

            @Override
            public TreeMapParcelable createFromParcel(android.os.Parcel parcel) {
                return new TreeMapParcelable(parcel);
            }

            @Override
            public TreeMapParcelable[] newArray(int i) {
                return new TreeMapParcelable[i];
            }
        }
    }

    public static final class SetParcelable extends ConverterParcelable<Set> {
        private static final HashSetParcelConverter CONVERTER = new HashSetParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(SetParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final SetParcelableCreator CREATOR = new SetParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public SetParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public SetParcelable(Set set) {
            super(set, CONVERTER);
        }

        private static final class SetParcelableCreator implements Parcelable.Creator<SetParcelable> {
            private SetParcelableCreator() {
            }

            @Override
            public SetParcelable createFromParcel(android.os.Parcel parcel) {
                return new SetParcelable(parcel);
            }

            @Override
            public SetParcelable[] newArray(int i) {
                return new SetParcelable[i];
            }
        }
    }

    public static final class TreeSetParcelable extends ConverterParcelable<Set> {
        private static final TreeSetParcelConverter CONVERTER = new TreeSetParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(TreeSetParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final TreeSetParcelableCreator CREATOR = new TreeSetParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public TreeSetParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public TreeSetParcelable(Set set) {
            super(set, CONVERTER);
        }

        private static final class TreeSetParcelableCreator implements Parcelable.Creator<TreeSetParcelable> {
            private TreeSetParcelableCreator() {
            }

            @Override
            public TreeSetParcelable createFromParcel(android.os.Parcel parcel) {
                return new TreeSetParcelable(parcel);
            }

            @Override
            public TreeSetParcelable[] newArray(int i) {
                return new TreeSetParcelable[i];
            }
        }
    }

    public static final class LinkedHashSetParcelable extends ConverterParcelable<LinkedHashSet> {
        private static final LinkedHashSetParcelConverter CONVERTER = new LinkedHashSetParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(LinkedHashSetParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final LinkedHashSetParcelableCreator CREATOR = new LinkedHashSetParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public LinkedHashSetParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public LinkedHashSetParcelable(LinkedHashSet linkedHashSet) {
            super(linkedHashSet, CONVERTER);
        }

        private static final class LinkedHashSetParcelableCreator implements Parcelable.Creator<LinkedHashSetParcelable> {
            private LinkedHashSetParcelableCreator() {
            }

            @Override
            public LinkedHashSetParcelable createFromParcel(android.os.Parcel parcel) {
                return new LinkedHashSetParcelable(parcel);
            }

            @Override
            public LinkedHashSetParcelable[] newArray(int i) {
                return new LinkedHashSetParcelable[i];
            }
        }
    }

    public static final class CollectionParcelable extends ConverterParcelable<Collection> {
        private static final CollectionParcelConverter CONVERTER = new ArrayListParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(CollectionParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final CollectionParcelableCreator CREATOR = new CollectionParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public CollectionParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public CollectionParcelable(Collection collection) {
            super(collection, CONVERTER);
        }

        private static final class CollectionParcelableCreator implements Parcelable.Creator<CollectionParcelable> {
            private CollectionParcelableCreator() {
            }

            @Override
            public CollectionParcelable createFromParcel(android.os.Parcel parcel) {
                return new CollectionParcelable(parcel);
            }

            @Override
            public CollectionParcelable[] newArray(int i) {
                return new CollectionParcelable[i];
            }
        }
    }

    public static final class SparseArrayParcelable extends ConverterParcelable<SparseArray> {
        private static final SparseArrayParcelConverter CONVERTER = new SparseArrayParcelConverter() {
            @Override
            public Object itemFromParcel(android.os.Parcel parcel) {
                return Parcels.unwrap(parcel.readParcelable(SparseArrayParcelable.class.getClassLoader()));
            }

            @Override
            public void itemToParcel(Object obj, android.os.Parcel parcel) {
                parcel.writeParcelable(Parcels.wrap(obj), 0);
            }
        };
        public static final SparseArrayCreator CREATOR = new SparseArrayCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public SparseArrayParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public SparseArrayParcelable(SparseArray sparseArray) {
            super(sparseArray, CONVERTER);
        }

        private static final class SparseArrayCreator implements Parcelable.Creator<SparseArrayParcelable> {
            private SparseArrayCreator() {
            }

            @Override
            public SparseArrayParcelable createFromParcel(android.os.Parcel parcel) {
                return new SparseArrayParcelable(parcel);
            }

            @Override
            public SparseArrayParcelable[] newArray(int i) {
                return new SparseArrayParcelable[i];
            }
        }
    }

    public static final class SparseBooleanArrayParcelable extends ConverterParcelable<SparseBooleanArray> {
        private static final NullableParcelConverter<SparseBooleanArray> CONVERTER = new NullableParcelConverter<SparseBooleanArray>() {
            @Override
            public SparseBooleanArray nullSafeFromParcel(android.os.Parcel parcel) {
                return parcel.readSparseBooleanArray();
            }

            @Override
            public void nullSafeToParcel(SparseBooleanArray sparseBooleanArray, android.os.Parcel parcel) {
                parcel.writeSparseBooleanArray(sparseBooleanArray);
            }
        };
        public static final SparseBooleanArrayCreator CREATOR = new SparseBooleanArrayCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public SparseBooleanArrayParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public SparseBooleanArrayParcelable(SparseBooleanArray sparseBooleanArray) {
            super(sparseBooleanArray, CONVERTER);
        }

        private static final class SparseBooleanArrayCreator implements Parcelable.Creator<SparseBooleanArrayParcelable> {
            private SparseBooleanArrayCreator() {
            }

            @Override
            public SparseBooleanArrayParcelable createFromParcel(android.os.Parcel parcel) {
                return new SparseBooleanArrayParcelable(parcel);
            }

            @Override
            public SparseBooleanArrayParcelable[] newArray(int i) {
                return new SparseBooleanArrayParcelable[i];
            }
        }
    }

    public static final class IntegerParcelable extends ConverterParcelable<Integer> {
        private static final NullableParcelConverter<Integer> CONVERTER = new NullableParcelConverter<Integer>() {
            @Override
            public Integer nullSafeFromParcel(android.os.Parcel parcel) {
                return Integer.valueOf(parcel.readInt());
            }

            @Override
            public void nullSafeToParcel(Integer num, android.os.Parcel parcel) {
                parcel.writeInt(num.intValue());
            }
        };
        public static final IntegerParcelableCreator CREATOR = new IntegerParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public IntegerParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public IntegerParcelable(Integer num) {
            super(num, CONVERTER);
        }

        private static final class IntegerParcelableCreator implements Parcelable.Creator<IntegerParcelable> {
            private IntegerParcelableCreator() {
            }

            @Override
            public IntegerParcelable createFromParcel(android.os.Parcel parcel) {
                return new IntegerParcelable(parcel);
            }

            @Override
            public IntegerParcelable[] newArray(int i) {
                return new IntegerParcelable[i];
            }
        }
    }

    public static final class LongParcelable extends ConverterParcelable<Long> {
        private static final NullableParcelConverter<Long> CONVERTER = new NullableParcelConverter<Long>() {
            @Override
            public Long nullSafeFromParcel(android.os.Parcel parcel) {
                return Long.valueOf(parcel.readLong());
            }

            @Override
            public void nullSafeToParcel(Long l, android.os.Parcel parcel) {
                parcel.writeLong(l.longValue());
            }
        };
        public static final LongParcelableCreator CREATOR = new LongParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public LongParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public LongParcelable(Long l) {
            super(l, CONVERTER);
        }

        private static final class LongParcelableCreator implements Parcelable.Creator<LongParcelable> {
            private LongParcelableCreator() {
            }

            @Override
            public LongParcelable createFromParcel(android.os.Parcel parcel) {
                return new LongParcelable(parcel);
            }

            @Override
            public LongParcelable[] newArray(int i) {
                return new LongParcelable[i];
            }
        }
    }

    public static final class DoubleParcelable extends ConverterParcelable<Double> {
        private static final NullableParcelConverter<Double> CONVERTER = new NullableParcelConverter<Double>() {
            @Override
            public Double nullSafeFromParcel(android.os.Parcel parcel) {
                return Double.valueOf(parcel.readDouble());
            }

            @Override
            public void nullSafeToParcel(Double d, android.os.Parcel parcel) {
                parcel.writeDouble(d.doubleValue());
            }
        };
        public static final DoubleParcelableCreator CREATOR = new DoubleParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public DoubleParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public DoubleParcelable(Double d) {
            super(d, CONVERTER);
        }

        private static final class DoubleParcelableCreator implements Parcelable.Creator<DoubleParcelable> {
            private DoubleParcelableCreator() {
            }

            @Override
            public DoubleParcelable createFromParcel(android.os.Parcel parcel) {
                return new DoubleParcelable(parcel);
            }

            @Override
            public DoubleParcelable[] newArray(int i) {
                return new DoubleParcelable[i];
            }
        }
    }

    public static final class FloatParcelable extends ConverterParcelable<Float> {
        private static final NullableParcelConverter<Float> CONVERTER = new NullableParcelConverter<Float>() {
            @Override
            public Float nullSafeFromParcel(android.os.Parcel parcel) {
                return Float.valueOf(parcel.readFloat());
            }

            @Override
            public void nullSafeToParcel(Float f, android.os.Parcel parcel) {
                parcel.writeFloat(f.floatValue());
            }
        };
        public static final FloatParcelableCreator CREATOR = new FloatParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public FloatParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public FloatParcelable(Float f) {
            super(f, CONVERTER);
        }

        private static final class FloatParcelableCreator implements Parcelable.Creator<FloatParcelable> {
            private FloatParcelableCreator() {
            }

            @Override
            public FloatParcelable createFromParcel(android.os.Parcel parcel) {
                return new FloatParcelable(parcel);
            }

            @Override
            public FloatParcelable[] newArray(int i) {
                return new FloatParcelable[i];
            }
        }
    }

    public static final class ByteParcelable extends ConverterParcelable<Byte> {
        private static final NullableParcelConverter<Byte> CONVERTER = new NullableParcelConverter<Byte>() {
            @Override
            public Byte nullSafeFromParcel(android.os.Parcel parcel) {
                return Byte.valueOf(parcel.readByte());
            }

            @Override
            public void nullSafeToParcel(Byte b, android.os.Parcel parcel) {
                parcel.writeByte(b.byteValue());
            }
        };
        public static final ByteParcelableCreator CREATOR = new ByteParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public ByteParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public ByteParcelable(Byte b) {
            super(b, CONVERTER);
        }

        private static final class ByteParcelableCreator implements Parcelable.Creator<ByteParcelable> {
            private ByteParcelableCreator() {
            }

            @Override
            public ByteParcelable createFromParcel(android.os.Parcel parcel) {
                return new ByteParcelable(parcel);
            }

            @Override
            public ByteParcelable[] newArray(int i) {
                return new ByteParcelable[i];
            }
        }
    }

    public static final class IBinderParcelable extends ConverterParcelable<IBinder> {
        private static final NullableParcelConverter<IBinder> CONVERTER = new NullableParcelConverter<IBinder>() {
            @Override
            public IBinder nullSafeFromParcel(android.os.Parcel parcel) {
                return parcel.readStrongBinder();
            }

            @Override
            public void nullSafeToParcel(IBinder iBinder, android.os.Parcel parcel) {
                parcel.writeStrongBinder(iBinder);
            }
        };
        public static final IBinderParcelableCreator CREATOR = new IBinderParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public IBinderParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public IBinderParcelable(IBinder iBinder) {
            super(iBinder, CONVERTER);
        }

        private static final class IBinderParcelableCreator implements Parcelable.Creator<IBinderParcelable> {
            private IBinderParcelableCreator() {
            }

            @Override
            public IBinderParcelable createFromParcel(android.os.Parcel parcel) {
                return new IBinderParcelable(parcel);
            }

            @Override
            public IBinderParcelable[] newArray(int i) {
                return new IBinderParcelable[i];
            }
        }
    }

    public static final class ByteArrayParcelable extends ConverterParcelable<byte[]> {
        private static final NullableParcelConverter<byte[]> CONVERTER = new NullableParcelConverter<byte[]>() {
            @Override
            public byte[] nullSafeFromParcel(android.os.Parcel parcel) {
                return parcel.createByteArray();
            }

            @Override
            public void nullSafeToParcel(byte[] bArr, android.os.Parcel parcel) {
                parcel.writeByteArray(bArr);
            }
        };
        public static final ByteArrayParcelableCreator CREATOR = new ByteArrayParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public ByteArrayParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public ByteArrayParcelable(byte[] bArr) {
            super(bArr, CONVERTER);
        }

        private static final class ByteArrayParcelableCreator implements Parcelable.Creator<ByteArrayParcelable> {
            private ByteArrayParcelableCreator() {
            }

            @Override
            public ByteArrayParcelable createFromParcel(android.os.Parcel parcel) {
                return new ByteArrayParcelable(parcel);
            }

            @Override
            public ByteArrayParcelable[] newArray(int i) {
                return new ByteArrayParcelable[i];
            }
        }
    }

    public static final class BooleanArrayParcelable extends ConverterParcelable<boolean[]> {
        private static final BooleanArrayParcelConverter CONVERTER = new BooleanArrayParcelConverter();
        public static final BooleanArrayParcelableCreator CREATOR = new BooleanArrayParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public BooleanArrayParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public BooleanArrayParcelable(boolean[] zArr) {
            super(zArr, CONVERTER);
        }

        private static final class BooleanArrayParcelableCreator implements Parcelable.Creator<BooleanArrayParcelable> {
            private BooleanArrayParcelableCreator() {
            }

            @Override
            public BooleanArrayParcelable createFromParcel(android.os.Parcel parcel) {
                return new BooleanArrayParcelable(parcel);
            }

            @Override
            public BooleanArrayParcelable[] newArray(int i) {
                return new BooleanArrayParcelable[i];
            }
        }
    }

    public static final class BooleanParcelable extends ConverterParcelable<Boolean> {
        private static final NullableParcelConverter<Boolean> CONVERTER = new NullableParcelConverter<Boolean>() {
            @Override
            public Boolean nullSafeFromParcel(android.os.Parcel parcel) {
                return Boolean.valueOf(parcel.createBooleanArray()[0]);
            }

            @Override
            public void nullSafeToParcel(Boolean bool, android.os.Parcel parcel) {
                parcel.writeBooleanArray(new boolean[]{bool.booleanValue()});
            }
        };
        public static final BooleanParcelableCreator CREATOR = new BooleanParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public BooleanParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public BooleanParcelable(boolean z) {
            super(Boolean.valueOf(z), CONVERTER);
        }

        private static final class BooleanParcelableCreator implements Parcelable.Creator<BooleanParcelable> {
            private BooleanParcelableCreator() {
            }

            @Override
            public BooleanParcelable createFromParcel(android.os.Parcel parcel) {
                return new BooleanParcelable(parcel);
            }

            @Override
            public BooleanParcelable[] newArray(int i) {
                return new BooleanParcelable[i];
            }
        }
    }

    public static final class CharArrayParcelable extends ConverterParcelable<char[]> {
        private static final CharArrayParcelConverter CONVERTER = new CharArrayParcelConverter();
        public static final CharArrayParcelableCreator CREATOR = new CharArrayParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public CharArrayParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public CharArrayParcelable(char[] cArr) {
            super(cArr, CONVERTER);
        }

        private static final class CharArrayParcelableCreator implements Parcelable.Creator<CharArrayParcelable> {
            private CharArrayParcelableCreator() {
            }

            @Override
            public CharArrayParcelable createFromParcel(android.os.Parcel parcel) {
                return new CharArrayParcelable(parcel);
            }

            @Override
            public CharArrayParcelable[] newArray(int i) {
                return new CharArrayParcelable[i];
            }
        }
    }

    public static final class CharacterParcelable extends ConverterParcelable<Character> {
        private static final NullableParcelConverter<Character> CONVERTER = new NullableParcelConverter<Character>() {
            @Override
            public Character nullSafeFromParcel(android.os.Parcel parcel) {
                return Character.valueOf(parcel.createCharArray()[0]);
            }

            @Override
            public void nullSafeToParcel(Character ch2, android.os.Parcel parcel) {
                parcel.writeCharArray(new char[]{ch2.charValue()});
            }
        };
        public static final CharacterParcelableCreator CREATOR = new CharacterParcelableCreator();

        @Override
        public int describeContents() {
            return super.describeContents();
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        public CharacterParcelable(android.os.Parcel parcel) {
            super(parcel, (TypeRangeParcelConverter) CONVERTER);
        }

        public CharacterParcelable(Character ch2) {
            super(ch2, CONVERTER);
        }

        private static final class CharacterParcelableCreator implements Parcelable.Creator<CharacterParcelable> {
            private CharacterParcelableCreator() {
            }

            @Override
            public CharacterParcelable createFromParcel(android.os.Parcel parcel) {
                return new CharacterParcelable(parcel);
            }

            @Override
            public CharacterParcelable[] newArray(int i) {
                return new CharacterParcelable[i];
            }
        }
    }

    public static final class StringParcelable implements Parcelable, ParcelWrapper<String> {
        public static final StringParcelableCreator CREATOR = new StringParcelableCreator();
        private String contents;

        @Override
        public int describeContents() {
            return 0;
        }

        private StringParcelable(android.os.Parcel parcel) {
            this.contents = parcel.readString();
        }

        private StringParcelable(String str) {
            this.contents = str;
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.contents);
        }

        @Override
        public String getParcel() {
            return this.contents;
        }

        private static final class StringParcelableCreator implements Parcelable.Creator<StringParcelable> {
            private StringParcelableCreator() {
            }

            @Override
            public StringParcelable createFromParcel(android.os.Parcel parcel) {
                return new StringParcelable(parcel);
            }

            @Override
            public StringParcelable[] newArray(int i) {
                return new StringParcelable[i];
            }
        }
    }

    private static class ConverterParcelable<T> implements Parcelable, ParcelWrapper<T> {
        private final TypeRangeParcelConverter<T, T> converter;
        private final T value;

        @Override
        public int describeContents() {
            return 0;
        }

        private ConverterParcelable(android.os.Parcel parcel, TypeRangeParcelConverter<T, T> typeRangeParcelConverter) {
            this(typeRangeParcelConverter.fromParcel(parcel), typeRangeParcelConverter);
        }

        private ConverterParcelable(T t, TypeRangeParcelConverter<T, T> typeRangeParcelConverter) {
            this.converter = typeRangeParcelConverter;
            this.value = t;
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            this.converter.toParcel(this.value, parcel);
        }

        @Override
        public T getParcel() {
            return this.value;
        }
    }

    public static final class ParcelableParcelable implements Parcelable, ParcelWrapper<Parcelable> {
        public static final ParcelableParcelableCreator CREATOR = new ParcelableParcelableCreator();
        private Parcelable parcelable;

        @Override
        public int describeContents() {
            return 0;
        }

        private ParcelableParcelable(android.os.Parcel parcel) {
            this.parcelable = parcel.readParcelable(ParcelableParcelable.class.getClassLoader());
        }

        private ParcelableParcelable(Parcelable parcelable) {
            this.parcelable = parcelable;
        }

        @Override
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.parcelable, i);
        }

        @Override
        public Parcelable getParcel() {
            return this.parcelable;
        }

        private static final class ParcelableParcelableCreator implements Parcelable.Creator<ParcelableParcelable> {
            private ParcelableParcelableCreator() {
            }

            @Override
            public ParcelableParcelable createFromParcel(android.os.Parcel parcel) {
                return new ParcelableParcelable(parcel);
            }

            @Override
            public ParcelableParcelable[] newArray(int i) {
                return new ParcelableParcelable[i];
            }
        }
    }
}
