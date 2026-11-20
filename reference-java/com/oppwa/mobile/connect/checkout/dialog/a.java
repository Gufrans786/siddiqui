package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.util.Log;
import com.alipay.sdk.app.PayTask;
import com.oppwa.mobile.connect.provider.Transaction;
import com.oppwa.mobile.connect.utils.BaseTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class a extends BaseTask<String> {
    private static final String e = "com.oppwa.mobile.connect.checkout.dialog.a";
    private final Activity a;
    private final Transaction b;
    private final b c;
    private final String d;

    a(Activity activity, Transaction transaction, b bVar, String str) {
        this.a = activity;
        this.b = transaction;
        this.c = bVar;
        this.d = str;
    }

    @Override
    public String call() {
        return new PayTask(this.a).pay(this.d, true);
    }

    @Override
    public void onError(Exception exc) {
        Log.d(e, exc.getMessage());
    }

    @Override
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        Matcher matcher = Pattern.compile(Pattern.quote("resultStatus={") + "(.*?)" + Pattern.quote("}")).matcher(str);
        if (matcher.find() && "6001".equals(matcher.group(1))) {
            this.c.onAlipayCanceled();
        } else {
            this.c.onAlipayCompleted(this.b);
        }
    }
}
