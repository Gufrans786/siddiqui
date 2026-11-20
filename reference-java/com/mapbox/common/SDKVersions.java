package com.mapbox.common;

import android.content.res.AssetManager;
import ch.qos.logback.core.CoreConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/mapbox/common/SDKVersions;", "", "()V", "Companion", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SDKVersions {

    public static final Companion INSTANCE = new Companion(null);
    private static final String MAPBOX_IDENTIFIER = "mapbox";
    private static final String SDK_VERSIONS_FOLDER = "sdk_versions";

    @JvmStatic
    public static final List<String> getList() {
        return INSTANCE.getList();
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/mapbox/common/SDKVersions$Companion;", "", "()V", "MAPBOX_IDENTIFIER", "", "SDK_VERSIONS_FOLDER", "getList", "", "common_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final List<String> getList() throws IOException {
            ArrayList arrayList = new ArrayList();
            AssetManager assets = MapboxSDKCommon.INSTANCE.getContext().getAssets();
            String[] list = assets.list(SDKVersions.SDK_VERSIONS_FOLDER);
            if (list != null) {
                for (String filename : list) {
                    Intrinsics.checkNotNullExpressionValue(filename, "filename");
                    if (StringsKt.contains((CharSequence) filename, (CharSequence) SDKVersions.MAPBOX_IDENTIFIER, true)) {
                        InputStream inputStreamOpen = assets.open(SDKVersions.SDK_VERSIONS_FOLDER + File.separator + filename);
                        Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "assets.open(SDK_VERSIONS…ile.separator + filename)");
                        Reader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.UTF_8);
                        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                        try {
                            arrayList.add(bufferedReader.readLine() + " (" + filename + CoreConstants.RIGHT_PARENTHESIS_CHAR);
                            CloseableKt.closeFinally(bufferedReader, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(bufferedReader, th);
                                throw th2;
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
    }
}
