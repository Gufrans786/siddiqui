package n.o.t.i.f.e.e;

import android.os.Bundle;
import app.notifee.core.interfaces.MethodCallResult;
import com.google.common.util.concurrent.FutureCallback;
import com.transistorsoft.locationmanager.config.TSNotification;
import java.util.List;

public class l implements FutureCallback<List<u>> {
    public final List a;
    public final MethodCallResult b;

    public l(List list, MethodCallResult methodCallResult) {
        this.a = list;
        this.b = methodCallResult;
    }

    @Override
    public void onFailure(Throwable th) {
        this.b.onComplete(new Exception(th), this.a);
    }

    @Override
    public void onSuccess(List<u> list) {
        for (u uVar : list) {
            Bundle bundle = new Bundle();
            bundle.putBundle(TSNotification.NAME, p.a(uVar.b));
            bundle.putBundle("trigger", p.a(uVar.c));
            this.a.add(bundle);
        }
        this.b.onComplete(null, this.a);
    }
}
