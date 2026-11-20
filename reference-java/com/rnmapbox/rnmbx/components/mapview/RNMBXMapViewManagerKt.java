package com.rnmapbox.rnmbx.components.mapview;

import com.facebook.react.bridge.ReadableArray;
import com.rnmapbox.rnmbx.utils.Logger;
import com.transistorsoft.locationmanager.scheduler.TSScheduleManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004\u001a\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007*\u00020\u0002¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"forEachString", "", "Lcom/facebook/react/bridge/ReadableArray;", TSScheduleManager.ACTION_NAME, "Lkotlin/Function1;", "", "asArrayString", "", "(Lcom/facebook/react/bridge/ReadableArray;)[Ljava/lang/String;", "rnmapbox_maps_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RNMBXMapViewManagerKt {
    public static final void forEachString(ReadableArray readableArray, Function1<? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int size = readableArray.size();
        for (int i = 0; i < size; i++) {
            String string = readableArray.getString(i);
            if (string != null) {
                action.invoke(string);
            } else {
                Logger.INSTANCE.d(RNMBXMapViewManager.LOG_TAG, "Skipping null string at index " + i);
            }
        }
    }

    public static final String[] asArrayString(ReadableArray readableArray) {
        Intrinsics.checkNotNullParameter(readableArray, "<this>");
        int size = readableArray.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = String.valueOf(readableArray.getString(i));
        }
        return strArr;
    }
}
