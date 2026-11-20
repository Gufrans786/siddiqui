package com.rnmapbox.rnmbx.v11compat.location;

import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\bj\u0002`\tH&¨\u0006\n"}, d2 = {"Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;", "", "onSuccess", "", "locationEngineResult", "Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineResult;", "onFailure", JWKParameterNames.RSA_EXPONENT, "Ljava/lang/Exception;", "Lkotlin/Exception;", "rnmapbox_maps_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface LocationEngineCallback {
    void onFailure(Exception e);

    void onSuccess(LocationEngineResult locationEngineResult);
}
