package im.zego.zpns.internal.basic;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import im.zego.zpns.util.ZPNsConfig;

public abstract class PushClient {
    public ZPNsConfig config;

    public abstract ZPNsConstants.PushSource getType();

    public abstract ZPNsMessage getZPNsMessage(Intent intent);

    public abstract ZPNsErrorCode register(Context context);

    public abstract void setApplicationIconBadgeNumber(Context context, int i);

    public abstract ZPNsErrorCode unRegister(Context context);

    public PushClient(ZPNsConfig zPNsConfig) {
        this.config = zPNsConfig;
    }

    public String getMainActivityClass(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setPackage(context.getPackageName());
            intent.addCategory("android.intent.category.LAUNCHER");
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                if (resolveInfo.activityInfo.applicationInfo.packageName.equalsIgnoreCase(context.getPackageName())) {
                    return resolveInfo.activityInfo.name;
                }
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }
}
