package com.payfort.fortpaymentsdk.domain.model;

import java.util.Map;

public class SdkRequest {
    private String deviceId;
    private String deviceOS;
    private Map<String, Object> requestMap;

    public String getDeviceOS() {
        return this.deviceOS;
    }

    public void setDeviceOS(String str) {
        this.deviceOS = str;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public Map<String, Object> getRequestMap() {
        return this.requestMap;
    }

    public void setRequestMap(Map<String, Object> map) {
        this.requestMap = map;
    }
}
