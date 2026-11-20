package app.notifee.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import n.o.t.i.f.e.e.f;

public class RebootBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Log.i("RebootReceiver", "Received reboot event");
        if (f.a == null) {
            f.a(context.getApplicationContext());
        }
        new b().b();
    }
}
