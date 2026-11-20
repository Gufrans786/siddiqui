package im.zego.zpns.internal.dispatcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import android.util.Log;
import im.zego.zpns.entity.ZPNsMessage;
import im.zego.zpns.entity.ZPNsRegisterMessage;
import im.zego.zpns.enums.ZPNsConstants;
import im.zego.zpns.enums.ZPNsErrorCode;
import im.zego.zpns.enums.ZPNsType;
import im.zego.zpns.internal.util.ExecutorProxy;
import im.zego.zpns.util.ZPNsUtils;
import java.lang.reflect.Method;
import java.util.List;

public class ZPNsBroadcastDispatcher {
    public static final String TAG = "ZPNsBroadcastDispatcher";
    private static ZPNsBroadcastDispatcher zegoPushCommandDispatcher;
    private Context mContext;

    public static ZPNsBroadcastDispatcher create(Context context) {
        synchronized (ZPNsBroadcastDispatcher.class) {
            if (zegoPushCommandDispatcher == null) {
                zegoPushCommandDispatcher = new ZPNsBroadcastDispatcher(context);
            }
        }
        return zegoPushCommandDispatcher;
    }

    public ZPNsBroadcastDispatcher(Context context) {
        this.mContext = context;
    }

    public void commandDispatch(final ZPNsRegisterMessage zPNsRegisterMessage) {
        if (ZPNsConstants.PushCmdType.REGISTER == zPNsRegisterMessage.getPushCmdType()) {
            zPNsRegisterMessage.getErrorCode();
            ZPNsErrorCode zPNsErrorCode = ZPNsErrorCode.SUCCESS;
        }
        ExecutorProxy.execute(new Runnable() {
            @Override
            public void run() {
                ZPNsBroadcastDispatcher.this.sendCommandToZIMReceiver(zPNsRegisterMessage);
            }
        });
    }

    public void sendCommandToZIMReceiver(ZPNsRegisterMessage zPNsRegisterMessage) {
        if (this.mContext != null) {
            Intent intent = new Intent(ZPNsConstants.PUSH_ON_MESSAGE_ACTION);
            intent.putExtra("method", ZPNsConstants.PUSH_METHOD_ON_COMMAND_RESULT);
            intent.putExtra(ZPNsConstants.PUSH_MESSAGE, zPNsRegisterMessage);
            sendBroadcast(intent, ZPNsConstants.PUSH_ON_MESSAGE_ACTION, this.mContext.getPackageName());
        }
    }

    private void sendBroadcast(Intent intent, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            intent.setAction(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.setPackage(str2);
        }
        String strFindReceiver = findReceiver(str, str2);
        if (!TextUtils.isEmpty(strFindReceiver)) {
            intent.setClassName(str2, strFindReceiver);
        }
        intent.setComponent(new ComponentName(str2, strFindReceiver));
        reflectReceiver(intent, this.mContext);
    }

    private String findReceiver(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Intent intent = new Intent(str);
            intent.setPackage(str2);
            List<ResolveInfo> listQueryBroadcastReceivers = this.mContext.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
                return listQueryBroadcastReceivers.get(0).activityInfo.name;
            }
        }
        return null;
    }

    public void sendMessageToZIMReceiver(ZPNsMessage zPNsMessage) {
        if (this.mContext != null) {
            Intent intent = new Intent(ZPNsConstants.PUSH_ON_MESSAGE_ACTION);
            int i = AnonymousClass3.$SwitchMap$im$zego$zpns$enums$ZPNsType[zPNsMessage.getPushType().ordinal()];
            if (i == 1) {
                intent.putExtra("method", ZPNsConstants.PUSH_METHOD_ON_THROUGH_MESSAGE);
            } else if (i == 2) {
                intent.putExtra("method", ZPNsConstants.PUSH_METHOD_ON_NOTIFICATION_CLICKED);
            } else if (i == 3) {
                intent.putExtra("method", ZPNsConstants.PUSH_METHOD_ON_NOTIFICATION_ARRIVED);
            }
            intent.putExtra(ZPNsConstants.PUSH_MESSAGE, zPNsMessage);
            sendBroadcast(intent, ZPNsConstants.PUSH_ON_MESSAGE_ACTION, this.mContext.getPackageName());
        }
    }

    static class AnonymousClass3 {
        static final int[] $SwitchMap$im$zego$zpns$enums$ZPNsType;

        static {
            int[] iArr = new int[ZPNsType.values().length];
            $SwitchMap$im$zego$zpns$enums$ZPNsType = iArr;
            try {
                iArr[ZPNsType.NOTIFICATION_THROUGH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsType[ZPNsType.NOTIFICATION_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$im$zego$zpns$enums$ZPNsType[ZPNsType.NOTIFICATION_ARRIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void messageDispatch(final ZPNsMessage zPNsMessage) {
        Log.e(TAG, "messageDispatch, mContext:" + this.mContext + "zpnsMessage:" + zPNsMessage);
        if (ZPNsUtils.isOnMainThread(this.mContext)) {
            ExecutorProxy.execute(new Runnable() {
                @Override
                public void run() {
                    ZPNsBroadcastDispatcher.this.sendMessageToZIMReceiver(zPNsMessage);
                }
            });
        } else {
            sendMessageToZIMReceiver(zPNsMessage);
        }
    }

    public String getReceiver(String str, String str2, Context context) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Intent intent = new Intent(str2);
            intent.setPackage(str);
            List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
                return listQueryBroadcastReceivers.get(0).activityInfo.name;
            }
        }
        return null;
    }

    public void reflectReceiver(Intent intent, Context context) {
        String receiver = getReceiver(context.getPackageName(), intent.getAction(), context);
        if (TextUtils.isEmpty(receiver)) {
            Log.i("NotificationService", " reflectReceiver error: receiver for: " + intent.getAction() + " not found, package: " + context.getPackageName());
            intent.setPackage(context.getPackageName());
            context.sendBroadcast(intent);
            return;
        }
        try {
            Class<?> cls = Class.forName(receiver);
            Object objNewInstance = cls.getConstructor(null).newInstance(null);
            Method method = cls.getMethod("onReceive", Context.class, Intent.class);
            intent.setClassName(context.getPackageName(), receiver);
            method.invoke(objNewInstance, context.getApplicationContext(), intent);
        } catch (Exception e) {
            Log.i("NotificationService", "reflect e: " + e);
        }
    }
}
