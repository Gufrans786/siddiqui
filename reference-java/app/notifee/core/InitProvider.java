package app.notifee.core;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import n.o.t.i.f.e.e.f;

public class InitProvider extends ContentProvider {
    @Override
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (providerInfo != null && !providerInfo.authority.endsWith("notifee-init-provider")) {
            throw new IllegalStateException("Incorrect provider authority in manifest. This is most likely due to a missing applicationId variable in application's build.gradle.");
        }
        super.attachInfo(context, providerInfo);
    }

    @Override
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }

    @Override
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override
    public boolean onCreate() {
        if (f.a != null) {
            return false;
        }
        Context context = getContext();
        if (context != null && context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        f.a(context);
        return false;
    }

    @Override
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
