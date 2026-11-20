package com.rnmapbox.rnmbx.shapeAnimators;

import com.nimbusds.jose.HeaderParameterNames;
import com.rnmapbox.rnmbx.utils.Logger;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\b2\n\u0010\u0012\u001a\u00060\u0006j\u0002`\u0007R2\u0010\u0004\u001a&\u0012\b\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\b0\u0005j\u0012\u0012\b\u0012\u00060\u0006j\u0002`\u0007\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimatorManager;", "", "<init>", "()V", "animators", "Ljava/util/HashMap;", "", "Lcom/rnmapbox/rnmbx/shapeAnimators/Tag;", "Lcom/rnmapbox/rnmbx/shapeAnimators/ShapeAnimator;", "Lkotlin/collections/HashMap;", "add", "", "animator", "isShapeAnimatorTag", "", "shape", "", "get", HeaderParameterNames.AUTHENTICATION_TAG, "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShapeAnimatorManager {
    private final HashMap<Long, ShapeAnimator> animators = new HashMap<>();

    public final void add(ShapeAnimator animator) {
        Intrinsics.checkNotNullParameter(animator, "animator");
        this.animators.put(Long.valueOf(animator.getTag()), animator);
    }

    public final boolean isShapeAnimatorTag(String shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return StringsKt.startsWith$default(shape, "{\"__nativeTag\":", false, 2, (Object) null);
    }

    public final ShapeAnimator get(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (isShapeAnimatorTag(tag)) {
            return get(new JSONObject(tag).getLong("__nativeTag"));
        }
        return null;
    }

    public final ShapeAnimator get(long tag) {
        ShapeAnimator shapeAnimator = this.animators.get(Long.valueOf(tag));
        if (shapeAnimator == null) {
            Logger.INSTANCE.e("RNMBXShapeAnimator", "Shape animator for tag " + tag + " was not found");
        }
        return shapeAnimator;
    }
}
