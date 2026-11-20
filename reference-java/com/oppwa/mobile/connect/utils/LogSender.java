package com.oppwa.mobile.connect.utils;

import android.content.Context;
import android.util.Log;
import com.oppwa.mobile.connect.provider.Connect;
import com.oppwa.mobile.connect.provider.HttpUtils;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LogSender {
    private CompleteListener a;

    @FunctionalInterface
    public interface CompleteListener {
        void onComplete();
    }

    LogSender() {
    }

    public void a(CompleteListener completeListener) {
        this.a = completeListener;
    }

    void a(final Context context, final List<b> list, final Connect.ProviderMode providerMode, final Connect.ProviderDomain providerDomain, final File file) {
        new Thread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(list, context, providerMode, providerDomain, file);
            }
        }).start();
    }

    public void a(List list, Context context, Connect.ProviderMode providerMode, Connect.ProviderDomain providerDomain, File file) {
        try {
            HttpUtils.makeRequest(context, providerMode, providerDomain, String.format("/v1/checkouts/%s/logs", ((b) list.get(0)).a()), a((List<b>) list), null);
            if (!file.delete()) {
                Log.e(Logger.a, "Cannot delete the log file: " + file);
            }
        } catch (Exception e) {
            if (e.getMessage() != null && !e.getMessage().contains("200.300.404")) {
                Log.e(Logger.a, "Error: ", e);
            }
        }
        CompleteListener completeListener = this.a;
        if (completeListener != null) {
            completeListener.onComplete();
        }
    }

    private Map<String, String> a(List<b> list) {
        HashMap map = new HashMap();
        int i = 0;
        for (b bVar : list) {
            map.put("messages[" + i + "].logger", "mSDK");
            map.put("messages[" + i + "].timestamp", bVar.d());
            map.put("messages[" + i + "].message", bVar.c());
            map.put("messages[" + i + "].level", bVar.b());
            i++;
        }
        return map;
    }
}
