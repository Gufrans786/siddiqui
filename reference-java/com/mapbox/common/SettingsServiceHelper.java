package com.mapbox.common;

import android.content.SharedPreferences;
import ch.qos.logback.core.joran.action.Action;
import com.mapbox.bindgen.Expected;
import com.mapbox.bindgen.ExpectedFactory;
import com.mapbox.bindgen.None;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/mapbox/common/SettingsServiceHelper;", "", "()V", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SettingsServiceHelper {
    private static final String MAPBOX_PREFERENCES_NAME = "mapbox_settings";

    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<SharedPreferences> preferences$delegate = LazyKt.lazy(new Function0<SharedPreferences>() {
        @Override
        public final SharedPreferences invoke() {
            return MapboxSDKCommon.INSTANCE.getContext().getSharedPreferences("mapbox_settings", 0);
        }
    });

    @JvmStatic
    public static final Expected<String, None> erase(String str) {
        return INSTANCE.erase(str);
    }

    @JvmStatic
    public static final Expected<String, String> get(String str) {
        return INSTANCE.get(str);
    }

    @JvmStatic
    public static final boolean has(String str) {
        return INSTANCE.has(str);
    }

    @JvmStatic
    public static final Expected<String, List<String>> set(String str, String str2) {
        return INSTANCE.set(str, str2);
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u000eJ\u001c\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0004H\u0007J,\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00170\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R#\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/mapbox/common/SettingsServiceHelper$Companion;", "", "()V", "MAPBOX_PREFERENCES_NAME", "", "preferences", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "getPreferences", "()Landroid/content/SharedPreferences;", "preferences$delegate", "Lkotlin/Lazy;", "clear", "", "clear$common_release", "erase", "Lcom/mapbox/bindgen/Expected;", "Lcom/mapbox/bindgen/None;", Action.KEY_ATTRIBUTE, "get", "has", "", "set", "", "value", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final SharedPreferences getPreferences() {
            return (SharedPreferences) SettingsServiceHelper.preferences$delegate.getValue();
        }

        public final void clear$common_release() {
            SharedPreferences.Editor editorEdit = getPreferences().edit();
            editorEdit.clear();
            editorEdit.apply();
        }

        @JvmStatic
        public final Expected<String, List<String>> set(String key, String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Expected<String, String> expected = get(key);
            if (expected.isError() && !Intrinsics.areEqual(expected.getError(), "Key is not found")) {
                String error = expected.getError();
                Intrinsics.checkNotNull(error);
                Expected<String, List<String>> expectedCreateError = ExpectedFactory.createError(error);
                Intrinsics.checkNotNullExpressionValue(expectedCreateError, "createError(existingValue.error!!)");
                return expectedCreateError;
            }
            if (expected.isValue() && Intrinsics.areEqual(expected.getValue(), value)) {
                Expected<String, List<String>> expectedCreateValue = ExpectedFactory.createValue(CollectionsKt.listOf(value));
                Intrinsics.checkNotNullExpressionValue(expectedCreateValue, "createValue(listOf(value))");
                return expectedCreateValue;
            }
            String value2 = expected.isValue() ? expected.getValue() : null;
            try {
                SharedPreferences.Editor editorEdit = getPreferences().edit();
                editorEdit.putString(key, value);
                editorEdit.apply();
                Expected<String, List<String>> expectedCreateValue2 = ExpectedFactory.createValue(CollectionsKt.listOf(value2));
                Intrinsics.checkNotNullExpressionValue(expectedCreateValue2, "createValue(listOf(oldValue))");
                return expectedCreateValue2;
            } catch (Exception e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                Expected<String, List<String>> expectedCreateError2 = ExpectedFactory.createError(message);
                Intrinsics.checkNotNullExpressionValue(expectedCreateError2, "createError(exception.message ?: \"Unknown error\")");
                return expectedCreateError2;
            }
        }

        @JvmStatic
        public final Expected<String, String> get(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                String string = getPreferences().getString(key, null);
                Expected<String, String> expectedCreateValue = string != null ? ExpectedFactory.createValue(string) : null;
                if (expectedCreateValue != null) {
                    return expectedCreateValue;
                }
                Expected<String, String> expectedCreateError = ExpectedFactory.createError("Key is not found");
                Intrinsics.checkNotNullExpressionValue(expectedCreateError, "createError(\"Key is not found\")");
                return expectedCreateError;
            } catch (ClassCastException e) {
                String str = "Unable to get a value for " + key + ": " + e.getMessage();
                Log.error(str, "settings");
                Expected<String, String> expectedCreateError2 = ExpectedFactory.createError(str);
                Intrinsics.checkNotNullExpressionValue(expectedCreateError2, "createError(errorMessage)");
                return expectedCreateError2;
            } catch (Exception e2) {
                String message = e2.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                Expected<String, String> expectedCreateError3 = ExpectedFactory.createError(message);
                Intrinsics.checkNotNullExpressionValue(expectedCreateError3, "createError(exception.message ?: \"Unknown error\")");
                return expectedCreateError3;
            }
        }

        @JvmStatic
        public final Expected<String, None> erase(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                SharedPreferences.Editor editorEdit = getPreferences().edit();
                editorEdit.remove(key);
                editorEdit.apply();
                Expected<String, None> expectedCreateNone = ExpectedFactory.createNone();
                Intrinsics.checkNotNullExpressionValue(expectedCreateNone, "createNone()");
                return expectedCreateNone;
            } catch (Exception e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                Expected<String, None> expectedCreateError = ExpectedFactory.createError(message);
                Intrinsics.checkNotNullExpressionValue(expectedCreateError, "createError(exception.message ?: \"Unknown error\")");
                return expectedCreateError;
            }
        }

        @JvmStatic
        public final boolean has(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            try {
                return getPreferences().contains(key);
            } catch (Exception unused) {
                return false;
            }
        }
    }
}
