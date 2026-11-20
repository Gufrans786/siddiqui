package io.grpc.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.util.Log;
import com.google.common.base.Preconditions;
import com.reactnativecommunity.netinfo.BroadcastReceiverConnectivityReceiver;
import io.grpc.CallOptions;
import io.grpc.ClientCall;
import io.grpc.ConnectivityState;
import io.grpc.ForwardingChannelBuilder;
import io.grpc.InternalManagedChannelProvider;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.grpc.ManagedChannelProvider;
import io.grpc.MethodDescriptor;
import io.grpc.internal.GrpcUtil;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class AndroidChannelBuilder extends ForwardingChannelBuilder<AndroidChannelBuilder> {
    private static final String LOG_TAG = "AndroidChannelBuilder";

    @Nullable
    private static final ManagedChannelProvider OKHTTP_CHANNEL_PROVIDER = findOkHttp();

    @Nullable
    private Context context;
    private final ManagedChannelBuilder<?> delegateBuilder;

    private static ManagedChannelProvider findOkHttp() {
        try {
            try {
                try {
                    ManagedChannelProvider managedChannelProvider = (ManagedChannelProvider) Class.forName("io.grpc.okhttp.OkHttpChannelProvider").asSubclass(ManagedChannelProvider.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (InternalManagedChannelProvider.isAvailable(managedChannelProvider)) {
                        return managedChannelProvider;
                    }
                    Log.w(LOG_TAG, "OkHttpChannelProvider.isAvailable() returned false");
                    return null;
                } catch (Exception e) {
                    Log.w(LOG_TAG, "Failed to construct OkHttpChannelProvider", e);
                    return null;
                }
            } catch (ClassCastException e2) {
                Log.w(LOG_TAG, "Couldn't cast OkHttpChannelProvider to ManagedChannelProvider", e2);
                return null;
            }
        } catch (ClassNotFoundException e3) {
            Log.w(LOG_TAG, "Failed to find OkHttpChannelProvider", e3);
            return null;
        }
    }

    public static AndroidChannelBuilder forTarget(String str) {
        return new AndroidChannelBuilder(str);
    }

    public static AndroidChannelBuilder forAddress(String str, int i) {
        return forTarget(GrpcUtil.authorityFromHostAndPort(str, i));
    }

    @Deprecated
    public static AndroidChannelBuilder fromBuilder(ManagedChannelBuilder<?> managedChannelBuilder) {
        return usingBuilder(managedChannelBuilder);
    }

    public static AndroidChannelBuilder usingBuilder(ManagedChannelBuilder<?> managedChannelBuilder) {
        return new AndroidChannelBuilder(managedChannelBuilder);
    }

    private AndroidChannelBuilder(String str) {
        ManagedChannelProvider managedChannelProvider = OKHTTP_CHANNEL_PROVIDER;
        if (managedChannelProvider == null) {
            throw new UnsupportedOperationException("Unable to load OkHttpChannelProvider");
        }
        this.delegateBuilder = InternalManagedChannelProvider.builderForTarget(managedChannelProvider, str);
    }

    private AndroidChannelBuilder(ManagedChannelBuilder<?> managedChannelBuilder) {
        this.delegateBuilder = (ManagedChannelBuilder) Preconditions.checkNotNull(managedChannelBuilder, "delegateBuilder");
    }

    public AndroidChannelBuilder context(Context context) {
        this.context = context;
        return this;
    }

    @Override
    protected ManagedChannelBuilder<?> delegate() {
        return this.delegateBuilder;
    }

    @Override
    public ManagedChannel build() {
        return new AndroidChannel(this.delegateBuilder.build(), this.context);
    }

    static final class AndroidChannel extends ManagedChannel {

        @Nullable
        private final ConnectivityManager connectivityManager;

        @Nullable
        private final Context context;
        private final ManagedChannel delegate;
        private final Object lock = new Object();
        private Runnable unregisterRunnable;

        AndroidChannel(ManagedChannel managedChannel, @Nullable Context context) {
            this.delegate = managedChannel;
            this.context = context;
            if (context != null) {
                this.connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                try {
                    configureNetworkMonitoring();
                    return;
                } catch (SecurityException e) {
                    Log.w(AndroidChannelBuilder.LOG_TAG, "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?", e);
                    return;
                }
            }
            this.connectivityManager = null;
        }

        private void configureNetworkMonitoring() {
            if (this.connectivityManager != null) {
                final DefaultNetworkCallback defaultNetworkCallback = new DefaultNetworkCallback();
                this.connectivityManager.registerDefaultNetworkCallback(defaultNetworkCallback);
                this.unregisterRunnable = new Runnable() {
                    @Override
                    public void run() {
                        AndroidChannel.this.connectivityManager.unregisterNetworkCallback(defaultNetworkCallback);
                    }
                };
            } else {
                final NetworkReceiver networkReceiver = new NetworkReceiver();
                this.context.registerReceiver(networkReceiver, new IntentFilter(BroadcastReceiverConnectivityReceiver.CONNECTIVITY_ACTION));
                this.unregisterRunnable = new Runnable() {
                    @Override
                    public void run() {
                        AndroidChannel.this.context.unregisterReceiver(networkReceiver);
                    }
                };
            }
        }

        private void unregisterNetworkListener() {
            synchronized (this.lock) {
                Runnable runnable = this.unregisterRunnable;
                if (runnable != null) {
                    runnable.run();
                    this.unregisterRunnable = null;
                }
            }
        }

        @Override
        public ManagedChannel shutdown() {
            unregisterNetworkListener();
            return this.delegate.shutdown();
        }

        @Override
        public boolean isShutdown() {
            return this.delegate.isShutdown();
        }

        @Override
        public boolean isTerminated() {
            return this.delegate.isTerminated();
        }

        @Override
        public ManagedChannel shutdownNow() {
            unregisterNetworkListener();
            return this.delegate.shutdownNow();
        }

        @Override
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.awaitTermination(j, timeUnit);
        }

        @Override
        public <RequestT, ResponseT> ClientCall<RequestT, ResponseT> newCall(MethodDescriptor<RequestT, ResponseT> methodDescriptor, CallOptions callOptions) {
            return this.delegate.newCall(methodDescriptor, callOptions);
        }

        @Override
        public String authority() {
            return this.delegate.authority();
        }

        @Override
        public ConnectivityState getState(boolean z) {
            return this.delegate.getState(z);
        }

        @Override
        public void notifyWhenStateChanged(ConnectivityState connectivityState, Runnable runnable) {
            this.delegate.notifyWhenStateChanged(connectivityState, runnable);
        }

        @Override
        public void resetConnectBackoff() {
            this.delegate.resetConnectBackoff();
        }

        @Override
        public void enterIdle() {
            this.delegate.enterIdle();
        }

        private class DefaultNetworkCallback extends ConnectivityManager.NetworkCallback {
            private DefaultNetworkCallback() {
            }

            @Override
            public void onAvailable(Network network) {
                AndroidChannel.this.delegate.enterIdle();
            }

            @Override
            public void onBlockedStatusChanged(Network network, boolean z) {
                if (z) {
                    return;
                }
                AndroidChannel.this.delegate.enterIdle();
            }
        }

        private class NetworkReceiver extends BroadcastReceiver {
            private boolean isConnected;

            private NetworkReceiver() {
                this.isConnected = false;
            }

            @Override
            public void onReceive(Context context, Intent intent) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                boolean z = this.isConnected;
                boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
                this.isConnected = z2;
                if (!z2 || z) {
                    return;
                }
                AndroidChannel.this.delegate.enterIdle();
            }
        }
    }
}
