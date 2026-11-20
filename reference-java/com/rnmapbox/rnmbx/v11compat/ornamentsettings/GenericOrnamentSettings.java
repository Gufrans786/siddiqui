package com.rnmapbox.rnmbx.v11compat.ornamentsettings;

import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0002\u0010\u0007J!\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u0005H&¢\u0006\u0002\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0012X¦\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/ornamentsettings/GenericOrnamentSettings;", "", "setHMargins", "", ViewProps.LEFT, "", ViewProps.RIGHT, "(Ljava/lang/Float;Ljava/lang/Float;)V", "setVMargins", ViewProps.TOP, ViewProps.BOTTOM, ViewProps.ENABLED, "", "getEnabled", "()Z", "setEnabled", "(Z)V", "position", "", "getPosition", "()I", "setPosition", "(I)V", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GenericOrnamentSettings {
    boolean getEnabled();

    int getPosition();

    void setEnabled(boolean z);

    void setHMargins(Float left, Float right);

    void setPosition(int i);

    void setVMargins(Float top, Float bottom);
}
