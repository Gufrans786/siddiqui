package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import java.io.Serializable;
import java.util.Objects;

public class EventsServerOptions implements Serializable {
    private final DeferredDeliveryServiceOptions deferredDeliveryServiceOptions;
    private final SdkInformation sdkInformation;

    public EventsServerOptions(SdkInformation sdkInformation, DeferredDeliveryServiceOptions deferredDeliveryServiceOptions) {
        this.sdkInformation = sdkInformation;
        this.deferredDeliveryServiceOptions = deferredDeliveryServiceOptions;
    }

    public SdkInformation getSdkInformation() {
        return this.sdkInformation;
    }

    public DeferredDeliveryServiceOptions getDeferredDeliveryServiceOptions() {
        return this.deferredDeliveryServiceOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        EventsServerOptions eventsServerOptions = (EventsServerOptions) obj;
        return Objects.equals(this.sdkInformation, eventsServerOptions.sdkInformation) && Objects.equals(this.deferredDeliveryServiceOptions, eventsServerOptions.deferredDeliveryServiceOptions);
    }

    public int hashCode() {
        return Objects.hash(this.sdkInformation, this.deferredDeliveryServiceOptions);
    }

    public String toString() {
        return "[sdkInformation: " + RecordUtils.fieldToString(this.sdkInformation) + ", deferredDeliveryServiceOptions: " + RecordUtils.fieldToString(this.deferredDeliveryServiceOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
