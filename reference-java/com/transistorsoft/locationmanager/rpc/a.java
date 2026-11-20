package com.transistorsoft.locationmanager.rpc;

import android.content.Context;
import android.media.ToneGenerator;
import android.util.Log;
import android.widget.Toast;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.adapter.callback.TSCallback;
import com.transistorsoft.locationmanager.adapter.callback.TSLocationCallback;
import com.transistorsoft.locationmanager.config.TransistorAuthorizationToken;
import com.transistorsoft.locationmanager.data.SQLQuery;
import com.transistorsoft.locationmanager.data.sqlite.SQLiteLocationDAO;
import com.transistorsoft.locationmanager.geofence.TSGeofence;
import com.transistorsoft.locationmanager.location.TSLocation;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.service.TrackingService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a implements Runnable {
    public static final String e = "background_geolocation";
    private static final String f = "uploadLog";
    private static final List<a> g = new ArrayList();
    private static final AtomicBoolean h = new AtomicBoolean(false);
    private WeakReference<Context> a;
    private final String b;
    private Object c;
    private l d;

    class C0081a implements TSCallback {
        C0081a() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.a(new m(str));
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class b implements TSCallback {
        b() {
        }

        @Override
        public void onFailure(String str) {
        }

        @Override
        public void onSuccess() {
        }
    }

    class c implements l {
        final Context a;

        c(Context context) {
            this.a = context;
        }

        @Override
        public void a(m mVar) {
            TSLog.logger.error(TSLog.error(mVar.toString() + "\n"), (Throwable) mVar);
            a.b(this.a);
        }

        @Override
        public void onSuccess() {
            a.b(this.a);
        }
    }

    class d implements TSCallback {
        d() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.a(new m(str));
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class e implements TSLocationCallback {
        e() {
        }

        @Override
        public void onError(Integer num) {
            a.this.d.a(new m(num.toString()));
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            a.this.d.onSuccess();
        }
    }

    class f implements TSCallback {
        f() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.onSuccess();
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class g implements TSLocationCallback {
        g() {
        }

        @Override
        public void onError(Integer num) {
            TSLog.logger.warn(TSLog.warn("[RPC] setOdometer ERROR: " + num));
        }

        @Override
        public void onLocation(TSLocation tSLocation) {
            TSLog.logger.debug("[RPC] setOdometer success");
        }
    }

    class h implements TSCallback {
        h() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.a(new m(str));
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class i implements TSCallback {
        i() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.onSuccess();
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class j implements TSCallback {
        j() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.onSuccess();
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    class k implements TSCallback {
        k() {
        }

        @Override
        public void onFailure(String str) {
            a.this.d.a(new m(str));
        }

        @Override
        public void onSuccess() {
            a.this.d.onSuccess();
        }
    }

    interface l {
        void a(m mVar);

        void onSuccess();
    }

    static class m extends Exception {
        private final String a;

        m(String str) {
            this.a = str;
        }

        @Override
        public String toString() {
            return "️[RPCException] " + this.a;
        }
    }

    private a(JSONArray jSONArray) throws m {
        this.c = null;
        try {
            this.b = jSONArray.getString(0);
            if (jSONArray.length() > 1) {
                this.c = jSONArray.get(1);
            }
        } catch (JSONException unused) {
            throw new m("Failed to parse RPC arguments from JSON");
        }
    }

    public static void b(Context context) {
        List<a> list = g;
        synchronized (list) {
            if (list.isEmpty()) {
                h.set(false);
            } else {
                list.remove(0).a(context, new c(context));
            }
        }
    }

    private void c() throws m {
        a(String.class);
        Context context = this.a.get();
        BackgroundGeolocation.getInstance(context).stop();
        TSConfig tSConfig = TSConfig.getInstance(context);
        String url = tSConfig.getUrl();
        tSConfig.updateWithBuilder().setMaxRecordsToPersist(0).setUrl("").setDebug(Boolean.TRUE).commit();
        String strValueOf = String.valueOf(this.c);
        TransistorAuthorizationToken.destroyTokenForUrl(context, url, new b());
        Log.e("TSLocationManager", "************************************************************************");
        Log.e("TSLocationManager", strValueOf);
        Log.e("TSLocationManager", "Your devices are banned from posting to " + url);
        Log.e("TSLocationManager", "************************************************************************");
        BackgroundGeolocation.getUiHandler().post(new Runnable() {
            @Override
            public final void run() {
                this.f$0.g();
            }
        });
        SQLiteLocationDAO.getInstance(this.a.get()).clear();
    }

    private void d() throws m {
        a(Boolean.class);
        Context contextF = f();
        BackgroundGeolocation backgroundGeolocation = BackgroundGeolocation.getInstance(contextF);
        TSConfig tSConfig = TSConfig.getInstance(contextF);
        boolean zBooleanValue = ((Boolean) this.c).booleanValue();
        if (tSConfig.getIsMoving().booleanValue() != zBooleanValue) {
            backgroundGeolocation.changePace(zBooleanValue, new f());
        } else {
            this.d.onSuccess();
        }
    }

    private void e() throws m {
        BackgroundGeolocation.getInstance(f()).destroyLog(new k());
    }

    private Context f() throws m {
        Context context = this.a.get();
        if (context != null) {
            return context;
        }
        throw new m("Null Context");
    }

    public void g() {
        Toast.makeText(this.a.get(), "tracker.transistorsoft.com:  BANNED", 1).show();
        try {
            new ToneGenerator(5, 100).startTone(68, 2000);
        } catch (RuntimeException e2) {
            TSLog.logger.error(TSLog.error(e2.getMessage()));
        }
    }

    private void h() throws m {
        a(String.class);
        Context contextF = f();
        BackgroundGeolocation.getInstance(contextF).removeGeofence(String.valueOf(this.c), new i());
    }

    private void i() throws m {
        if (this.c == null) {
            this.c = new JSONArray();
        }
        a(JSONArray.class);
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = (JSONArray) this.c;
            int length = jSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(jSONArray.get(i2).toString());
            }
            BackgroundGeolocation.getInstance(f()).removeGeofences(arrayList, new j());
        } catch (JSONException e2) {
            throw new m(e2.getMessage());
        }
    }

    private void j() throws m {
        a(JSONObject.class);
        TSConfig.getInstance(f()).updateWithJSONObject((JSONObject) this.c);
        this.d.onSuccess();
    }

    private void k() throws m {
        Object obj = this.c;
        BackgroundGeolocation.getInstance(f()).setOdometer(Float.valueOf(obj != null ? ((Double) obj).floatValue() : 0.0f), new g());
    }

    private void l() throws m {
        BackgroundGeolocation.getInstance(f()).startSchedule();
    }

    private void m() throws m {
        BackgroundGeolocation.getInstance(f()).stop(new d());
    }

    private void n() throws m {
        BackgroundGeolocation.getInstance(f()).stopSchedule();
    }

    private void o() throws m {
        a(String.class);
        TSLog.uploadLog(f(), String.valueOf(this.c), SQLQuery.create(), new C0081a());
    }

    @Override
    public void run() {
        TSLog.logger.info("⚡️[RPC: " + this.b + ": " + this.c + "]");
        try {
            if (this.b.equalsIgnoreCase("stop")) {
                m();
                return;
            }
            if (this.b.equalsIgnoreCase("start")) {
                a(1);
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_START_GEOFENCES)) {
                a(0);
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_START_SCHEDULE)) {
                l();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_STOP_SCHEDULE)) {
                n();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_CHANGE_PACE)) {
                d();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_SET_CONFIG)) {
                j();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_ADD_GEOFENCE)) {
                a();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_ADD_GEOFENCES)) {
                b();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_REMOVE_GEOFENCE)) {
                h();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_REMOVE_GEOFENCES)) {
                i();
                return;
            }
            if (this.b.equalsIgnoreCase("uploadLog")) {
                o();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_DESTROY_LOG)) {
                e();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_SET_ODOMETER)) {
                k();
                return;
            }
            if (this.b.equalsIgnoreCase(BackgroundGeolocation.ACTION_RESET_ODOMETER)) {
                k();
            } else if (this.b.equalsIgnoreCase("ban")) {
                c();
            } else {
                this.d.a(new m("Unknown command: " + this.b));
            }
        } catch (m e2) {
            this.d.a(e2);
        }
    }

    public static void a(Context context, JSONArray jSONArray) {
        synchronized (g) {
            try {
                if (jSONArray.get(0).getClass() == JSONArray.class) {
                    int length = jSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        a(jSONArray.getJSONArray(i2));
                    }
                } else {
                    a(jSONArray);
                }
            } catch (JSONException e2) {
                TSLog.logger.error(TSLog.error("Error parsing RPC actions: " + e2.getMessage()));
            }
        }
        if (h.compareAndSet(false, true)) {
            b(context);
        }
    }

    private void b() throws m {
        a(JSONArray.class);
        JSONArray jSONArray = (JSONArray) this.c;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(a(jSONArray.getJSONObject(i2)));
            } catch (TSGeofence.Exception | JSONException e2) {
                this.d.a(new m(e2.getMessage()));
                return;
            }
        }
        BackgroundGeolocation.getInstance(f()).addGeofences(arrayList, new h());
    }

    private static void a(JSONArray jSONArray) {
        try {
            g.add(new a(jSONArray));
        } catch (m e2) {
            TSLog.logger.error(TSLog.error(e2.toString()), (Throwable) e2);
        }
    }

    private void a(Context context, l lVar) {
        this.a = new WeakReference<>(context);
        this.d = lVar;
        BackgroundGeolocation.getThreadPool().execute(this);
    }

    private void a(int i2) throws m {
        Context contextF = f();
        TSConfig tSConfig = TSConfig.getInstance(contextF);
        boolean zBooleanValue = tSConfig.getEnabled().booleanValue();
        boolean z = tSConfig.getTrackingMode().intValue() != i2;
        tSConfig.setTrackingMode(Integer.valueOf(i2));
        e eVar = new e();
        if (z && zBooleanValue) {
            TrackingService.changeTrackingMode(contextF, i2, eVar);
        } else {
            TrackingService.start(contextF, eVar);
        }
    }

    private void a() throws m {
        a(JSONObject.class);
        try {
            BackgroundGeolocation.getInstance(f()).addGeofence(a((JSONObject) this.c));
            this.d.onSuccess();
        } catch (TSGeofence.Exception | JSONException e2) {
            this.d.a(new m(e2.getMessage()));
        }
    }

    private void a(Class<?> cls) throws m {
        Object obj = this.c;
        if (obj != null) {
            if (obj.getClass() != cls) {
                throw new m(this.b + " expected an argument of type " + cls + " but received " + this.c.getClass().toString());
            }
            return;
        }
        throw new m(this.b + " expected an argument of type " + cls + " but received null");
    }

    private static TSGeofence a(JSONObject jSONObject) throws TSGeofence.Exception, JSONException {
        TSGeofence.Builder builder = new TSGeofence.Builder();
        if (jSONObject.has(TSGeofence.FIELD_IDENTIFIER)) {
            builder.setIdentifier(jSONObject.getString(TSGeofence.FIELD_IDENTIFIER));
        }
        if (jSONObject.has(TSGeofence.FIELD_LATITUDE)) {
            builder.setLatitude(jSONObject.getDouble(TSGeofence.FIELD_LATITUDE));
        }
        if (jSONObject.has(TSGeofence.FIELD_LONGITUDE)) {
            builder.setLongitude(((Double) jSONObject.get(TSGeofence.FIELD_LONGITUDE)).doubleValue());
        }
        if (jSONObject.has(TSGeofence.FIELD_RADIUS)) {
            builder.setRadius((float) jSONObject.getDouble(TSGeofence.FIELD_RADIUS));
        }
        if (jSONObject.has(TSGeofence.FIELD_VERTICES)) {
            JSONArray jSONArray = jSONObject.getJSONArray(TSGeofence.FIELD_VERTICES);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                arrayList.add(Arrays.asList(Double.valueOf(jSONArray2.getDouble(0)), Double.valueOf(jSONArray2.getDouble(1))));
            }
            builder.setVertices(arrayList);
        }
        if (jSONObject.has(TSGeofence.FIELD_NOTIFY_ON_ENTRY)) {
            builder.setNotifyOnEntry(((Boolean) jSONObject.get(TSGeofence.FIELD_NOTIFY_ON_ENTRY)).booleanValue());
        }
        if (jSONObject.has(TSGeofence.FIELD_NOTIFY_ON_EXIT)) {
            builder.setNotifyOnExit(((Boolean) jSONObject.get(TSGeofence.FIELD_NOTIFY_ON_EXIT)).booleanValue());
        }
        if (jSONObject.has(TSGeofence.FIELD_NOTIFY_ON_DWELL)) {
            builder.setNotifyOnDwell(((Boolean) jSONObject.get(TSGeofence.FIELD_NOTIFY_ON_DWELL)).booleanValue());
        }
        if (jSONObject.has(TSGeofence.FIELD_LOITERING_DELAY)) {
            builder.setLoiteringDelay(((Integer) jSONObject.get(TSGeofence.FIELD_LOITERING_DELAY)).intValue());
        }
        if (jSONObject.has(TSGeofence.FIELD_EXTRAS)) {
            builder.setExtras(jSONObject.getJSONObject(TSGeofence.FIELD_EXTRAS));
        }
        return builder.build();
    }
}
