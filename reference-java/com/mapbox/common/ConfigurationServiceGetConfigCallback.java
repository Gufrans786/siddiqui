package com.mapbox.common;

import com.mapbox.bindgen.Expected;

public interface ConfigurationServiceGetConfigCallback {
    void run(Expected<ConfigurationServiceError, ConfigurationOptions> expected);
}
