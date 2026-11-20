package com.rnmapbox.rnmbx.components.styles.sources;

import android.content.Context;
import ch.qos.logback.core.CoreConstants;
import com.rnmapbox.rnmbx.components.AbstractMapFeature;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/rnmapbox/rnmbx/components/styles/sources/AbstractSourceConsumer;", "Lcom/rnmapbox/rnmbx/components/AbstractMapFeature;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "iD", "", "getID", "()Ljava/lang/String;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractSourceConsumer extends AbstractMapFeature {
    public abstract String getID();

    public AbstractSourceConsumer(Context context) {
        super(context);
    }
}
