package android.os;
import java.util.ArrayList;
import java.util.List;
public final class Handler {
    private static final List<Runnable> delayed = new ArrayList<>();
    public Handler(Looper looper) {}
    public boolean post(Runnable action) { action.run(); return true; }
    public boolean postDelayed(Runnable action, long milliseconds) { delayed.add(action); return true; }
    public static void runDelayed() {
        List<Runnable> pending = new ArrayList<>(delayed);
        delayed.clear();
        pending.forEach(Runnable::run);
    }
}
