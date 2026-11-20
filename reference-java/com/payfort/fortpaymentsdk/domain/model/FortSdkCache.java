package com.payfort.fortpaymentsdk.domain.model;

import com.payfort.fortpaymentsdk.constants.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0002\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/model/FortSdkCache;", "", "()V", "DEFAULT_SYSTEM_LANGUAGE", "", "getDEFAULT_SYSTEM_LANGUAGE$annotations", "getDEFAULT_SYSTEM_LANGUAGE", "()Ljava/lang/String;", "setDEFAULT_SYSTEM_LANGUAGE", "(Ljava/lang/String;)V", "REQUEST_LANGUAGE", "getREQUEST_LANGUAGE$annotations", "getREQUEST_LANGUAGE", "setREQUEST_LANGUAGE", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortSdkCache {
    public static final FortSdkCache INSTANCE = new FortSdkCache();
    private static String REQUEST_LANGUAGE = Constants.LANGUAGES.ENGLISH;
    private static String DEFAULT_SYSTEM_LANGUAGE = Constants.LANGUAGES.ENGLISH;

    @JvmStatic
    public static void getDEFAULT_SYSTEM_LANGUAGE$annotations() {
    }

    @JvmStatic
    public static void getREQUEST_LANGUAGE$annotations() {
    }

    private FortSdkCache() {
    }

    public static final String getREQUEST_LANGUAGE() {
        return REQUEST_LANGUAGE;
    }

    public static final void setREQUEST_LANGUAGE(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        REQUEST_LANGUAGE = str;
    }

    public static final String getDEFAULT_SYSTEM_LANGUAGE() {
        return DEFAULT_SYSTEM_LANGUAGE;
    }

    public static final void setDEFAULT_SYSTEM_LANGUAGE(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        DEFAULT_SYSTEM_LANGUAGE = str;
    }
}
