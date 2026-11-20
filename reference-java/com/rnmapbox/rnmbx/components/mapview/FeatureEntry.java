package com.rnmapbox.rnmbx.components.mapview;

import android.view.View;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J+\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/FeatureEntry;", "", "feature", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "view", "Landroid/view/View;", "addedToMap", "", "<init>", "(Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;Landroid/view/View;Z)V", "getFeature", "()Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", "getView", "()Landroid/view/View;", "getAddedToMap", "()Z", "setAddedToMap", "(Z)V", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FeatureEntry {
    private boolean addedToMap;
    private final AbstractMapFeature feature;
    private final View view;

    public static FeatureEntry copy$default(FeatureEntry featureEntry, AbstractMapFeature abstractMapFeature, View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            abstractMapFeature = featureEntry.feature;
        }
        if ((i & 2) != 0) {
            view = featureEntry.view;
        }
        if ((i & 4) != 0) {
            z = featureEntry.addedToMap;
        }
        return featureEntry.copy(abstractMapFeature, view, z);
    }

    public final AbstractMapFeature getFeature() {
        return this.feature;
    }

    public final View getView() {
        return this.view;
    }

    public final boolean getAddedToMap() {
        return this.addedToMap;
    }

    public final FeatureEntry copy(AbstractMapFeature feature, View view, boolean addedToMap) {
        return new FeatureEntry(feature, view, addedToMap);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FeatureEntry)) {
            return false;
        }
        FeatureEntry featureEntry = (FeatureEntry) other;
        return Intrinsics.areEqual(this.feature, featureEntry.feature) && Intrinsics.areEqual(this.view, featureEntry.view) && this.addedToMap == featureEntry.addedToMap;
    }

    public int hashCode() {
        AbstractMapFeature abstractMapFeature = this.feature;
        int iHashCode = (abstractMapFeature == null ? 0 : abstractMapFeature.hashCode()) * 31;
        View view = this.view;
        return ((iHashCode + (view != null ? view.hashCode() : 0)) * 31) + Boolean.hashCode(this.addedToMap);
    }

    public String toString() {
        return "FeatureEntry(feature=" + this.feature + ", view=" + this.view + ", addedToMap=" + this.addedToMap + ")";
    }

    public FeatureEntry(AbstractMapFeature abstractMapFeature, View view, boolean z) {
        this.feature = abstractMapFeature;
        this.view = view;
        this.addedToMap = z;
    }

    public FeatureEntry(AbstractMapFeature abstractMapFeature, View view, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractMapFeature, view, (i & 4) != 0 ? false : z);
    }

    public final boolean getAddedToMap() {
        return this.addedToMap;
    }

    public final AbstractMapFeature getFeature() {
        return this.feature;
    }

    public final View getView() {
        return this.view;
    }

    public final void setAddedToMap(boolean z) {
        this.addedToMap = z;
    }
}
