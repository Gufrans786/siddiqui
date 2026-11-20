package com.payfort.fortpaymentsdk.utils;

import android.content.Context;
import android.content.res.Configuration;
import android.os.LocaleList;
import com.payfort.fortpaymentsdk.domain.model.FortSdkCache;
import java.util.Locale;

public class LocalizationService {
    public static String getDefaultLocale(Context context) {
        return getSystemLocal(context.getResources().getConfiguration()).getLanguage();
    }

    public Context updateByLanguage(Context context, String str, String str2) {
        Configuration configuration = context.getResources().getConfiguration();
        if (str == null || str.equals("") || str.equals(str2)) {
            return context;
        }
        Locale locale = new Locale(str);
        Locale.setDefault(locale);
        configuration.setLocale(locale);
        context.getResources().getConfiguration().setLocale(locale);
        return context.createConfigurationContext(configuration);
    }

    private static Locale getSystemLocal(Configuration configuration) {
        return getSystemLocale(configuration);
    }

    public void restoreLocale(Context context, String str) {
        if (str != null) {
            updateByLanguage(context, str, FortSdkCache.getREQUEST_LANGUAGE());
        }
    }

    private static Locale getSystemLocaleLegacy(Configuration configuration) {
        return configuration.locale;
    }

    private static Locale getSystemLocale(Configuration configuration) {
        return LocaleList.getDefault().get(0);
    }

    protected void setSystemLocaleLegacy(Configuration configuration, Locale locale) {
        configuration.locale = locale;
    }

    protected void setSystemLocale(Configuration configuration, Locale locale) {
        configuration.setLayoutDirection(locale);
        configuration.setLocale(locale);
    }
}
