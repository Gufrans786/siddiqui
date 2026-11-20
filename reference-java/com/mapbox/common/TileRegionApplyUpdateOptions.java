package com.mapbox.common;

import com.mapbox.bindgen.RecordUtils;
import com.mapbox.bindgen.Value;
import java.io.Serializable;
import java.util.Objects;

public final class TileRegionApplyUpdateOptions implements Serializable {
    private final Value extraOptions;
    private final NetworkRestriction networkRestriction;

    private TileRegionApplyUpdateOptions(NetworkRestriction networkRestriction, Value value) {
        this.networkRestriction = networkRestriction;
        this.extraOptions = value;
    }

    private TileRegionApplyUpdateOptions(Value value) {
        this.extraOptions = value;
        this.networkRestriction = NetworkRestriction.DISALLOW_EXPENSIVE;
    }

    public NetworkRestriction getNetworkRestriction() {
        return this.networkRestriction;
    }

    public Value getExtraOptions() {
        return this.extraOptions;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TileRegionApplyUpdateOptions tileRegionApplyUpdateOptions = (TileRegionApplyUpdateOptions) obj;
        return Objects.equals(this.networkRestriction, tileRegionApplyUpdateOptions.networkRestriction) && Objects.equals(this.extraOptions, tileRegionApplyUpdateOptions.extraOptions);
    }

    public int hashCode() {
        return Objects.hash(this.networkRestriction, this.extraOptions);
    }

    public static final class Builder {
        private Value extraOptions;
        private NetworkRestriction networkRestriction = NetworkRestriction.DISALLOW_EXPENSIVE;

        public Builder networkRestriction(NetworkRestriction networkRestriction) {
            this.networkRestriction = networkRestriction;
            return this;
        }

        public Builder extraOptions(Value value) {
            this.extraOptions = value;
            return this;
        }

        public TileRegionApplyUpdateOptions build() {
            if (this.networkRestriction == null) {
                throw new NullPointerException("networkRestriction shouldn't be null");
            }
            return new TileRegionApplyUpdateOptions(this.networkRestriction, this.extraOptions);
        }
    }

    public Builder toBuilder() {
        return new Builder().networkRestriction(this.networkRestriction).extraOptions(this.extraOptions);
    }

    public String toString() {
        return "[networkRestriction: " + RecordUtils.fieldToString(this.networkRestriction) + ", extraOptions: " + RecordUtils.fieldToString(this.extraOptions) + "]";
    }

    static {
        BaseMapboxInitializer.init(MapboxSDKCommonInitializerImpl.class);
    }
}
