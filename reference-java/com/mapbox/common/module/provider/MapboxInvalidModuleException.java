package com.mapbox.common.module.provider;

import ch.qos.logback.core.CoreConstants;
import com.caverock.androidsvg.SVGParser;
import com.mapbox.annotation.MapboxAnnotationConstants;
import com.mapbox.annotation.module.MapboxModule;
import com.mapbox.annotation.module.MapboxModuleType;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0004HÂ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mapbox/common/module/provider/MapboxInvalidModuleException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", SVGParser.XML_STYLESHEET_ATTR_TYPE, "Lcom/mapbox/annotation/module/MapboxModuleType;", "(Lcom/mapbox/annotation/module/MapboxModuleType;)V", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "common-android"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MapboxInvalidModuleException extends RuntimeException {
    private final MapboxModuleType type;

    private final MapboxModuleType getType() {
        return this.type;
    }

    public static MapboxInvalidModuleException copy$default(MapboxInvalidModuleException mapboxInvalidModuleException, MapboxModuleType mapboxModuleType, int i, Object obj) {
        if ((i & 1) != 0) {
            mapboxModuleType = mapboxInvalidModuleException.type;
        }
        return mapboxInvalidModuleException.copy(mapboxModuleType);
    }

    public final MapboxInvalidModuleException copy(MapboxModuleType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MapboxInvalidModuleException(type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MapboxInvalidModuleException) && this.type == ((MapboxInvalidModuleException) other).type;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    @Override
    public String toString() {
        return "MapboxInvalidModuleException(type=" + this.type + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public MapboxInvalidModuleException(MapboxModuleType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        StringBuilder sbAppend = new StringBuilder("\n    ").append(type.name()).append(" has been excluded from build but a correct alternative was not provided.\n    Make sure that:\n    - Your custom module implements ").append(type.getInterfacePackage()).append(CoreConstants.DOT).append(type.getInterfaceClassName()).append(".\n    - Your custom module class is annotated with @").append(MapboxModule.class.getSimpleName()).append(CoreConstants.LEFT_PARENTHESIS_CHAR).append(MapboxModuleType.class.getSimpleName()).append(CoreConstants.DOT).append(type.name()).append(").\n    - You've provided a `ModuleProvider` instance to ");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(MapboxAnnotationConstants.MODULE_CONFIGURATION_CLASS_NAME_FORMAT, Arrays.copyOf(new Object[]{type.getSimplifiedName()}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        super(StringsKt.trimIndent(sbAppend.append(str).append("#set").append(StringsKt.capitalize(MapboxAnnotationConstants.MODULE_CONFIGURATION_PROVIDER_VARIABLE_NAME)).append(" before initializing the library,\n      unless `enableConfiguration` flag is set to false and your implementation has a public, non-arg constructor or is a Kotlin object.\n  ").toString()));
        this.type = type;
    }
}
