package com.transistorsoft.locationmanager.logger;

import android.content.Context;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mapbox.common.HttpHeaders;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSBackgroundTaskCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSCallback;
import com.transistorsoft.locationmanager.data.SQLQuery;
import com.transistorsoft.locationmanager.device.DeviceInfo;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.util.BackgroundTaskManager;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

class a implements Runnable {
    private final WeakReference<Context> a;
    private final TSCallback b;
    private int c;
    private final String d;
    private final SQLQuery e;

    class C0080a implements TSBackgroundTaskCallback {
        C0080a() {
        }

        @Override
        public void onCancel(int i) {
        }

        @Override
        public void onStart(int i) {
            a.this.c = i;
            BackgroundGeolocation.getThreadPool().execute(a.this);
        }
    }

    class b implements Callback {
        final Context a;

        b(Context context) {
            this.a = context;
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            a.this.a(iOException.getMessage());
            BackgroundTaskManager.getInstance().stopBackgroundTask(this.a, a.this.c);
        }

        @Override
        public void onResponse(Call call, Response response) {
            if (response.isSuccessful()) {
                a.this.a();
            } else {
                a.this.a(response.message());
            }
            BackgroundTaskManager.getInstance().stopBackgroundTask(this.a, a.this.c);
        }
    }

    class c implements Runnable {
        final String a;

        c(String str) {
            this.a = str;
        }

        @Override
        public void run() {
            a.this.b.onFailure(this.a);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            a.this.b.onSuccess();
        }
    }

    a(Context context, String str, SQLQuery sQLQuery, TSCallback tSCallback) {
        this.a = new WeakReference<>(context);
        this.d = str;
        this.b = tSCallback;
        this.e = sQLQuery;
        BackgroundTaskManager.getInstance().startBackgroundTask(context, new C0080a());
    }

    @Override
    public void run() {
        Context context = this.a.get();
        if (context == null) {
            this.b.onFailure("Null Context");
            return;
        }
        TSConfig tSConfig = TSConfig.getInstance(context);
        BackgroundTaskManager backgroundTaskManager = BackgroundTaskManager.getInstance();
        String log = TSLogReader.getLog(this.e);
        if (log == null) {
            this.b.onFailure("Failed to get log");
            backgroundTaskManager.stopBackgroundTask(context, this.c);
            return;
        }
        File fileWriteLogFile = TSLog.writeLogFile(context, log);
        if (fileWriteLogFile == null) {
            this.b.onFailure("Failed to create temp file for upload");
            backgroundTaskManager.stopBackgroundTask(context, this.c);
            return;
        }
        DeviceInfo deviceInfo = DeviceInfo.getInstance(context);
        Request.Builder builderPost = new Request.Builder().url(this.d).post(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("files", fileWriteLogFile.getName(), RequestBody.create(MediaType.parse("application/gzip"), fileWriteLogFile)).addFormDataPart(RemoteConfigConstants.ResponseFieldKey.STATE, tSConfig.toJson().toString()).addFormDataPart("version", deviceInfo.getVersion()).addFormDataPart("manufacturer", deviceInfo.getManufacturer()).addFormDataPart(ModelSourceWrapper.TYPE, deviceInfo.getModel()).addFormDataPart("platform", deviceInfo.getPlatform()).build());
        JSONObject headers = tSConfig.getHeaders();
        if (headers != null) {
            Iterator<String> itKeys = headers.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    if (!next.equalsIgnoreCase(HttpHeaders.CONTENT_TYPE)) {
                        builderPost.header(next, headers.getString(next));
                    }
                } catch (JSONException e) {
                    this.b.onFailure(e.getMessage());
                    return;
                }
            }
        }
        HttpService.getInstance(context).getClient().newCall(builderPost.build()).enqueue(new b(context));
    }

    public void a(String str) {
        BackgroundGeolocation.getUiHandler().post(new c(str));
    }

    public void a() {
        BackgroundGeolocation.getUiHandler().post(new d());
    }
}
