package n.o.t.i.f.e.e;

import org.greenrobot.eventbus.EventBus;

public class g {
    public static final g b = new g();
    public EventBus a = EventBus.builder().build();

    public static void a(Object obj) {
        b.a.post(obj);
    }

    public static void b(Object obj) {
        b.a.postSticky(obj);
    }

    public static void c(Object obj) {
        b.a.register(obj);
    }
}
