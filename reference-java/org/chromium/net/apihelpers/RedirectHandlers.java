package org.chromium.net.apihelpers;

import org.chromium.net.UrlResponseInfo;

public class RedirectHandlers {
    static boolean lambda$alwaysFollow$1(UrlResponseInfo urlResponseInfo, String str) throws Exception {
        return true;
    }

    static boolean lambda$neverFollow$0(UrlResponseInfo urlResponseInfo, String str) throws Exception {
        return false;
    }

    public static RedirectHandler neverFollow() {
        return new RedirectHandler() {
            @Override
            public final boolean shouldFollowRedirect(UrlResponseInfo urlResponseInfo, String str) {
                return RedirectHandlers.lambda$neverFollow$0(urlResponseInfo, str);
            }
        };
    }

    public static RedirectHandler alwaysFollow() {
        return new RedirectHandler() {
            @Override
            public final boolean shouldFollowRedirect(UrlResponseInfo urlResponseInfo, String str) {
                return RedirectHandlers.lambda$alwaysFollow$1(urlResponseInfo, str);
            }
        };
    }

    private RedirectHandlers() {
    }
}
