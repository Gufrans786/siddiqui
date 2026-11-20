package com.payfort.fortpaymentsdk.domain.usecase;

import androidx.exifinterface.media.ExifInterface;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bf\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003J\u0015\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;", ExifInterface.GPS_DIRECTION_TRUE, "Result", "", "execute", JWKParameterNames.RSA_OTHER_PRIMES__FACTOR_CRT_COEFFICIENT, "(Ljava/lang/Object;)Ljava/lang/Object;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface UseCase<T, Result> {
    Result execute(T t);
}
