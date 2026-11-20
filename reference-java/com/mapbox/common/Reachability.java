package com.mapbox.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import java.io.IOException;
import java.net.InetAddress;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Reachability implements ReachabilityInterface {
    private ConnectionChangeCallback callback;
    private final ConnectivityManager connectivityManager;
    private final Context context;
    private final String hostname;
    private final ReachabilityOfflineSwitchObserver offlineObserver;
    public int peer;
    public final String TAG = "MapboxReachability";
    public int timeoutInMs = 200;
    private final Map<Long, ReachabilityChanged> listeners = new ConcurrentHashMap();
    private NetworkStatus currentStatus = NetworkStatus.NOT_REACHABLE;
    private boolean networkConnected = true;
    private boolean publish = false;

    public Reachability(String str) {
        Context context = MapboxSDKCommon.INSTANCE.getContext();
        this.context = context;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.connectivityManager = connectivityManager;
        this.callback = null;
        if (connectivityManager == null) {
            throw new AssertionError("This Android platform doesn't have Connectivity Service");
        }
        this.hostname = str;
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            Log.warning("Couldn't get application permission for ACCESS_NETWORK_STATE", "MapboxReachability");
        } else {
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addCapability(16).build();
            Log.info("Application permission for ACCESS_NETWORK_STATE granted", "MapboxReachability");
            ConnectionChangeCallback connectionChangeCallback = new ConnectionChangeCallback(this);
            try {
                connectivityManager.registerNetworkCallback(networkRequestBuild, connectionChangeCallback);
                this.callback = connectionChangeCallback;
            } catch (RuntimeException e) {
                Log.error("Failed to subscribe to network connectivity changes: " + e.getMessage(), "MapboxReachability");
            }
        }
        ReachabilityOfflineSwitchObserver reachabilityOfflineSwitchObserver = new ReachabilityOfflineSwitchObserver();
        this.offlineObserver = reachabilityOfflineSwitchObserver;
        OfflineSwitch.getInstance().registerObserver(reachabilityOfflineSwitchObserver);
        onNetworkChanged();
    }

    protected void finalize() {
        OfflineSwitch.getInstance().unregisterObserver(this.offlineObserver);
        try {
            ConnectionChangeCallback connectionChangeCallback = this.callback;
            if (connectionChangeCallback != null) {
                this.connectivityManager.unregisterNetworkCallback(connectionChangeCallback);
            }
            super.finalize();
        } catch (Throwable th) {
            Log.error(th.toString(), "MapboxReachability");
        }
    }

    public synchronized void setNetworkConnected(boolean z) {
        this.networkConnected = z;
    }

    class ReachabilityOfflineSwitchObserver implements OfflineSwitchObserver {
        private ReachabilityOfflineSwitchObserver() {
        }

        @Override
        public void statusChanged(final boolean z) {
            boolean z2 = Looper.myLooper() == Looper.getMainLooper();
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    this.f$0.m983xa52290c(z);
                }
            };
            if (z2) {
                runnable.run();
            } else {
                new Handler(Looper.getMainLooper()).post(runnable);
            }
        }

        void m983xa52290c(boolean z) {
            Reachability.this.setNetworkConnected(z);
            Reachability.this.onNetworkChanged();
        }
    }

    @Override
    public synchronized long addListener(ReachabilityChanged reachabilityChanged) {
        long newId;
        newId = IdGenerator.getNewId();
        this.listeners.put(Long.valueOf(newId), reachabilityChanged);
        reachabilityChanged.run(this.currentStatus);
        this.publish = true;
        return newId;
    }

    @Override
    public synchronized boolean removeListener(long j) {
        try {
            this.listeners.remove(Long.valueOf(j));
            if (this.listeners.isEmpty()) {
                this.publish = false;
            }
        } catch (Exception unused) {
            return false;
        }
        return true;
    }

    @Override
    public synchronized boolean isReachable() {
        try {
            boolean z = false;
            if (!this.networkConnected) {
                return false;
            }
            String str = this.hostname;
            if (str != null && !str.isEmpty()) {
                try {
                    try {
                        return InetAddress.getByName(this.hostname).isReachable(this.timeoutInMs);
                    } catch (IOException e) {
                        Log.warning("Network error. " + e.getMessage(), "MapboxReachability");
                        return false;
                    }
                } catch (IllegalArgumentException e2) {
                    Log.warning("Bad timeout. " + e2.getMessage(), "MapboxReachability");
                    return false;
                }
            }
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                try {
                    ConnectivityManager connectivityManager = this.connectivityManager;
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
                        z = true;
                    }
                    return z;
                } catch (RuntimeException e3) {
                    Log.error("ConnectivityManager interaction failed with exception: " + e3.getMessage(), "MapboxReachability");
                }
            }
            return false;
            throw th;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public synchronized NetworkStatus currentNetworkStatus() {
        return this.currentStatus;
    }

    public synchronized void onNetworkChanged() {
        NetworkStatus networkStatus = this.currentStatus;
        this.currentStatus = NetworkStatus.NOT_REACHABLE;
        if (this.networkConnected) {
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.ACCESS_NETWORK_STATE") == -1) {
                Log.warning("Unable to get application permission for ACCESS_NETWORK_STATE", "MapboxReachability");
                return;
            }
            try {
                ConnectivityManager connectivityManager = this.connectivityManager;
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(1)) {
                        this.currentStatus = NetworkStatus.REACHABLE_VIA_WI_FI;
                    } else if (networkCapabilities.hasTransport(0)) {
                        this.currentStatus = NetworkStatus.REACHABLE_VIA_WWAN;
                    } else if (networkCapabilities.hasTransport(3)) {
                        this.currentStatus = NetworkStatus.REACHABLE_VIA_ETHERNET;
                    }
                }
            } catch (RuntimeException e) {
                Log.error("ConnectivityManager interaction failed with exception: " + e.getMessage(), "MapboxReachability");
                return;
            }
        }
        if (this.publish && networkStatus != this.currentStatus) {
            Iterator<ReachabilityChanged> it = this.listeners.values().iterator();
            while (it.hasNext()) {
                it.next().run(this.currentStatus);
            }
        }
    }

    public static ReachabilityInterface createPlatformReachability(String str) {
        return new Reachability(str);
    }
}
