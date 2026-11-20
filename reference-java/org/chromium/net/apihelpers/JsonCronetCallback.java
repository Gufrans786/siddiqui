package org.chromium.net.apihelpers;

import org.chromium.net.UrlResponseInfo;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class JsonCronetCallback extends InMemoryTransformCronetCallback<JSONObject> {
    private static final StringCronetCallback STRING_CALLBACK = new StringCronetCallback() {
        @Override
        protected boolean shouldFollowRedirect(UrlResponseInfo urlResponseInfo, String str) {
            throw new UnsupportedOperationException();
        }
    };

    @Override
    public JsonCronetCallback addCompletionListener(CronetRequestCompletionListener<? super JSONObject> cronetRequestCompletionListener) {
        super.addCompletionListener((CronetRequestCompletionListener) cronetRequestCompletionListener);
        return this;
    }

    @Override
    public JSONObject transformBodyBytes(UrlResponseInfo urlResponseInfo, byte[] bArr) {
        try {
            return new JSONObject(STRING_CALLBACK.transformBodyBytes(urlResponseInfo, bArr));
        } catch (JSONException e) {
            throw new IllegalArgumentException("Cannot parse the string as JSON!", e);
        }
    }
}
