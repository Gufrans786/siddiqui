package com.oppwa.mobile.connect.threeds;

import android.content.Context;
import android.text.TextUtils;
import com.nsoftware.ipworks3ds.sdk.ThreeDS2Service;
import com.nsoftware.ipworks3ds.sdk.Warning;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKNotInitializedException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import com.oppwa.mobile.connect.threeds.constant.TransactionMode;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class OppThreeDSService {
    private static OppThreeDSService i;
    private Context a;
    private TransactionMode b;
    private List<String> c;
    private Callback d;
    private ThreeDS2Service g;
    private boolean e = false;
    private h f = new h();
    private OppThreeDSConfig h = new OppThreeDSConfig.Builder().build();

    public static abstract class Callback {
        public void onError(String str, StackTraceElement[] stackTraceElementArr) {
        }

        public void onInitialized() {
        }
    }

    private OppThreeDSService(ThreeDS2Service threeDS2Service) {
        this.g = threeDS2Service;
    }

    public static synchronized OppThreeDSService getInstance() {
        if (i == null) {
            i = new OppThreeDSService(ThreeDS2Service.INSTANCE);
        }
        return i;
    }

    public void cleanUp() throws SDKNotInitializedException {
        e.a(this.a);
        this.g.cleanup(this.a);
        this.a = null;
        this.b = null;
        this.c = null;
        this.h = new OppThreeDSConfig.Builder().build();
        this.f = new h();
        this.d = null;
        this.e = false;
    }

    public Future<OppThreeDSTransaction> createFutureTransaction(final String str, final String str2) throws InvalidInputException, SDKRuntimeException {
        return Executors.newSingleThreadExecutor().submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.a(str, str2);
            }
        });
    }

    public OppThreeDSTransaction createTransaction(String str, String str2) throws InvalidInputException, SDKNotInitializedException, SDKRuntimeException {
        if (!this.e) {
            throw new SDKNotInitializedException("OppThreeDSService is not initialized.");
        }
        return new OppThreeDSTransaction(this.g.createTransaction(a(str).getDsRefId(), str2), this.h.getSdkMaxTimeout());
    }

    public OppThreeDSConfig getConfig() {
        return this.h;
    }

    public Callback getInitCallback() {
        return this.d;
    }

    public String getNsoftwareVersion() {
        return this.g.getSDKVersion();
    }

    public List<String> getPaymentBrands() {
        return this.c;
    }

    public List<Warning> getWarnings() throws SDKNotInitializedException {
        return this.g.getWarnings();
    }

    public void initialize(Context context, TransactionMode transactionMode, List<String> list) throws InvalidInputException, SDKRuntimeException {
        if (transactionMode == null) {
            throw new InvalidInputException("Transaction mode is null");
        }
        if (list == null || list.isEmpty()) {
            throw new InvalidInputException("Payment brands list is empty");
        }
        this.a = context.getApplicationContext();
        this.b = transactionMode;
        this.c = list;
        new TaskRunner().executeAsync(new b());
    }

    public boolean isInitialized() {
        return this.e;
    }

    public void setConfig(OppThreeDSConfig oppThreeDSConfig) {
        this.h = oppThreeDSConfig;
    }

    public void setCustomSchemeConfig(Map<String, SchemeConfig> map) {
        this.f.a(map);
    }

    public void setInitCallback(Callback callback) {
        this.d = callback;
    }

    public OppThreeDSTransaction a(String str, String str2) throws Exception {
        if (!this.e) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay = Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.a(countDownLatch);
                }
            }, 0L, 100L, TimeUnit.MILLISECONDS);
            countDownLatch.await();
            scheduledFutureScheduleWithFixedDelay.cancel(true);
        }
        return createTransaction(str, str2);
    }

    private class b extends BaseTask<Boolean> {
        private b() {
        }

        @Override
        public Boolean call() throws Throwable {
            OppThreeDSService.this.f.a(OppThreeDSService.this.a, OppThreeDSService.this.c);
            return Boolean.valueOf(a(OppThreeDSService.this.f.a(OppThreeDSService.this.b, OppThreeDSService.this.c)));
        }

        @Override
        public void onError(Exception exc) throws Throwable {
            if (OppThreeDSService.this.d != null) {
                OppThreeDSService.this.d.onError(!TextUtils.isEmpty(exc.getLocalizedMessage()) ? exc.getLocalizedMessage() : exc.toString(), exc.getStackTrace());
            }
            e.a(OppThreeDSService.this.a, "Error while initializing OppThreeDSService: " + exc);
        }

        @Override
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (bool.booleanValue()) {
                OppThreeDSService.this.e = true;
                if (OppThreeDSService.this.d != null) {
                    OppThreeDSService.this.d.onInitialized();
                }
            }
        }

        private boolean a(List<SchemeConfig> list) {
            OppThreeDSService.this.g.initialize(OppThreeDSService.this.a, com.oppwa.mobile.connect.threeds.b.a(OppThreeDSService.this.h, list), OppThreeDSService.this.h.getLocale(), OppThreeDSService.this.h.getUiCustomization(), new c(OppThreeDSService.this.a, OppThreeDSService.this.b), null);
            return true;
        }
    }

    public void a(CountDownLatch countDownLatch) {
        if (this.e) {
            countDownLatch.countDown();
        }
    }

    private SchemeConfig a(String str) throws InvalidInputException, SDKNotInitializedException {
        if (this.c.contains(str)) {
            SchemeConfig schemeConfigA = this.f.a(this.b, str);
            if (schemeConfigA != null) {
                return schemeConfigA;
            }
            throw new SDKNotInitializedException("DS certificate not found");
        }
        throw new InvalidInputException("Invalid payment brand");
    }
}
