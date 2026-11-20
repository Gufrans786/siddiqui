package com.payfort.fortpaymentsdk.data.repository.datasource;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.exceptions.FortException;
import com.payfort.fortpaymentsdk.security.DataSecurityService;
import com.payfort.fortpaymentsdk.security.aes.AESCipherManager;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.security.cert.Certificate;
import java.security.interfaces.RSAPublicKey;
import java.util.HashMap;
import java.util.List;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Handshake;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Response;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J$\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J*\u0010\u0016\u001a\n \u0017*\u0004\u0018\u00010\f0\f2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl;", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSource;", "fortEndpoint", "Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;", "(Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortEndpoint;)V", "complete3ds", "Lio/reactivex/Observable;", "Lcom/google/gson/JsonObject;", "sdkToken", "", "responseToken", "generateOtp", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "request", "Lcom/payfort/fortpaymentsdk/domain/model/SdkRequest;", "getCustomerAccount", "getEncryptedData", "publicKey", "Ljava/security/interfaces/RSAPublicKey;", "body", "secretKeySpec", "Ljavax/crypto/spec/SecretKeySpec;", "handleResponse", "kotlin.jvm.PlatformType", "it", "logData", "pay", "stcPurchase", "validate", "validateCardNumber", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortDataSourceImpl implements FortDataSource {

    public static final Companion INSTANCE = new Companion(null);
    private static final AESCipherManager aesCipherManager = new AESCipherManager();
    private static final Gson gson = new Gson();
    private static RSAPublicKey rsaPublicKey;
    private final FortEndpoint fortEndpoint;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/payfort/fortpaymentsdk/data/repository/datasource/FortDataSourceImpl$Companion;", "", "()V", "aesCipherManager", "Lcom/payfort/fortpaymentsdk/security/aes/AESCipherManager;", "gson", "Lcom/google/gson/Gson;", "rsaPublicKey", "Ljava/security/interfaces/RSAPublicKey;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public FortDataSourceImpl(FortEndpoint fortEndpoint) {
        Intrinsics.checkNotNullParameter(fortEndpoint, "fortEndpoint");
        this.fortEndpoint = fortEndpoint;
    }

    @Override
    public Observable<SdkResponse> validate(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
        final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
            {
                super(1);
            }

            @Override
            public final ObservableSource<? extends String> invoke(Response<String> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Handshake handshake = it.raw().handshake();
                List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                Companion companion = FortDataSourceImpl.INSTANCE;
                FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                return FortDataSourceImpl.this.fortEndpoint.validateData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
            }
        };
        Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.validate$lambda$0(function1, obj);
            }
        });
        final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return FortDataSourceImpl.this.handleResponse(it, request, secretKeySpecGenerateAESKey);
            }
        };
        Observable<SdkResponse> map = observableFlatMap.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.validate$lambda$1(function2, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "override fun validate(re…eySpec)\n        }\n\n\n    }");
        return map;
    }

    public static final ObservableSource validate$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse validate$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<String> validateCardNumber(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.validateData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.validateCardNumber$lambda$2(function1, obj);
                }
            });
            final Function1<String, String> function2 = new Function1<String, String>() {
                {
                    super(1);
                }

                @Override
                public final String invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey);
                }
            };
            Observable<String> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.validateCardNumber$lambda$3(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun validateCar…ptMsg\n            }\n    }");
            return map;
        }
        Observable<String> observableValidateData = this.fortEndpoint.validateData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, String> function3 = new Function1<String, String>() {
            {
                super(1);
            }

            @Override
            public final String invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey);
            }
        };
        Observable map2 = observableValidateData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.validateCardNumber$lambda$4(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "secretKeySpec = aesCiphe… decryptMsg\n            }");
        return map2;
    }

    public static final ObservableSource validateCardNumber$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final String validateCardNumber$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    public static final String validateCardNumber$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    @Override
    public Observable<SdkResponse> pay(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.processData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.pay$lambda$5(function1, obj);
                }
            });
            final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
                {
                    super(1);
                }

                @Override
                public final SdkResponse invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
                }
            };
            Observable<SdkResponse> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.pay$lambda$6(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun pay(request…tMap)\n            }\n    }");
            return map;
        }
        Observable<String> observableProcessData = this.fortEndpoint.processData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, SdkResponse> function3 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
            }
        };
        Observable map2 = observableProcessData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.pay$lambda$7(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "request: SdkRequest): Ob…requestMap)\n            }");
        return map2;
    }

    public static final ObservableSource pay$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse pay$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public static final SdkResponse pay$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<SdkResponse> logData(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.logData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.logData$lambda$8(function1, obj);
                }
            });
            final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
                {
                    super(1);
                }

                @Override
                public final SdkResponse invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
                }
            };
            Observable<SdkResponse> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.logData$lambda$9(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun logData(req…pec)\n\n            }\n    }");
            return map;
        }
        Observable<String> observableLogData = this.fortEndpoint.logData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, SdkResponse> function3 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return FortDataSourceImpl.this.handleResponse(it, request, secretKeySpecGenerateAESKey);
            }
        };
        Observable map2 = observableLogData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.logData$lambda$10(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "override fun logData(req…pec)\n\n            }\n    }");
        return map2;
    }

    public static final ObservableSource logData$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse logData$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public static final SdkResponse logData$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<JsonObject> complete3ds(String sdkToken, String responseToken) {
        Intrinsics.checkNotNullParameter(sdkToken, "sdkToken");
        Intrinsics.checkNotNullParameter(responseToken, "responseToken");
        HashMap<String, String> map = new HashMap<>();
        map.put(Constants.FORT_PARAMS.SDK_TOKEN, sdkToken);
        map.put("response_token", responseToken);
        return this.fortEndpoint.complete3dsFlow(map);
    }

    @Override
    public Observable<SdkResponse> generateOtp(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.processData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.generateOtp$lambda$11(function1, obj);
                }
            });
            final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
                {
                    super(1);
                }

                @Override
                public final SdkResponse invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return FortDataSourceImpl.this.handleResponse(it, request, secretKeySpecGenerateAESKey);
                }
            };
            Observable<SdkResponse> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.generateOtp$lambda$12(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun generateOtp…Spec)\n            }\n    }");
            return map;
        }
        Observable<String> observableProcessData = this.fortEndpoint.processData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, SdkResponse> function3 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return FortDataSourceImpl.this.handleResponse(it, request, secretKeySpecGenerateAESKey);
            }
        };
        Observable map2 = observableProcessData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.generateOtp$lambda$13(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "override fun generateOtp…Spec)\n            }\n    }");
        return map2;
    }

    public static final ObservableSource generateOtp$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse generateOtp$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public static final SdkResponse generateOtp$lambda$13(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<SdkResponse> stcPurchase(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.processData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.stcPurchase$lambda$14(function1, obj);
                }
            });
            final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
                {
                    super(1);
                }

                @Override
                public final SdkResponse invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
                }
            };
            Observable<SdkResponse> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.stcPurchase$lambda$15(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun stcPurchase…tMap)\n            }\n    }");
            return map;
        }
        Observable<String> observableProcessData = this.fortEndpoint.processData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, SdkResponse> function3 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
            }
        };
        Observable map2 = observableProcessData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.stcPurchase$lambda$16(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "request: SdkRequest): Ob…requestMap)\n            }");
        return map2;
    }

    public static final ObservableSource stcPurchase$lambda$14(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse stcPurchase$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public static final SdkResponse stcPurchase$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    @Override
    public Observable<SdkResponse> getCustomerAccount(final SdkRequest request) throws FortException {
        Intrinsics.checkNotNullParameter(request, "request");
        final SecretKeySpec secretKeySpecGenerateAESKey = aesCipherManager.generateAESKey();
        RSAPublicKey rSAPublicKey = rsaPublicKey;
        if (rSAPublicKey == null) {
            Observable<Response<String>> sslCertificate = this.fortEndpoint.getSslCertificate();
            final Function1<Response<String>, ObservableSource<? extends String>> function1 = new Function1<Response<String>, ObservableSource<? extends String>>() {
                {
                    super(1);
                }

                @Override
                public final ObservableSource<? extends String> invoke(Response<String> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Handshake handshake = it.raw().handshake();
                    List<Certificate> listPeerCertificates = handshake != null ? handshake.peerCertificates() : null;
                    Companion companion = FortDataSourceImpl.INSTANCE;
                    FortDataSourceImpl.rsaPublicKey = DataSecurityService.getPublicKey(listPeerCertificates);
                    return FortDataSourceImpl.this.fortEndpoint.processData(FortDataSourceImpl.this.getEncryptedData(FortDataSourceImpl.rsaPublicKey, request, secretKeySpecGenerateAESKey));
                }
            };
            Observable<R> observableFlatMap = sslCertificate.flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.getCustomerAccount$lambda$17(function1, obj);
                }
            });
            final Function1<String, SdkResponse> function2 = new Function1<String, SdkResponse>() {
                {
                    super(1);
                }

                @Override
                public final SdkResponse invoke(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
                }
            };
            Observable<SdkResponse> map = observableFlatMap.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return FortDataSourceImpl.getCustomerAccount$lambda$18(function2, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(map, "override fun getCustomer…tMap)\n            }\n    }");
            return map;
        }
        Observable<String> observableProcessData = this.fortEndpoint.processData(getEncryptedData(rSAPublicKey, request, secretKeySpecGenerateAESKey));
        final Function1<String, SdkResponse> function3 = new Function1<String, SdkResponse>() {
            {
                super(1);
            }

            @Override
            public final SdkResponse invoke(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return MapUtils.collectResponse(FortDataSourceImpl.gson, FortDataSourceImpl.aesCipherManager.decryptMsg(it, secretKeySpecGenerateAESKey), request.getRequestMap());
            }
        };
        Observable map2 = observableProcessData.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return FortDataSourceImpl.getCustomerAccount$lambda$19(function3, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map2, "request: SdkRequest): Ob…requestMap)\n            }");
        return map2;
    }

    public static final ObservableSource getCustomerAccount$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public static final SdkResponse getCustomerAccount$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public static final SdkResponse getCustomerAccount$lambda$19(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (SdkResponse) tmp0.invoke(obj);
    }

    public final String getEncryptedData(RSAPublicKey publicKey, SdkRequest body, SecretKeySpec secretKeySpec) throws FortException {
        String strEncryptRequestData = DataSecurityService.encryptRequestData(gson.toJson(body, SdkRequest.class), publicKey, secretKeySpec);
        Intrinsics.checkNotNullExpressionValue(strEncryptRequestData, "encryptRequestData(\n    …  secretKeySpec\n        )");
        return strEncryptRequestData;
    }

    public final SdkResponse handleResponse(String it, SdkRequest request, SecretKeySpec secretKeySpec) {
        try {
            new JSONObject(it);
            return MapUtils.getTechnicalProblemResponse(null, request.getRequestMap());
        } catch (JSONException unused) {
            return MapUtils.collectResponse(gson, aesCipherManager.decryptMsg(it, secretKeySpec), request.getRequestMap());
        }
    }
}
