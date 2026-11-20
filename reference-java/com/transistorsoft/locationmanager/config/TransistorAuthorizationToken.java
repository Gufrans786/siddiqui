package com.transistorsoft.locationmanager.config;

import android.content.Context;
import android.content.SharedPreferences;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSCallback;
import com.transistorsoft.locationmanager.device.DeviceInfo;
import com.transistorsoft.locationmanager.http.HttpService;
import com.transistorsoft.locationmanager.logger.TSLog;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;

public class TransistorAuthorizationToken {
    public static final String ACTION_DESTROY = "destroyTransistorToken";
    public static final String ACTION_GET = "getTransistorToken";
    private static final String d = "TSLocationManager:AuthorizationToken";
    private static final String e = "/api/register";
    private final String a;
    private final String b;
    private long c;

    public interface Callback {
        void onFailure(String str);

        void onSuccess(TransistorAuthorizationToken transistorAuthorizationToken);
    }

    static class a implements Runnable {
        private final Context a;
        private final String b;
        private final String c;
        private final String d;
        private final Callback e;

        class C0076a implements okhttp3.Callback {
            C0076a() {
            }

            @Override
            public void onFailure(Call call, IOException iOException) {
                TSLog.logger.warn(TSLog.warn(iOException.getMessage()));
                a.this.a(iOException.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                ResponseBody responseBodyBody = response.body();
                if (responseBodyBody == null) {
                    a.this.a("UNKNOWN_ERROR");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(responseBodyBody.string());
                    if (!response.isSuccessful()) {
                        jSONObject.getString("error");
                        a.this.a(Integer.toString(response.code()));
                        return;
                    }
                    try {
                        URL url = new URL(a.this.d);
                        TransistorAuthorizationToken transistorAuthorizationToken = new TransistorAuthorizationToken(jSONObject.getString(TSAuthorization.FIELD_ACCESS_TOKEN), jSONObject.getString(TSAuthorization.FIELD_REFRESH_TOKEN), jSONObject.getLong(TSAuthorization.FIELD_EXPIRES));
                        TSLog.logger.debug("🔑 Received token from " + url.getHost());
                        SharedPreferences.Editor editorEdit = a.this.a.getSharedPreferences(TransistorAuthorizationToken.d, 0).edit();
                        editorEdit.putString(url.getHost(), transistorAuthorizationToken.toJson().toString());
                        editorEdit.apply();
                        a.this.a(transistorAuthorizationToken);
                    } catch (MalformedURLException e) {
                        TSLog.logger.error(TSLog.error("TransistorTokenRequest provided bad host: " + e.getMessage()), (Throwable) e);
                        a.this.a(e.getMessage());
                    }
                } catch (IOException e2) {
                    TSLog.logger.error(TSLog.error("Failed to get transistor token from host: " + e2.getMessage()), (Throwable) e2);
                    a.this.a(e2.getMessage());
                } catch (JSONException e3) {
                    TSLog.logger.error(TSLog.error("Failed to get transistor token from host: " + e3.getMessage()), (Throwable) e3);
                    a.this.a(e3.getMessage());
                }
            }
        }

        a(Context context, String str, String str2, String str3, Callback callback) {
            this.a = context;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = callback;
        }

        @Override
        public void run() {
            try {
                String host = new URL(this.d).getHost();
                SharedPreferences sharedPreferences = this.a.getSharedPreferences(TransistorAuthorizationToken.d, 0);
                if (sharedPreferences.contains(host)) {
                    try {
                        String string = sharedPreferences.getString(host, null);
                        if (string != null) {
                            TransistorAuthorizationToken transistorAuthorizationTokenFromJson = TransistorAuthorizationToken.fromJson(new JSONObject(string));
                            TSLog.logger.debug("🔑 Found cached token for " + host);
                            a(transistorAuthorizationTokenFromJson);
                            return;
                        }
                    } catch (JSONException unused) {
                        TSLog.logger.error(TSLog.error("Failed to load Transistor Authorization Token from preferences"));
                    }
                }
                OkHttpClient client = HttpService.getInstance(this.a).getClient();
                String str = this.d + TransistorAuthorizationToken.e;
                DeviceInfo deviceInfo = DeviceInfo.getInstance(this.a);
                JSONObject json = deviceInfo.toJson();
                try {
                    json.put("org", this.b);
                    json.put("uuid", deviceInfo.getModel() + "-" + this.c);
                } catch (JSONException e) {
                    a(e.getMessage());
                }
                client.newCall(new Request.Builder().url(str).post(RequestBody.create(HttpService.JSON, json.toString())).build()).enqueue(new C0076a());
            } catch (MalformedURLException e2) {
                TSLog.logger.error(TSLog.error("TransistorTokenRequest provided bad host: " + e2.getMessage()), (Throwable) e2);
                a(e2.getMessage());
            }
        }

