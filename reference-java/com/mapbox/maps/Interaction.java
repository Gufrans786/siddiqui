package com.mapbox.maps;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import com.mapbox.common.BaseMapboxInitializer;
import com.mapbox.maps.loader.MapboxMapsInitializerImpl;
import java.io.Serializable;
import java.util.Objects;

class Interaction implements Serializable {
    private final FeaturesetDescriptor featureset;
    private final Value filter;
    private final InteractionHandler handler;
    private final Double radius;
    private final InteractionType type;

    public Interaction(FeaturesetDescriptor featuresetDescriptor, Value value, InteractionType interactionType, InteractionHandler interactionHandler, Double d) {
        this.featureset = featuresetDescriptor;
        this.filter = value;
        this.type = interactionType;
        this.handler = interactionHandler;
        this.radius = d;
    }

    public FeaturesetDescriptor getFeatureset() {
        return this.featureset;
    }

    public Value getFilter() {
        return this.filter;
    }

    public InteractionType getType() {
        return this.type;
    }

    public InteractionHandler getHandler() {
        return this.handler;
    }

    public Double getRadius() {
        return this.radius;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Interaction interaction = (Interaction) obj;
        return Objects.equals(this.featureset, interaction.featureset) && Objects.equals(this.filter, interaction.filter) && Objects.equals(this.type, interaction.type) && Objects.equals(this.handler, interaction.handler) && Objects.equals(this.radius, interaction.radius);
    }

    public int hashCode() {
        return Objects.hash(this.featureset, this.filter, this.type, this.handler, this.radius);
    }

    public String toString() {
        return "[featureset: " + RecordUtils.fieldToString(this.featureset) + ", filter: " + RecordUtils.fieldToString(this.filter) + ", type: " + RecordUtils.fieldToString(this.type) + ", handler: " + RecordUtils.fieldToString(this.handler) + ", radius: " + RecordUtils.fieldToString(this.radius) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxMapsInitializerImpl.class);
    }
}
