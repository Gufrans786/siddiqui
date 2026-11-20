package com.mapbox.common;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

class ConnectionChangeCallback extends ConnectivityManager.NetworkCallback {
    private final WeakReference<Reachability> reachability;

    public ConnectionChangeCallback(Reachability reachability) {
        this.reachability = new WeakReference<>(reachability);
    }

    @Override
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        notifyReachability();
    }

    @Override
    public void onAvailable(Network network) {
        notifyReachability();
    }

    @Override
    public void onLost(Network network) {
        notifyReachability();
    }

    @Override
    public void onUnavailable() {
        notifyReachability();
    }

    private void notifyReachability() {
        boolean z = Looper.myLooper() == Looper.getMainLooper();
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                this.f$0.m975xa4009b3e();
            }
        };
        if (z) {
            runnable.run();
        } else {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    void m975xa4009b3e() {
        Reachability reachability = this.reachability.get();
        if (reachability != null) {
            reachability.onNetworkChanged();
        }
    }
}
