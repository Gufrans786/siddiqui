package com.google.android.gms.auth.api.signin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.auth.api.signin.internal.zbt;

@Deprecated
public final class RevocationBoundService extends Service {
    @Override
    public IBinder onBind(Intent intent) {
        if (!"com.google.android.gms.auth.api.signin.RevocationBoundService.disconnect".equals(intent.getAction()) && !"com.google.android.gms.auth.api.signin.RevocationBoundService.clearClientState".equals(intent.getAction())) {
            String action = intent.getAction();
            String.valueOf(action);
            Log.w("RevocationService", "Unknown action sent to RevocationBoundService: ".concat(String.valueOf(action)));
            return null;
        }
        if (Log.isLoggable("RevocationService", 2)) {
            String action2 = intent.getAction();
            String.valueOf(action2);
            Log.v("RevocationService", "RevocationBoundService handling ".concat(String.valueOf(action2)));
        }
        return new zbt(this);
    }
}
