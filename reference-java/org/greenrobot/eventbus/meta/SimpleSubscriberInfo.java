package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.SubscriberMethod;

public class SimpleSubscriberInfo extends AbstractSubscriberInfo {
    private final SubscriberMethodInfo[] methodInfos;

    public SimpleSubscriberInfo(Class cls, boolean z, SubscriberMethodInfo[] subscriberMethodInfoArr) {
        super(cls, null, z);
        this.methodInfos = subscriberMethodInfoArr;
    }

    @Override
    public synchronized SubscriberMethod[] getSubscriberMethods() throws Throwable {
        try {
            int length = this.methodInfos.length;
            SubscriberMethod[] subscriberMethodArr = new SubscriberMethod[length];
            for (int i = 0; i < length; i++) {
                SubscriberMethodInfo subscriberMethodInfo = this.methodInfos[i];
                try {
                    subscriberMethodArr[i] = createSubscriberMethod(subscriberMethodInfo.methodName, subscriberMethodInfo.eventType, subscriberMethodInfo.threadMode, subscriberMethodInfo.priority, subscriberMethodInfo.sticky);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            }
            return subscriberMethodArr;
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
