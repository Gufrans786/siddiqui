package com.rnmapbox.rnmbx.components.mapview;

import com.facebook.react.bridge.WritableMap;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lcom/rnmapbox/rnmbx/components/mapview/CommandResponse;", "", FirebaseAnalytics.Param.SUCCESS, "", "builder", "Lkotlin/Function1;", "Lcom/facebook/react/bridge/WritableMap;", "error", "message", "", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CommandResponse {
    void error(String message);

    void success(Function1<? super WritableMap, Unit> builder);
}