        public void b(TransistorAuthorizationToken transistorAuthorizationToken) {
            this.e.onSuccess(transistorAuthorizationToken);
        }

        public void b(String str) {
            this.e.onFailure(str);
        }

        public void a(final TransistorAuthorizationToken transistorAuthorizationToken) {
            BackgroundGeolocation.getUiHandler().post(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.b(transistorAuthorizationToken);
                }
            });
        }

        public void a(final String str) {
            BackgroundGeolocation.getUiHandler().post(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.b(str);
                }
            });
        }
    }

    public TransistorAuthorizationToken(String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    public static void a(String str, Context context, final TSCallback tSCallback) {
        try {
            URL url = new URL(str);
            SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
            if (sharedPreferences.contains(url.getHost())) {
                TSLog.logger.debug("🔑 Destroyed cached token for " + url.getHost());
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove(url.getHost());
            editorEdit.apply();
            TSConfig.getInstance(context).updateWithBuilder().setAuthorization(new TSAuthorization()).commit();
            if (tSCallback != null) {
                BackgroundGeolocation.getUiHandler().post(new Runnable() {
                    @Override
                    public final void run() {
                        tSCallback.onSuccess();
                    }
                });
            }
        } catch (MalformedURLException e2) {
            TSLog.logger.error(TSLog.error("TransistorAuthorizationToken destroyTokenForHost provided bad host: " + e2.getMessage()), (Throwable) e2);
        }
    }

    public static void destroyTokenForUrl(final Context context, final String str, final TSCallback tSCallback) {
        BackgroundGeolocation.getThreadPool().execute(new Runnable() {
            @Override
            public final void run() {
                TransistorAuthorizationToken.a(str, context, tSCallback);
            }
        });
    }

    public static void findOrCreate(Context context, String str, String str2, String str3, Callback callback) {
        BackgroundGeolocation.getThreadPool().execute(new a(context, str, str2, str3, callback));
    }

    public static TransistorAuthorizationToken fromJson(JSONObject jSONObject) throws JSONException {
        return new TransistorAuthorizationToken(jSONObject.getString(TSAuthorization.FIELD_ACCESS_TOKEN), jSONObject.getString(TSAuthorization.FIELD_REFRESH_TOKEN), jSONObject.getLong(TSAuthorization.FIELD_EXPIRES));
    }

    public static boolean hasTokenForHost(Context context, String str) {
        return context.getSharedPreferences(d, 0).contains(str);
    }

    public String getAccessToken() {
        return this.a;
    }

    public long getExpires() {
        return this.c;
    }

    public String getRefreshToken() {
        return this.b;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TSAuthorization.FIELD_ACCESS_TOKEN, this.a);
            jSONObject.put(TSAuthorization.FIELD_REFRESH_TOKEN, this.b);
            jSONObject.put(TSAuthorization.FIELD_EXPIRES, this.c);
            return jSONObject;
        } catch (JSONException e2) {
            TSLog.logger.error(TSLog.error(e2.getMessage()), (Throwable) e2);
            return jSONObject;
        }
    }

    public Map<String, Object> toMap() {
        HashMap map = new HashMap();
        map.put(TSAuthorization.FIELD_ACCESS_TOKEN, this.a);
        map.put(TSAuthorization.FIELD_REFRESH_TOKEN, this.b);
        map.put(TSAuthorization.FIELD_EXPIRES, Long.valueOf(this.c));
        return map;
    }
}
