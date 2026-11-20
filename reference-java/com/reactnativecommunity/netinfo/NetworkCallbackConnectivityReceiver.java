package com.reactnativecommunity.netinfo;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.facebook.react.bridge.ReactApplicationContext;
import com.reactnativecommunity.netinfo.types.CellularGeneration;
import com.reactnativecommunity.netinfo.types.ConnectionType;

public class NetworkCallbackConnectivityReceiver extends ConnectivityReceiver {
    private static final int DELAY_MS = 250;
    private NetworkCapabilities mCapabilities;
    private Network mNetwork;
    private final ConnectivityNetworkCallback mNetworkCallback;

    public NetworkCallbackConnectivityReceiver(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.mNetwork = null;
        this.mCapabilities = null;
        this.mNetworkCallback = new ConnectivityNetworkCallback();
    }

    @Override
    public void register() {
        try {
            this.mNetwork = getConnectivityManager().getActiveNetwork();
            asyncUpdateAndSend(0);
            getConnectivityManager().registerDefaultNetworkCallback(this.mNetworkCallback);
        } catch (SecurityException unused) {
        }
    }

    @Override
    public void unregister() {
        try {
            getConnectivityManager().unregisterNetworkCallback(this.mNetworkCallback);
        } catch (IllegalArgumentException | SecurityException unused) {
        }
    }

    void updateAndSend() {
        NetworkInfo networkInfo;
        boolean z;
        ConnectionType connectionType = ConnectionType.UNKNOWN;
        Network network = this.mNetwork;
        NetworkCapabilities networkCapabilities = this.mCapabilities;
        CellularGeneration cellularGenerationFromNetworkInfo = null;
        boolean z2 = false;
        if (networkCapabilities != null) {
            if (networkCapabilities.hasTransport(2)) {
                connectionType = ConnectionType.BLUETOOTH;
            } else if (networkCapabilities.hasTransport(0)) {
                connectionType = ConnectionType.CELLULAR;
            } else if (networkCapabilities.hasTransport(3)) {
                connectionType = ConnectionType.ETHERNET;
            } else if (networkCapabilities.hasTransport(1)) {
                connectionType = ConnectionType.WIFI;
            } else if (networkCapabilities.hasTransport(4)) {
                connectionType = ConnectionType.VPN;
            }
            if (network != null) {
                try {
                    networkInfo = getConnectivityManager().getNetworkInfo(network);
                } catch (SecurityException unused) {
                    networkInfo = null;
                }
            } else {
                networkInfo = null;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                z = !networkCapabilities.hasCapability(21);
            } else {
                z = (network == null || networkInfo == null || networkInfo.getDetailedState().equals(NetworkInfo.DetailedState.CONNECTED)) ? false : true;
            }
            boolean z3 = networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16) && !z;
            if (!networkCapabilities.hasTransport(4)) {
                z2 = z3;
            } else if (z3 && networkCapabilities.getLinkDownstreamBandwidthKbps() != 0) {
                z2 = true;
            }
            if (network != null && connectionType == ConnectionType.CELLULAR && z2) {
                cellularGenerationFromNetworkInfo = CellularGeneration.fromNetworkInfo(networkInfo);
            }
        } else {
            connectionType = ConnectionType.NONE;
        }
        updateConnectivity(connectionType, cellularGenerationFromNetworkInfo, z2);
    }

    public void asyncUpdateAndSend(int i) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f$0.lambda$asyncUpdateAndSend$0();
            }
        }, i);
    }

    public void lambda$asyncUpdateAndSend$0() {
        try {
            this.mCapabilities = getConnectivityManager().getNetworkCapabilities(this.mNetwork);
            updateAndSend();
        } catch (SecurityException unused) {
        }
    }

    private class ConnectivityNetworkCallback extends ConnectivityManager.NetworkCallback {
        private ConnectivityNetworkCallback() {
        }

        @Override
        public void onAvailable(Network network) {
            NetworkCallbackConnectivityReceiver.this.mNetwork = network;
            NetworkCallbackConnectivityReceiver.this.asyncUpdateAndSend(250);
        }

        @Override
        public void onLosing(Network network, int i) {
            NetworkCallbackConnectivityReceiver.this.mNetwork = network;
            NetworkCallbackConnectivityReceiver.this.updateAndSend();
        }

        @Override
        public void onLost(Network network) {
            NetworkCallbackConnectivityReceiver.this.mNetwork = null;
            NetworkCallbackConnectivityReceiver.this.mCapabilities = null;
            NetworkCallbackConnectivityReceiver.this.updateAndSend();
        }

        @Override
        public void onUnavailable() {
            NetworkCallbackConnectivityReceiver.this.mNetwork = null;
            NetworkCallbackConnectivityReceiver.this.mCapabilities = null;
            NetworkCallbackConnectivityReceiver.this.updateAndSend();
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            NetworkCallbackConnectivityReceiver.this.mNetwork = network;
            NetworkCallbackConnectivityReceiver.this.mCapabilities = networkCapabilities;
            NetworkCallbackConnectivityReceiver.this.updateAndSend();
        }

        @Override
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            if (NetworkCallbackConnectivityReceiver.this.mNetwork != null) {
                NetworkCallbackConnectivityReceiver.this.mNetwork = network;
            }
            NetworkCallbackConnectivityReceiver.this.asyncUpdateAndSend(250);
        }
    }
}
