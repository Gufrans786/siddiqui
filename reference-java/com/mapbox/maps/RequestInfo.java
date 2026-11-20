package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.List;
import java.util.Objects;

public final class RequestInfo implements Serializable {
    private final List<RequestLoadingMethodType> loadingMethod;
    private final RequestPriorityType priority;
    private final RequestResourceType resource;
    private final String url;

    public RequestInfo(String str, RequestResourceType requestResourceType, RequestPriorityType requestPriorityType, List<RequestLoadingMethodType> list) {
        this.url = str;
        this.resource = requestResourceType;
        this.priority = requestPriorityType;
        this.loadingMethod = list;
    }

    public String getUrl() {
        return this.url;
    }

    public RequestResourceType getResource() {
        return this.resource;
    }

    public RequestPriorityType getPriority() {
        return this.priority;
    }

    public List<RequestLoadingMethodType> getLoadingMethod() {
        return this.loadingMethod;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RequestInfo requestInfo = (RequestInfo) obj;
        return Objects.equals(this.url, requestInfo.url) && Objects.equals(this.resource, requestInfo.resource) && Objects.equals(this.priority, requestInfo.priority) && Objects.equals(this.loadingMethod, requestInfo.loadingMethod);
    }

    public int hashCode() {
        return Objects.hash(this.url, this.resource, this.priority, this.loadingMethod);
    }

    public String toString() {
        return "[url: " + RecordUtils.fieldToString(this.url) + ", resource: " + RecordUtils.fieldToString(this.resource) + ", priority: " + RecordUtils.fieldToString(this.priority) + ", loadingMethod: " + RecordUtils.fieldToString(this.loadingMethod) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
