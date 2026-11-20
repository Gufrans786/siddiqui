package com.mapbox.maps.extension.style.sources;

import com.mapbox.bindgen.Value;
import com.mapbox.maps.extension.style.sources.generated.Encoding;
import com.mapbox.maps.extension.style.sources.generated.Scheme;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0007\bB\u000f\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/TileSet;", "Ljava/util/HashMap;", "", "Lcom/mapbox/bindgen/Value;", "builder", "Lcom/mapbox/maps/extension/style/sources/TileSet$Builder;", "(Lcom/mapbox/maps/extension/style/sources/TileSet$Builder;)V", "Builder", "RasterDemBuilder", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class TileSet extends HashMap<String, Value> {
    public TileSet(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private TileSet(Builder builder) {
        super(builder.getParameters$extension_style_release());
    }

    @Override
    public final boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    public boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    public boolean containsValue(Value value) {
        return super.containsValue((Object) value);
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj instanceof Value) {
            return containsValue((Value) obj);
        }
        return false;
    }

    @Override
    public final Set<Map.Entry<String, Value>> entrySet() {
        return getEntries();
    }

    @Override
    public final Value get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public Value get(String str) {
        return (Value) super.get((Object) str);
    }

    @Override
    public final Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public Set<Map.Entry<String, Value>> getEntries() {
        return super.entrySet();
    }

    public Set<String> getKeys() {
        return super.keySet();
    }

    public final Value getOrDefault(Object obj, Value value) {
        return !(obj instanceof String) ? value : getOrDefault((String) obj, value);
    }

    public Value getOrDefault(String str, Value value) {
        return (Value) super.getOrDefault((Object) str, value);
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Value) obj2);
    }

    public int getSize() {
        return super.size();
    }

    public Collection<Value> getValues() {
        return super.values();
    }

    @Override
    public final Set<String> keySet() {
        return getKeys();
    }

    @Override
    public final Value remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    public Value remove(String str) {
        return (Value) super.remove((Object) str);
    }

    @Override
    public final Object remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof Value)) {
            return remove((String) obj, (Value) obj2);
        }
        return false;
    }

    public boolean remove(String str, Value value) {
        return super.remove((Object) str, (Object) value);
    }

    @Override
    public final int size() {
        return getSize();
    }

    @Override
    public final Collection<Value> values() {
        return getValues();
    }

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u0016\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005J\u0006\u0010\u0014\u001a\u00020\u0015J\u0014\u0010\u0016\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005J\u0014\u0010\u0017\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u0014\u0010\u0019\u001a\u00020\u00002\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u0010\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020 J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0003J\u0010\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u0003R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006#"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/TileSet$Builder;", "", "tilejson", "", "tiles", "", "(Ljava/lang/String;Ljava/util/List;)V", "parameters", "Ljava/util/HashMap;", "Lcom/mapbox/bindgen/Value;", "getParameters$extension_style_release", "()Ljava/util/HashMap;", "getTilejson", "()Ljava/lang/String;", "getTiles", "()Ljava/util/List;", "attribution", "value", "bounds", "", "build", "Lcom/mapbox/maps/extension/style/sources/TileSet;", "center", "data", "description", "grids", "legend", "maxZoom", "", "minZoom", "name", "scheme", "Lcom/mapbox/maps/extension/style/sources/generated/Scheme;", "template", "version", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static class Builder {
        private final HashMap<String, Value> parameters;
        private final String tilejson;
        private final List<String> tiles;

        public Builder(String tilejson, List<String> tiles) {
            Intrinsics.checkNotNullParameter(tilejson, "tilejson");
            Intrinsics.checkNotNullParameter(tiles, "tiles");
            this.tilejson = tilejson;
            this.tiles = tiles;
            HashMap<String, Value> map = new HashMap<>();
            this.parameters = map;
            map.put("tilejson", new Value(tilejson));
            HashMap<String, Value> map2 = map;
            List<String> list = tiles;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value((String) it.next()));
            }
            map2.put("tiles", new Value((List<Value>) arrayList));
        }

        public final String getTilejson() {
            return this.tilejson;
        }

        public final List<String> getTiles() {
            return this.tiles;
        }

        public final HashMap<String, Value> getParameters$extension_style_release() {
            return this.parameters;
        }

        public final Builder name(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("name", new Value(value));
            return this;
        }

        public final Builder description(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("description", new Value(value));
            return this;
        }

        public static Builder version$default(Builder builder, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: version");
            }
            if ((i & 1) != 0) {
                str = "1.0.0";
            }
            return builder.version(str);
        }

        public final Builder version(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("version", new Value(value));
            return this;
        }

        public final Builder attribution(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("attribution", new Value(value));
            return this;
        }

        public final Builder template(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("template", new Value(value));
            return this;
        }

        public final Builder legend(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("legend", new Value(value));
            return this;
        }

        public final Builder scheme(Scheme value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.parameters.put("scheme", new Value(value.getValue()));
            return this;
        }

        public final Builder grids(List<String> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            HashMap<String, Value> map = this.parameters;
            List<String> list = value;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value((String) it.next()));
            }
            map.put("grids", new Value((List<Value>) arrayList));
            return this;
        }

        public final Builder data(List<String> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            HashMap<String, Value> map = this.parameters;
            List<String> list = value;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value((String) it.next()));
            }
            map.put("data", new Value((List<Value>) arrayList));
            return this;
        }

        public static Builder minZoom$default(Builder builder, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: minZoom");
            }
            if ((i2 & 1) != 0) {
                i = 0;
            }
            return builder.minZoom(i);
        }

        public final Builder minZoom(int value) {
            this.parameters.put("minzoom", new Value(value));
            return this;
        }

        public static Builder maxZoom$default(Builder builder, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: maxZoom");
            }
            if ((i2 & 1) != 0) {
                i = 30;
            }
            return builder.maxZoom(i);
        }

        public final Builder maxZoom(int value) {
            this.parameters.put("maxzoom", new Value(value));
            return this;
        }

        public static Builder bounds$default(Builder builder, List list, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bounds");
            }
            if ((i & 1) != 0) {
                list = CollectionsKt.listOf((Object[]) new Double[]{Double.valueOf(-180.0d), Double.valueOf(-90.0d), Double.valueOf(180.0d), Double.valueOf(90.0d)});
            }
            return builder.bounds(list);
        }

        public final Builder bounds(List<Double> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            HashMap<String, Value> map = this.parameters;
            List<Double> list = value;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value(((Number) it.next()).doubleValue()));
            }
            map.put("bounds", new Value((List<Value>) arrayList));
            return this;
        }

        public final Builder center(List<Double> value) {
            Intrinsics.checkNotNullParameter(value, "value");
            HashMap<String, Value> map = this.parameters;
            List<Double> list = value;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Value(((Number) it.next()).doubleValue()));
            }
            map.put("center", new Value((List<Value>) arrayList));
            return this;
        }

        public final TileSet build() {
            return new TileSet(this, null);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/mapbox/maps/extension/style/sources/TileSet$RasterDemBuilder;", "Lcom/mapbox/maps/extension/style/sources/TileSet$Builder;", "tilejson", "", "tiles", "", "(Ljava/lang/String;Ljava/util/List;)V", "encoding", "value", "Lcom/mapbox/maps/extension/style/sources/generated/Encoding;", "extension-style_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class RasterDemBuilder extends Builder {
        public RasterDemBuilder(String tilejson, List<String> tiles) {
            super(tilejson, tiles);
            Intrinsics.checkNotNullParameter(tilejson, "tilejson");
            Intrinsics.checkNotNullParameter(tiles, "tiles");
        }

        public final RasterDemBuilder encoding(Encoding value) {
            Intrinsics.checkNotNullParameter(value, "value");
            getParameters$extension_style_release().put("encoding", new Value(value.getValue()));
            return this;
        }
    }
}
