package com.transistorsoft.locationmanager.event;

import android.content.Context;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.http.HttpService;

public class HttpFlushEvent {
    public static final String ACTION = "http_flush";

    public static void a(Context context) {
        HttpService.getInstance(context).flush(true);
    }

    public static void run(final Context context) {
        TSConfig tSConfig = TSConfig.getInstance(context);
        if (tSConfig.getEnabled().booleanValue() && tSConfig.getAutoSync().booleanValue() && tSConfig.hasUrl() && !tSConfig.getIsMoving().booleanValue()) {
            BackgroundGeolocation.getThreadPool().execute(new Runnable() {
                @Override
                public final void run() {
                    HttpFlushEvent.a(context);
                }
            });
        }
    }
}
