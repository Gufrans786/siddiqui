package com.oppwa.mobile.connect.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.oppwa.mobile.connect.utils.LogSender;
import com.oppwa.mobile.connect.utils.Logger;

public class OppwaInitProvider extends ContentProvider {
    private final Thread.UncaughtExceptionHandler a = Thread.getDefaultUncaughtExceptionHandler();

    public void a(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            System.exit(2);
        }
    }

    public void b(final Thread thread, final Throwable th) throws Throwable {
        Logger.error(th);
        Logger.sendLogs(new LogSender.CompleteListener() {
            @Override
            public final void onComplete() {
                this.f$0.a(thread, th);
            }
        });
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
        Logger.init(getContext());
        try {
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
                @Override
                public final void uncaughtException(Thread thread, Throwable th) throws Throwable {
                    this.f$0.b(thread, th);
                }
            });
            return false;
        } catch (SecurityException unused) {
            return false;
        }
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
