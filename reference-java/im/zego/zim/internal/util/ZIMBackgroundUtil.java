package im.zego.zim.internal.util;

import android.app.Application;
import android.content.Context;

public final class ZIMBackgroundUtil implements Background.Listener {
    public static final String TAG = "BackgroundMonitor";
    static Context mContext;
    private Background.Binding mListenerBinding;
    private long mThis;

    static native void onBackgroundStatusChanged(long pThis, boolean isBackground);

    public void setThis(long pThis) {
        this.mThis = pThis;
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    public int init() {
        Context context = mContext;
        if (context == null || !(context instanceof Application)) {
            return -1;
        }
        this.mListenerBinding = Background.get().init((Application) mContext).addListener(this);
        return 0;
    }

    public int uninit() {
        Background.Binding binding = this.mListenerBinding;
        if (binding == null) {
            return 0;
        }
        binding.unbind();
        Background.get().uninit();
        return 0;
    }

    public boolean isInited() {
        if (this.mListenerBinding == null) {
            return false;
        }
        return Background.get().isInited();
    }

    public boolean isBackground() {
        return Background.get().isBackground();
    }

    @Override
    public void onBecameForeground() {
        onBackgroundStatusChanged(this.mThis, false);
    }

    @Override
    public void onBecameBackground() {
        onBackgroundStatusChanged(this.mThis, true);
    }
}
