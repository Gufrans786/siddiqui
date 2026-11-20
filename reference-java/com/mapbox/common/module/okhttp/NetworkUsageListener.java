package com.mapbox.common.module.okhttp;

import android.util.Log;
import com.mapbox.common.NetworkUsageMetricsMeter;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Request;
import okhttp3.Response;

public class NetworkUsageListener extends EventListener {
    public static NetworkUsageMetricCallback CALLBACK = null;
    public static final EventListener.Factory FACTORY = new EventListener.Factory() {
        @Override
        public final EventListener create(Call call) {
            return NetworkUsageListener.lambda$static$0(call);
        }
    };
    private static final String TAG = "CommonNetworkUsage";
    private long bytesRequest;
    private long bytesResponse;
    private boolean reported;

    public interface NetworkUsageMetricCallback {
        void onBytesTransferred(String str, long j, long j2);
    }

    static EventListener lambda$static$0(Call call) {
        return new NetworkUsageListener();
    }

    private NetworkUsageListener() {
    }

    @Override
    public void requestHeadersEnd(Call call, Request request) {
        super.requestHeadersEnd(call, request);
        this.bytesRequest += request.headers().byteCount();
    }

    @Override
    public void requestBodyEnd(Call call, long j) {
        super.requestBodyEnd(call, j);
        this.bytesRequest += j;
    }

    @Override
    public void responseHeadersEnd(Call call, Response response) {
        super.responseHeadersEnd(call, response);
        this.bytesResponse += response.headers().byteCount();
    }

    @Override
    public void responseBodyEnd(Call call, long j) {
        super.responseBodyEnd(call, j);
        this.bytesResponse += j;
    }

    @Override
    public void callEnd(Call call) {
        super.callEnd(call);
        notifyCallback(call);
    }

    @Override
    public void callFailed(Call call, IOException iOException) {
        super.callFailed(call, iOException);
        notifyCallback(call);
    }

    private void notifyCallback(Call call) {
        if (this.reported) {
            return;
        }
        String url = call.request().url().getUrl();
        NetworkUsageMetricCallback networkUsageMetricCallback = CALLBACK;
        if (networkUsageMetricCallback != null) {
            try {
                networkUsageMetricCallback.onBytesTransferred(url, this.bytesRequest, this.bytesResponse);
            } catch (NullPointerException e) {
                Log.w(TAG, "notifyCallback failed: ", e);
            }
        }
        notifyInternalMetrics(url, (int) this.bytesRequest, (int) this.bytesResponse);
        this.reported = true;
    }

    static void notifyInternalMetrics(String str, int i, int i2) {
        NetworkUsageMetricsMeter.onBytesTransferred(str, i, i2);
    }
}
