package com.mapbox.base.common.logger;

import androidx.core.app.NotificationCompat;
import com.mapbox.base.common.logger.model.Message;
import com.mapbox.base.common.logger.model.Tag;
import com.nimbusds.jose.HeaderParameterNames;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J(\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J(\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J(\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&J(\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH&¨\u0006\u000e"}, d2 = {"Lcom/mapbox/base/common/logger/Logger;", "", "d", "", HeaderParameterNames.AUTHENTICATION_TAG, "Lcom/mapbox/base/common/logger/model/Tag;", NotificationCompat.CATEGORY_MESSAGE, "Lcom/mapbox/base/common/logger/model/Message;", "tr", "", JWKParameterNames.RSA_EXPONENT, "i", "v", "w", "common-android"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface Logger {
    void d(Tag tag, Message msg, Throwable tr);

    void e(Tag tag, Message msg, Throwable tr);

    void i(Tag tag, Message msg, Throwable tr);

    void v(Tag tag, Message msg, Throwable tr);

    void w(Tag tag, Message msg, Throwable tr);

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public static final class DefaultImpls {
        public static void v$default(Logger logger, Tag tag, Message message, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: v");
            }
            if ((i & 1) != 0) {
                tag = null;
            }
            if ((i & 4) != 0) {
                th = null;
            }
            logger.v(tag, message, th);
        }

        public static void d$default(Logger logger, Tag tag, Message message, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: d");
            }
            if ((i & 1) != 0) {
                tag = null;
            }
            if ((i & 4) != 0) {
                th = null;
            }
            logger.d(tag, message, th);
        }

        public static void i$default(Logger logger, Tag tag, Message message, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: i");
            }
            if ((i & 1) != 0) {
                tag = null;
            }
            if ((i & 4) != 0) {
                th = null;
            }
            logger.i(tag, message, th);
        }

        public static void w$default(Logger logger, Tag tag, Message message, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: w");
            }
            if ((i & 1) != 0) {
                tag = null;
            }
            if ((i & 4) != 0) {
                th = null;
            }
            logger.w(tag, message, th);
        }

        public static void e$default(Logger logger, Tag tag, Message message, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
            }
            if ((i & 1) != 0) {
                tag = null;
            }
            if ((i & 4) != 0) {
                th = null;
            }
            logger.e(tag, message, th);
        }
    }
}
