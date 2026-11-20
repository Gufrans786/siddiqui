package com.facebook.soloader;

import javax.annotation.Nullable;

public interface ExternalSoMapping {
    void invokeJniOnload(String str);

    @Nullable
    String mapLibName(String str);
}
