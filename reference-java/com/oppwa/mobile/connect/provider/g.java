package com.oppwa.mobile.connect.provider;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.nsoftware.ipworks3ds.sdk.exception.InvalidInputException;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.exception.PaymentException;
import com.oppwa.mobile.connect.threeds.ChallengeCallback;
import com.oppwa.mobile.connect.threeds.OppThreeDSConfig;
import com.oppwa.mobile.connect.threeds.OppThreeDSService;
import com.oppwa.mobile.connect.threeds.OppThreeDSTransaction;
import com.oppwa.mobile.connect.threeds.constant.TransactionMode;
import com.oppwa.mobile.connect.utils.Logger;
import com.oppwa.mobile.connect.utils.StringUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class g {
    private OppThreeDSTransaction a;
    private List<String> b;
    private OppThreeDSService c;
    private Context d;
    private c e = c.NOT_INITIALIZED;
    private String f;
    private Connect.ProviderMode g;

    class a implements ChallengeCallback {
        final OppPaymentProvider a;

        a(OppPaymentProvider oppPaymentProvider) {
            this.a = oppPaymentProvider;
        }

        @Override
        public void onCancel() {
            this.a.a(PaymentError.getThreeDS2ChallengeCanceledError());
        }

        @Override
        public void onComplete(ChallengeCallback.CompletionEvent completionEvent) {
            this.a.a((PaymentError) null);
        }

        @Override
        public void onFailure(ChallengeCallback.ErrorEvent errorEvent) {
            g.this.e();
            String errorDetails = errorEvent.getErrorDetails();
            this.a.a(PaymentError.getThreeDS2Error(errorEvent.getErrorCode() + ": " + errorEvent.getErrorMessage() + (errorDetails != null ? " (" + errorDetails + ")" : "")));
        }
    }

    class b extends OppThreeDSService.Callback {
        final CountDownLatch a;

        b(CountDownLatch countDownLatch) {
            this.a = countDownLatch;
        }

        @Override
        public void onError(String str, StackTraceElement[] stackTraceElementArr) throws Throwable {
            super.onError(str, stackTraceElementArr);
            g.this.e = c.NOT_INITIALIZED;
            g.this.b(str);
            this.a.countDown();
        }

        @Override
        public void onInitialized() throws Throwable {
            super.onInitialized();
            g.this.e = c.INITIALIZED;
            g.this.c("Successfully initialized");
            g.this.f();
            this.a.countDown();
        }
    }

    enum c {
        NOT_INITIALIZED,
        PERFORMING_INITIALIZATION,
        INITIALIZED,
        EXTERNALLY_INITIALIZED
    }

    g() {
    }

    private void c() throws Throwable {
        this.e = c.EXTERNALLY_INITIALIZED;
        this.b = this.c.getPaymentBrands();
        c("Initialized externally with " + this.b);
        f();
    }

    public void e() {
        a(a("CRes"));
    }

    public void f() throws Throwable {
        try {
            c("Initialized with " + StringUtils.unmaskNumbers(this.c.getNsoftwareVersion()));
        } catch (Exception e) {
            b("Failed to get n-software version: " + e.getMessage());
        }
    }

    private void g() {
        a(a("SW"));
    }

    boolean d() {
        return this.c.isInitialized();
    }

    String b() throws Throwable {
        OppThreeDSTransaction oppThreeDSTransaction = this.a;
        if (oppThreeDSTransaction == null) {
            return null;
        }
        try {
            return oppThreeDSTransaction.getAuthRequestParams();
        } catch (SDKRuntimeException e) {
            a(e);
            return null;
        }
    }

    void a(Context context, String str, Connect.ProviderMode providerMode, List<String> list, OppThreeDSConfig oppThreeDSConfig) throws PaymentException {
        this.d = context.getApplicationContext();
        this.f = str;
        this.g = providerMode;
        if (this.c == null) {
            this.c = OppThreeDSService.getInstance();
        }
        if (this.e == c.NOT_INITIALIZED) {
            if (this.c.isInitialized()) {
                c();
            } else {
                a(list, oppThreeDSConfig);
            }
        }
    }

    public void c(String str) {
        Logger.info("ThreeDS2: " + str);
    }

    public void b(String str) throws Throwable {
        Logger.warning("ThreeDS2: " + str);
    }

    OppThreeDSTransaction a(String str, String str2) throws Throwable {
        OppThreeDSService oppThreeDSService = this.c;
        if (oppThreeDSService != null && oppThreeDSService.isInitialized()) {
            try {
                c("Create transaction for " + str + " with protocol version " + str2);
                this.a = this.c.createTransaction(str, str2);
            } catch (Exception e) {
                a(e);
            }
        } else {
            b("Trying create transaction, but service is not initialized");
        }
        return this.a;
    }

    void a() {
        g();
        OppThreeDSTransaction oppThreeDSTransaction = this.a;
        if (oppThreeDSTransaction != null) {
            oppThreeDSTransaction.close();
            this.a = null;
        }
        OppThreeDSService oppThreeDSService = this.c;
        if (oppThreeDSService != null && oppThreeDSService.isInitialized() && this.e != c.EXTERNALLY_INITIALIZED) {
            this.c.cleanUp();
            c("Service cleaned up");
        }
        this.e = c.NOT_INITIALIZED;
    }

    void a(OppPaymentProvider oppPaymentProvider, Activity activity, String str) throws PaymentException {
        try {
            this.a.doChallenge(activity, str, a(oppPaymentProvider));
            c("Challenge started");
        } catch (Exception e) {
            throw new PaymentException(PaymentError.getThreeDS2Error("Error in challenge flow: " + (e.getLocalizedMessage() != null ? e.getLocalizedMessage() : e.toString())));
        }
    }

    private ChallengeCallback a(OppPaymentProvider oppPaymentProvider) {
        return new a(oppPaymentProvider);
    }

    private void a(List<String> list, OppThreeDSConfig oppThreeDSConfig) throws PaymentException {
        this.b = list;
        c("Initialization requested with " + this.b);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        if (oppThreeDSConfig != null) {
            this.c.setConfig(oppThreeDSConfig);
        }
        this.c.setInitCallback(new b(countDownLatch));
        try {
            try {
                try {
                    TransactionMode byName = TransactionMode.getByName(this.g.name());
                    this.e = c.PERFORMING_INITIALIZATION;
                    this.c.initialize(this.d, byName, list);
                    if (!countDownLatch.await(15L, TimeUnit.SECONDS) && !this.c.isInitialized()) {
                        throw new PaymentException(PaymentError.getThreeDS2Error("OppThreeDSService initialization timed out."));
                    }
                    countDownLatch.countDown();
                } catch (InvalidInputException e) {
                    this.e = c.NOT_INITIALIZED;
                    throw new PaymentException(PaymentError.getThreeDS2Error(e.getLocalizedMessage()));
                }
            } catch (InterruptedException e2) {
                this.e = c.NOT_INITIALIZED;
                throw new PaymentException(PaymentError.getUnexpectedExceptionError(e2));
            }
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    private void a(Exception exc) throws Throwable {
        String string = TextUtils.isEmpty(exc.getMessage()) ? exc.toString() : exc.getMessage();
        if (string != null) {
            b(string);
        }
    }

    private void a(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            c(it.next());
        }
    }

    private List<String> a(String str) throws Throwable {
        ArrayList arrayList = new ArrayList();
        File file = new File(this.d.getFilesDir().getPath() + "/logs/threeds.txt");
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line != null) {
                            if (line.startsWith(str)) {
                                arrayList.add(line);
                            }
                        } else {
                            bufferedReader.close();
                            return arrayList;
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    b("Failed to get threeds events from log file: " + e.getMessage());
                }
            } catch (IOException e) {
                b("Failed to get threeds events from log file: " + e.getMessage());
            }
        }
        return arrayList;
    }
}
