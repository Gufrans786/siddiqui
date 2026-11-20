package im.zego.zpns.internal.basic;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class IntentReceiver extends BroadcastReceiver {
    private static AtomicInteger sAtomicInteger = new AtomicInteger(0);
    private static Handler sHandler;
    private static HandlerThread sHandlerThread;

    protected abstract void onHandleIntent(Context context, Intent intent);

    @Override
    public void onReceive(final Context context, final Intent intent) {
        if (sAtomicInteger.getAndIncrement() == 0) {
            HandlerThread handlerThread = new HandlerThread("IntentReceiver", 10);
            sHandlerThread = handlerThread;
            handlerThread.start();
            sHandler = new Handler(sHandlerThread.getLooper());
        }
        sHandler.post(new Runnable() {
            @Override
            public void run() {
                IntentReceiver.this.onHandleIntent(context, intent);
                if (IntentReceiver.sAtomicInteger.decrementAndGet() == 0) {
                    IntentReceiver.sHandlerThread.quit();
                }
            }
        });
    }
}
