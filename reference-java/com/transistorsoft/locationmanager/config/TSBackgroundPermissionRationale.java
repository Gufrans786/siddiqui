package com.transistorsoft.locationmanager.config;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import com.transistorsoft.locationmanager.activity.TSLocationManagerActivity;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.tslocationmanager.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class TSBackgroundPermissionRationale extends com.transistorsoft.locationmanager.config.a implements IModule {
    public static final String NAME = "backgroundPermissionRationale";
    private static final String k = "applicationName";
    private static final String l = "backgroundPermissionOptionLabel";
    private static final List<String> m;

    private static final String f3736n = "Allow all the time";
    private static final String o = "Allow {applicationName} to access this device's location even when closed or not in use?";
    private static final String p = "[CHANGEME] This app collects location data for FEATURE X and FEATURE Y.";
    private static final String q = "Change to \"{backgroundPermissionOptionLabel}\"";
    private static final String r = "title";
    private static final String s = "message";
    private static final String t = "positiveAction";
    private static final String u = "negativeAction";
    private String c;
    private String d;
    private String e;
    private String f;
    private Dialog g;
    private CompletionHandler h;
    private TSLocationManagerActivity.CompletionHandler i;
    private final AtomicBoolean j;

    public static class Builder {
        private String a;
        private String b;
        private String c;
        private String d;

        public TSBackgroundPermissionRationale build() {
            TSBackgroundPermissionRationale tSBackgroundPermissionRationale = new TSBackgroundPermissionRationale();
            tSBackgroundPermissionRationale.c = this.a;
            tSBackgroundPermissionRationale.d = this.b;
            tSBackgroundPermissionRationale.e = this.c;
            tSBackgroundPermissionRationale.f = this.d;
            return tSBackgroundPermissionRationale;
        }

        public Builder setMessage(String str) {
            this.b = str;
            return this;
        }

        public Builder setNegativeAction(String str) {
            this.d = str;
            return this;
        }

        public Builder setPositiveAction(String str) {
            this.c = str;
            return this;
        }

        public Builder setTitle(String str) {
            this.a = str;
            return this;
        }
    }

    public interface CompletionHandler {
        void onClickCancel();

        void onClickOk();
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            TSBackgroundPermissionRationale.this.a(view);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        m = arrayList;
        arrayList.add(k);
        arrayList.add(l);
    }

    public TSBackgroundPermissionRationale() {
        super(NAME);
        this.j = new AtomicBoolean(false);
        applyDefaults();
    }

    public static void b() {
    }

    @Override
    public void applyDefaults() {
        if (this.c == null) {
            this.c = o;
        }
        if (this.d == null) {
            this.d = p;
        }
        if (this.e == null) {
            this.e = q;
        }
        if (this.f == null) {
            this.f = "";
        }
    }

    public boolean equals(TSBackgroundPermissionRationale tSBackgroundPermissionRationale) {
        String str;
        String str2;
        String str3;
        String str4 = this.c;
        return str4 != null && str4.equals(tSBackgroundPermissionRationale.getTitle()) && (str = this.d) != null && str.equals(tSBackgroundPermissionRationale.getMessage()) && (str2 = this.e) != null && str2.equals(tSBackgroundPermissionRationale.getPositiveAction()) && (str3 = this.f) != null && str3.equals(tSBackgroundPermissionRationale.getNegativeAction());
    }

    @Override
    public List getDirtyFields() {
        return super.getDirtyFields();
    }

    public String getMessage() {
        return this.d;
    }

    public String getNegativeAction() {
        return this.f;
    }

    public String getPositiveAction() {
        return this.e;
    }

    public String getTitle() {
        return this.c;
    }

    public void onStartActivity(Activity activity, TSLocationManagerActivity.CompletionHandler completionHandler) {
        if (!this.j.get()) {
            completionHandler.onComplete();
            return;
        }
        this.i = completionHandler;
        Dialog dialog = new Dialog(activity, R.style.PermissionRationaleDialog);
        this.g = dialog;
        dialog.setContentView(R.layout.tslocationmanager_permission_rationale_layout);
        this.g.setCancelable(false);
        ((TextView) this.g.findViewById(R.id.title)).setText(a(activity, this.c));
        ((TextView) this.g.findViewById(R.id.message)).setText(a(activity, this.d));
        Button button = (Button) this.g.findViewById(R.id.btn_positive_action);
        button.setText(a(activity, this.e));
        a aVar = new a();
        button.setOnClickListener(aVar);
        Button button2 = (Button) this.g.findViewById(R.id.btn_negative_action);
        if (!this.f.isEmpty()) {
            button2.setText(a(activity, this.f));
        }
        button2.setOnClickListener(aVar);
        this.g.show();
    }

    public void setMessage(String str) {
        this.d = str;
    }

    public void setNegativeAction(String str) {
        this.f = str;
    }

    public void setPositiveAction(String str) {
        this.e = str;
    }

    public void setTitle(String str) {
        this.c = str;
    }

    public boolean shouldShow(Activity activity) {
        if (activity == null || this.j.get()) {
            return false;
        }
        return ActivityCompat.shouldShowRequestPermissionRationale(activity, TSLocationManagerActivity.ACCESS_BACKGROUND_LOCATION);
    }

    public void show(Activity activity, CompletionHandler completionHandler) {
        if (activity == null || this.j.get()) {
            return;
        }
        this.j.set(true);
        this.h = completionHandler;
        onStartActivity(activity, new TSLocationManagerActivity.CompletionHandler() {
            @Override
            public final void onComplete() {
                TSBackgroundPermissionRationale.b();
            }
        });
    }

    public void stop() {
        Dialog dialog = this.g;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.j.set(false);
        this.g = null;
        this.h = null;
        this.i = null;
    }

    @Override
    public JSONObject toJson(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("title", this.c);
            jSONObject.put("message", this.d);
            jSONObject.put(t, this.e);
            jSONObject.put(u, this.f);
            return jSONObject;
        } catch (JSONException e) {
            TSLog.logger.error(TSLog.error(e.getMessage()), (Throwable) e);
            e.printStackTrace();
            return jSONObject;
        }
    }

    public Map<String, Object> toMap() {
        HashMap map = new HashMap();
        map.put("title", this.c);
        map.put("message", this.d);
        map.put(t, this.e);
        map.put(u, this.f);
        return map;
    }

    public boolean update(TSBackgroundPermissionRationale tSBackgroundPermissionRationale) {
        a();
        if (tSBackgroundPermissionRationale.getTitle() != null && !tSBackgroundPermissionRationale.getTitle().equals(this.c)) {
            this.c = tSBackgroundPermissionRationale.getTitle();
            a("title");
        }
        if (tSBackgroundPermissionRationale.getMessage() != null && !tSBackgroundPermissionRationale.getMessage().equals(this.d)) {
            this.d = tSBackgroundPermissionRationale.getMessage();
            a("message");
        }
        if (tSBackgroundPermissionRationale.getPositiveAction() != null && !tSBackgroundPermissionRationale.getPositiveAction().equals(this.e)) {
            this.e = tSBackgroundPermissionRationale.getPositiveAction();
            a(t);
        }
        if (tSBackgroundPermissionRationale.getNegativeAction() != null && !tSBackgroundPermissionRationale.getNegativeAction().equals(this.f)) {
            this.f = tSBackgroundPermissionRationale.getNegativeAction();
            a(u);
        }
        return !getDirtyFields().isEmpty();
    }

    private static String a(Context context, String str) {
        String string;
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        for (String str2 : m) {
            if (str2.equals(k)) {
                int i = applicationInfo.labelRes;
                string = i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
            } else if (!str2.equals(l)) {
                string = null;
            } else if (Build.VERSION.SDK_INT >= 30) {
                string = packageManager.getBackgroundPermissionOptionLabel().toString();
            } else {
                TSLog.logger.warn(TSLog.warn("backgroundPermissionRationale attempted to apply template tag backgroundPermissionOptionLabel but this is only available with compileSdkVersion >= 30"));
                string = f3736n;
            }
            if (string != null) {
                str = str.replaceAll("\\{" + str2 + "\\}", string);
            }
        }
        return str;
    }

    public TSBackgroundPermissionRationale(JSONObject jSONObject, boolean z) throws JSONException {
        super(NAME);
        this.j = new AtomicBoolean(false);
        if (jSONObject.has("title")) {
            this.c = jSONObject.getString("title");
        }
        if (jSONObject.has("message")) {
            this.d = jSONObject.getString("message");
        }
        if (jSONObject.has(t)) {
            this.e = jSONObject.getString(t);
        }
        if (jSONObject.has(u)) {
            this.f = jSONObject.getString(u);
        }
        if (z) {
            applyDefaults();
        }
    }

    public void a(View view) {
        this.j.set(false);
        Dialog dialog = this.g;
        if (dialog != null) {
            dialog.dismiss();
        }
        TSLocationManagerActivity.CompletionHandler completionHandler = this.i;
        if (completionHandler != null) {
            completionHandler.onComplete();
        }
        if (this.h != null) {
            if (view.getId() == R.id.btn_positive_action) {
                this.h.onClickOk();
            } else {
                this.h.onClickCancel();
            }
        }
        stop();
    }
}
