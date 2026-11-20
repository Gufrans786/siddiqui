package com.transistorsoft.locationmanager.event;

import android.content.Context;
import android.content.Intent;
import com.transistorsoft.locationmanager.adapter.BackgroundGeolocation;
import com.transistorsoft.locationmanager.adapter.TSConfig;
import com.transistorsoft.locationmanager.lifecycle.LifecycleManager;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import com.transistorsoft.locationmanager.logger.TSLog;
import com.transistorsoft.locationmanager.util.HeadlessEventBroadcaster;
import com.transistorsoft.locationmanager.util.LocationAuthorization;

public class TerminateEvent {
    public static final String ACTION = "TERMINATE_EVENT";

    class a implements LifecycleManager.OnHeadlessChangeCallback {
        final BackgroundGeolocation a;
        final Context b;

        a(BackgroundGeolocation backgroundGeolocation, Context context) {
            this.a = backgroundGeolocation;
            this.b = context;
        }

        @Override
        public void onChange(boolean z) {
            if (!z) {
                TSLog.logger.debug(TSLog.info("TERMINATE_EVENT ignored (MainActivity is still active)."));
                return;
            }
            this.a.setActivity(null);
            TSConfig tSConfig = TSConfig.getInstance(this.b.getApplicationContext());
            if (tSConfig.getStopOnTerminate().booleanValue()) {
                this.a.onActivityDestroy();
                return;
            }
            boolean zHasBackgroundPermission = LocationAuthorization.hasBackgroundPermission(this.b);
            boolean zBooleanValue = TSLocationManager.getInstance(this.b).isUpdatingLocation().booleanValue();
            boolean zBooleanValue2 = tSConfig.getUseSignificantChangesOnly().booleanValue();
            if (tSConfig.getEnabled().booleanValue() && !zHasBackgroundPermission && (!zBooleanValue || zBooleanValue2)) {
                TSLog.logger.warn(LocationAuthorization.logBackgroundWarning(this.b));
            }
            if (tSConfig.getEnableHeadless().booleanValue()) {
                HeadlessEventBroadcaster.post(new HeadlessEvent(this.b.getApplicationContext(), BackgroundGeolocation.EVENT_TERMINATE, tSConfig.toJson()));
            }
        }
    }

    public TerminateEvent(Context context) {
        LifecycleManager.getInstance().onHeadlessChange(new a(BackgroundGeolocation.getInstance(context.getApplicationContext(), new Intent()), context));
    }
}
