package im.zego.zpns;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import im.zego.zpns.callback.ZPNsPushEventHandler;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.internal.ZPNsManagerInternal;
import im.zego.zpns.util.ZPNsConfig;

public abstract class ZPNsManager {
    private static ZPNsManagerInternal zegoPush;

    public abstract ZPNsConfig getPushConfig();

    public abstract String getVersion();

    public abstract ZPNsMessage getZPNsMessage(Application application, Intent intent);

    public abstract void registerPush(Application application);

    public abstract void setApplicationIconBadgeNumber(Context context, int i);

    public abstract void setDeviceToken(String str);

    public abstract void setEventHandler(ZPNsPushEventHandler zPNsPushEventHandler);

    public abstract void unregisterPush();

    public static ZPNsManager getInstance() {
        synchronized (ZPNsManager.class) {
            if (zegoPush == null) {
                zegoPush = new ZPNsManagerInternal();
            }
        }
        return zegoPush;
    }

    public static void setPushConfig(ZPNsConfig zPNsConfig) {
        ZPNsManagerInternal.setPushConfig(zPNsConfig);
    }

    public static void enableDebug(boolean z) {
        ZPNsManagerInternal.mDebugMode = z;
    }
}
