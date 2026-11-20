package com.transistorsoft.locationmanager.util;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

public class BuildConfigUtils {
    private static Class<?> a = null;
    private static final AtomicBoolean b = new AtomicBoolean(false);
    private static final String c = "BuildConfig";

    static Class<?> a(Context context) {
        AtomicBoolean atomicBoolean = b;
        if (!atomicBoolean.get()) {
            synchronized (atomicBoolean) {
                Class<?> clsC = c(context);
                a = clsC;
                if (clsC != null) {
                    atomicBoolean.set(true);
                }
            }
        }
        return a;
    }

    private static String b(Context context) {
        int identifier = context.getResources().getIdentifier("build_config_package", TypedValues.Custom.S_STRING, context.getPackageName());
        return identifier != 0 ? context.getString(identifier) : context.getPackageName();
    }

    private static synchronized Class<?> c(Context context) {
        String strB;
        strB = b(context);
        try {
        } catch (ClassNotFoundException e) {
            String[] strArrSplit = strB.split("\\.");
            String strJoinString = Util.joinString(Arrays.asList((String[]) Arrays.copyOf(strArrSplit, strArrSplit.length - 1)), ".");
            try {
                return Class.forName(strJoinString + ".BuildConfig");
            } catch (ClassNotFoundException unused) {
                TSLog.logger.error(TSLog.error("Failed to deduce Application's BuildConfig class for package name:" + b(context) + " or " + strJoinString));
                e.printStackTrace();
                return null;
            }
        }
        return Class.forName(strB + ".BuildConfig");
    }

    public static String getBuildConfigPackageName(Context context) {
        Class<?> clsA = a(context);
        return (clsA == null || clsA.getPackage() == null) ? context.getPackageName() : clsA.getPackage().getName();
    }

    public static Object getBuildConfigValue(Context context, String str) {
        return a(context, str);
    }

    private static Object a(Context context, String str) {
        try {
            return a(context).getField(str).get(null);
        } catch (IllegalAccessException e) {
            TSLog.logger.error(TSLog.error(e.getMessage()), (Throwable) e);
            return null;
        } catch (NoSuchFieldException e2) {
            TSLog.logger.error(TSLog.error(e2.getMessage()), (Throwable) e2);
            return null;
        }
    }
}
