package n.o.t.i.f.e.e;

import app.notifee.core.interfaces.MethodCallResult;
import com.google.common.util.concurrent.FutureCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class m implements FutureCallback<List<u>> {
    public final MethodCallResult a;

    public m(MethodCallResult methodCallResult) {
        this.a = methodCallResult;
    }

    @Override
    public void onFailure(Throwable th) {
        this.a.onComplete(new Exception(th), null);
    }

    @Override
    public void onSuccess(List<u> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<u> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a);
        }
        this.a.onComplete(null, arrayList);
    }
}
