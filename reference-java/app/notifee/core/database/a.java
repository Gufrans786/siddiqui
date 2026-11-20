package app.notifee.core.database;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
import n.o.t.i.f.e.e.s;
import n.o.t.i.f.e.e.u;

public class a {
    public static a b;
    public s a;

    public a(Context context) {
        this.a = NotifeeCoreDatabase.a(context).a();
    }

    public static a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (b == null) {
                b = new a(context);
            }
            aVar = b;
        }
        return aVar;
    }

    public void b(u uVar) {
        this.a.a(uVar);
    }

    public void c(String str) {
        this.a.a(str);
    }

    public u d(String str) throws Exception {
        return this.a.b(str);
    }

    public void c() {
        this.a.b();
    }

    public List d() throws Exception {
        return this.a.a();
    }

    public ListenableFuture<u> b(final String str) {
        return NotifeeCoreDatabase.b.submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.d(str);
            }
        });
    }

    public List b(Boolean bool) throws Exception {
        return this.a.a(bool);
    }

    public void c(u uVar) {
        this.a.b(uVar);
    }

    public void d(final u uVar) {
        NotifeeCoreDatabase.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.c(uVar);
            }
        });
    }

    public ListenableFuture<List<u>> b() {
        return NotifeeCoreDatabase.b.submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.d();
            }
        });
    }

    public void b(List list) {
        this.a.a((List<String>) list);
    }

    public void a(final u uVar) {
        NotifeeCoreDatabase.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.b(uVar);
            }
        });
    }

    public ListenableFuture<List<u>> a(final Boolean bool) {
        return NotifeeCoreDatabase.b.submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.b(bool);
            }
        });
    }

    public void a(final String str) {
        NotifeeCoreDatabase.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.c(str);
            }
        });
    }

    public void a(final List<String> list) {
        NotifeeCoreDatabase.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.b(list);
            }
        });
    }

    public void a() {
        NotifeeCoreDatabase.b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f$0.c();
            }
        });
    }
}
