package com.mapbox.common;

public interface ConfigurationServiceObserver {
    void didEncounterError(ConfigurationServiceError configurationServiceError);

    void didStartUpdate();

    void didUpdate(ConfigurationOptions configurationOptions);
}
