package com.payfort.fortpaymentsdk.domain.model;

import java.io.Serializable;
import java.util.Map;

public class FortRequest implements Serializable {
    private Map<String, Object> requestMap;
    private boolean showResponsePage;

    public Map<String, Object> getRequestMap() {
        return this.requestMap;
    }

    public void setRequestMap(Map<String, Object> map) {
        this.requestMap = map;
    }

    public boolean isShowResponsePage() {
        return this.showResponsePage;
    }

    public void setShowResponsePage(boolean z) {
        this.showResponsePage = z;
    }
}
