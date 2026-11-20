package com.rnmapbox.rnmbx.components;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.events.Event;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.rnmapbox.rnmbx.events.IEvent;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u0000 &*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001&B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\u0013\u001a\u00020\u0014\"\u000e\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0015J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0018J\u001d\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u001dJ\u0016\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fH\u0016J\u0016\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001fH&J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0018H\u0002J\u0010\u0010%\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0018H\u0002R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006'"}, d2 = {"Lcom/rnmapbox/rnmbx/components/AbstractEventEmitter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/ViewGroup;", "Lcom/facebook/react/uimanager/ViewGroupManager;", "reactApplicationContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "mRateLimitedEvents", "", "", "", "mEventDispatcher", "Lcom/facebook/react/uimanager/events/EventDispatcher;", "mRCTAppContext", "activity", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "dispatchEvent", "", "Lcom/facebook/react/uimanager/events/Event;", NotificationCompat.CATEGORY_EVENT, "handleEvent", "Lcom/rnmapbox/rnmbx/events/IEvent;", "addEventEmitters", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/react/uimanager/ThemedReactContext;", "view", "(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/ViewGroup;)V", "getExportedCustomDirectEventTypeConstants", "", "", "customEvents", "shouldDropEvent", "", "cacheKey", "getEventCacheKey", "Companion", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractEventEmitter<T extends ViewGroup> extends ViewGroupManager<T> {
    private static final double BRIDGE_TIMEOUT_MS = 10.0d;
    private EventDispatcher mEventDispatcher;
    private final ReactApplicationContext mRCTAppContext;
    private final Map<String, Long> mRateLimitedEvents;

    public abstract Map<String, String> customEvents();

    public AbstractEventEmitter(ReactApplicationContext reactApplicationContext) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(reactApplicationContext, "reactApplicationContext");
        this.mRateLimitedEvents = new HashMap();
        this.mRCTAppContext = reactApplicationContext;
    }

    public final Activity getActivity() {
        return this.mRCTAppContext.getCurrentActivity();
    }

    public final <T extends Event<T>> void dispatchEvent(Event<T> event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventDispatcher eventDispatcher = this.mEventDispatcher;
        Intrinsics.checkNotNull(eventDispatcher);
        eventDispatcher.dispatchEvent(event);
    }

    public final void handleEvent(IEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String eventCacheKey = getEventCacheKey(event);
        if (shouldDropEvent(eventCacheKey, event)) {
            return;
        }
        this.mRateLimitedEvents.put(eventCacheKey, Long.valueOf(System.currentTimeMillis()));
        try {
            EventDispatcher eventDispatcher = this.mEventDispatcher;
            Intrinsics.checkNotNull(eventDispatcher);
            eventDispatcher.dispatchEvent(new AbstractEvent(event.getMTagID(), event.getKey(), event.canCoalesce(), event.toJSON()));
        } catch (Exception e) {
            Logger.INSTANCE.e("Error dispatching event:", e.toString());
        }
    }

    @Override
    public void addEventEmitters(ThemedReactContext context, T view) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        this.mEventDispatcher = UIManagerHelper.getEventDispatcherForReactTag(context, view.getId());
    }

    @Override
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        Map<String, String> mapCustomEvents = customEvents();
        if (mapCustomEvents == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : mapCustomEvents.entrySet()) {
            map.put(entry.getKey(), MapBuilder.of("registrationName", entry.getValue()));
        }
        return map;
    }

    private final boolean shouldDropEvent(String cacheKey, IEvent event) {
        Long l = this.mRateLimitedEvents.get(cacheKey);
        return l != null && ((double) (event.getMTimestamp() - l.longValue())) <= 10.0d;
    }

    private final String getEventCacheKey(IEvent event) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s-%s", Arrays.copyOf(new Object[]{event.getKey(), event.getMEventType()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
