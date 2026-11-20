package com.mapbox.common;

import java.util.List;

public interface SdkInfoRegistryInterface {
    List<SdkInformation> getSdkInformation();

    void registerSdkInformation(SdkInformation sdkInformation);
}
