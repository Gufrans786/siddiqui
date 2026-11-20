package com.mapbox.maps;

interface InteractionHandler {
    boolean handleBegin(QueriedFeature queriedFeature, InteractionContext interactionContext);

    void handleChange(InteractionContext interactionContext);

    void handleEnd(InteractionContext interactionContext);
}
