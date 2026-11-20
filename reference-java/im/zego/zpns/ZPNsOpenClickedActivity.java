package im.zego.zpns;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import im.zego.zpns.internal.ZPNsManagerInternal;
import im.zego.zpns.internal.dispatcher.ZPNsBroadcastDispatcher;

public class ZPNsOpenClickedActivity extends Activity {
    public static final String TAG = "ZPNsOpenClickedActivity";

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e(TAG, "onCreate" + getIntent());
        ((ZPNsManagerInternal) ZPNsManagerInternal.getInstance()).assignMyContext(getApplicationContext());
        ZPNsBroadcastDispatcher.create(getApplication()).messageDispatch(ZPNsManagerInternal.getInstance().getZPNsMessage(getApplication(), getIntent()));
        finish();
    }
}
