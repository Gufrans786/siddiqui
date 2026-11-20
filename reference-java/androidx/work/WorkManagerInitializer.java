package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;

public final class WorkManagerInitializer implements Initializer<WorkManager> {
    private static final String TAG = Logger.tagWithPrefix("WrkMgrInitializer");

    @Override
    public WorkManager create(Context context) {
        Logger.get().debug(TAG, "Initializing WorkManager with default configuration.");
        WorkManager.initialize(context, new Configuration.Builder().build());
        return WorkManager.getInstance(context);
    }

    @Override
    public List<Class<? extends Initializer<?>>> dependencies() {
        return Collections.emptyList();
    }
}
