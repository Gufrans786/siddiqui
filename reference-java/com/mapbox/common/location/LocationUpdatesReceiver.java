package com.mapbox.common.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import androidx.startup.AppInitializer;
import ch.qos.logback.core.CoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mapbox.common.MapboxCommonLogger;
import com.mapbox.common.MapboxSDKCommonInitializer;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0002\t\nB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\u000b"}, d2 = {"Lcom/mapbox/common/location/LocationUpdatesReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "CircularArray", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LocationUpdatesReceiver extends BroadcastReceiver {
    public static final String ACTION_PROCESS_LOCATION_UPDATES = "com.mapbox.common.location.action.PROCESS_LOCATION_UPDATES";
    public static final String LOCATION_PROVIDER_ID_KEY = "com.mapbox.common.location.DeviceLocationProvider.ID";
    private static final String TAG = "LUReceiver";

    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<Integer, CircularArray<Intent>> pendingIntents = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<Integer, WeakReference<BaseDeviceLocationProvider>> backgroundDeviceLocationProviders = new ConcurrentHashMap<>();

    @Override
    public void onReceive(Context context, Intent intent) {
        CircularArray<Intent> circularArrayPutIfAbsent;
        Intrinsics.checkNotNullParameter(context, "context");
        if (intent == null || !Intrinsics.areEqual(intent.getAction(), ACTION_PROCESS_LOCATION_UPDATES)) {
            return;
        }
        AppInitializer.getInstance(context).initializeComponent(MapboxSDKCommonInitializer.class);
        if (!intent.hasExtra(LOCATION_PROVIDER_ID_KEY)) {
            try {
                MapboxCommonLogger.INSTANCE.logW$common_release(TAG, "Missing location provider persistent id");
                return;
            } catch (Throwable unused) {
                Log.w(TAG, "Missing location provider persistent id");
                return;
            }
        }
        int intExtra = intent.getIntExtra(LOCATION_PROVIDER_ID_KEY, 0);
        WeakReference<BaseDeviceLocationProvider> weakReference = backgroundDeviceLocationProviders.get(Integer.valueOf(intExtra));
        if (weakReference == null) {
            ConcurrentHashMap<Integer, CircularArray<Intent>> concurrentHashMap = pendingIntents;
            Integer numValueOf = Integer.valueOf(intExtra);
            CircularArray<Intent> circularArray = concurrentHashMap.get(numValueOf);
            if (circularArray == null && (circularArrayPutIfAbsent = concurrentHashMap.putIfAbsent(numValueOf, (circularArray = new CircularArray<>(5)))) != null) {
                circularArray = circularArrayPutIfAbsent;
            }
            circularArray.add(intent);
            String str = "DeviceLocationProvider with id " + intExtra + " not found.";
            try {
                MapboxCommonLogger.INSTANCE.logE$common_release(TAG, str);
                return;
            } catch (Throwable unused2) {
                Log.e(TAG, str);
                return;
            }
        }
        BaseDeviceLocationProvider baseDeviceLocationProvider = weakReference.get();
        if (baseDeviceLocationProvider != null) {
            List<Location> listExtractResult = baseDeviceLocationProvider.extractResult(intent);
            if (listExtractResult.isEmpty()) {
                return;
            }
            baseDeviceLocationProvider.notifyLocationUpdate(listExtractResult);
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000bH\u0000¢\u0006\u0002\b\u0013J\u0015\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0000¢\u0006\u0002\b\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/mapbox/common/location/LocationUpdatesReceiver$Companion;", "", "()V", "ACTION_PROCESS_LOCATION_UPDATES", "", "LOCATION_PROVIDER_ID_KEY", "TAG", "backgroundDeviceLocationProviders", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Ljava/lang/ref/WeakReference;", "Lcom/mapbox/common/location/BaseDeviceLocationProvider;", "pendingIntents", "Lcom/mapbox/common/location/LocationUpdatesReceiver$CircularArray;", "Landroid/content/Intent;", "addDeviceLocationProvider", "", "persistentId", "locationProvider", "addDeviceLocationProvider$common_release", "removeDeviceLocationProvider", "removeDeviceLocationProvider$common_release", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void addDeviceLocationProvider$common_release(int persistentId, BaseDeviceLocationProvider locationProvider) {
            Intrinsics.checkNotNullParameter(locationProvider, "locationProvider");
            LocationUpdatesReceiver.backgroundDeviceLocationProviders.put(Integer.valueOf(persistentId), new WeakReference(locationProvider));
            CircularArray circularArray = (CircularArray) LocationUpdatesReceiver.pendingIntents.remove(Integer.valueOf(persistentId));
            if (circularArray != null) {
                Iterator it = circularArray.toList().iterator();
                while (it.hasNext()) {
                    List<Location> listExtractResult = locationProvider.extractResult((Intent) it.next());
                    if (!listExtractResult.isEmpty()) {
                        locationProvider.notifyLocationUpdate(listExtractResult);
                    }
                }
            }
        }

        public final void removeDeviceLocationProvider$common_release(int persistentId) {
            LocationUpdatesReceiver.backgroundDeviceLocationProviders.remove(Integer.valueOf(persistentId));
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010(\n\u0000\n\u0002\u0010 \n\u0000\b\u0001\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0005H\u0086\u0002¢\u0006\u0002\u0010\u0019J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u001bH\u0096\u0002J\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0082\u0004¢\u0006\n\n\u0002\u0010\u000b\u0012\u0004\b\t\u0010\nR\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/mapbox/common/location/LocationUpdatesReceiver$CircularArray;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "capacity", "", "(I)V", "arr", "", "getArr$annotations", "()V", "[Ljava/lang/Object;", "currentSize", "head", "getHead", "()I", "size", "getSize", "tail", "add", "", "item", "(Ljava/lang/Object;)V", "get", FirebaseAnalytics.Param.INDEX, "(I)Ljava/lang/Object;", "iterator", "", "toList", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class CircularArray<T> implements Iterable<T>, KMappedMarker {
        private final T[] arr;
        private int currentSize;
        private int tail = -1;

        private static void getArr$annotations() {
        }

        public CircularArray(int i) {
            this.arr = (T[]) new Object[i];
        }

        private final int getHead() {
            int i = this.currentSize;
            if (i == this.arr.length) {
                return (this.tail + 1) % i;
            }
            return 0;
        }

        public final int getCurrentSize() {
            return this.currentSize;
        }

        public final void add(T item) {
            Intrinsics.checkNotNullParameter(item, "item");
            int i = this.tail + 1;
            T[] tArr = this.arr;
            int length = i % tArr.length;
            this.tail = length;
            tArr[length] = item;
            int i2 = this.currentSize;
            if (i2 < tArr.length) {
                this.currentSize = i2 + 1;
            }
        }

        public final T get(int index) {
            int i = this.currentSize;
            if (i == 0 || index >= i || index < 0) {
                throw new IndexOutOfBoundsException(String.valueOf(index));
            }
            T[] tArr = this.arr;
            T t = i == tArr.length ? tArr[(getHead() + index) % this.arr.length] : tArr[index];
            Intrinsics.checkNotNull(t, "null cannot be cast to non-null type T of com.mapbox.common.location.LocationUpdatesReceiver.CircularArray");
            return t;
        }

        public final List<T> toList() {
            return SequencesKt.toList(SequencesKt.asSequence(iterator()));
        }

        @Override
        public Iterator<T> iterator() {
            return new LocationUpdatesReceiver$CircularArray$iterator$1(this);
        }
    }
}
