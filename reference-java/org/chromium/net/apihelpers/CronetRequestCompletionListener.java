package org.chromium.net.apihelpers;

import org.chromium.net.CronetException;
import org.chromium.net.UrlResponseInfo;

public interface CronetRequestCompletionListener<T> {
    void onCanceled(UrlResponseInfo urlResponseInfo);

    void onFailed(UrlResponseInfo urlResponseInfo, CronetException cronetException);

    void onSucceeded(UrlResponseInfo urlResponseInfo, T t);
}
