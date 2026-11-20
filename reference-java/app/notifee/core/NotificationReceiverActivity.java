package app.notifee.core;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import n.o.t.i.f.e.e.o;

public class NotificationReceiverActivity extends Activity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o.a(this, getIntent());
        finish();
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        o.a(this, intent);
        finish();
    }
}
