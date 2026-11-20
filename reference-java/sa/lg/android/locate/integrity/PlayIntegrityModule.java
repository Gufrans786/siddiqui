package sa.lg.android.locate.integrity;

import android.util.Base64;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.StandardIntegrityException;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u001c\u001a\u00020\u0014H\u0016J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0007J \u0010!\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0007J\u001f\u0010#\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 H\u0002¢\u0006\u0002\u0010$J\u0010\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\tH\u0002Js\u0010'\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102S\u0010)\u001aO\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0018\u00010\u0019j\u0004\u0018\u0001`\u001b¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00110\u0013H\u0002J\u0081\u0001\u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\r2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110,2S\u0010)\u001aO\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0018\u00010\u0019j\u0004\u0018\u0001`\u001b¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00110\u0013H\u0002J\u0010\u0010-\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u0014H\u0002J\u0014\u0010.\u001a\u00020\r2\n\u0010\u001a\u001a\u00060\u0019j\u0002`\u001bH\u0002J\u0014\u0010/\u001a\u00020\u00142\n\u0010\u001a\u001a\u00060\u0019j\u0002`\u001bH\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000Ra\u0010\u0012\u001aU\u0012Q\u0012O\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u001b\u0012\u0019\u0018\u00010\u0019j\u0004\u0018\u0001`\u001b¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00110\u00130\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lsa/lg/android/locate/integrity/PlayIntegrityModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "tokenProvider", "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;", "cloudProjectNumber", "", "prepareLock", "", "prepareInFlight", "", "pendingPrepareSuccess", "", "Lkotlin/Function0;", "", "pendingPrepareFailure", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "code", "message", "Ljava/lang/Exception;", "error", "Lkotlin/Exception;", "getName", "prepare", "cloudProjectNumberStr", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "requestToken", "rawRequestData", "parseProjectNumber", "(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)Ljava/lang/Long;", "resetProviderIfProjectChanged", "projectNumber", "prepareInternal", "onSuccess", "onFailure", "requestTokenInternal", "allowProviderRetry", "Lkotlin/Function1;", "hashRequest", "isProviderInvalid", "integrityErrorCode", "LGo-v4.1.0(68)-(231026_2115)_productionRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlayIntegrityModule extends ReactContextBaseJavaModule {
    private volatile long cloudProjectNumber;
    private final List<Function3<String, String, Exception, Unit>> pendingPrepareFailure;
    private final List<Function0<Unit>> pendingPrepareSuccess;
    private volatile boolean prepareInFlight;
    private final Object prepareLock;
    private volatile StandardIntegrityManager.StandardIntegrityTokenProvider tokenProvider;

    public PlayIntegrityModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.prepareLock = new Object();
        this.pendingPrepareSuccess = new ArrayList();
        this.pendingPrepareFailure = new ArrayList();
    }

    @Override
    public String getName() {
        return "PlayIntegrityModule";
    }

    @ReactMethod
    public final void prepare(String cloudProjectNumberStr, final Promise promise) {
        Intrinsics.checkNotNullParameter(cloudProjectNumberStr, "cloudProjectNumberStr");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Long projectNumber = parseProjectNumber(cloudProjectNumberStr, promise);
        if (projectNumber != null) {
            long jLongValue = projectNumber.longValue();
            resetProviderIfProjectChanged(jLongValue);
            prepareInternal(jLongValue, new Function0() {
                @Override
                public final Object invoke() {
                    return PlayIntegrityModule.prepare$lambda$0(promise);
                }
            }, new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PlayIntegrityModule.prepare$lambda$1(promise, (String) obj, (String) obj2, (Exception) obj3);
                }
            });
        }
    }

    public static final Unit prepare$lambda$0(Promise promise) {
        promise.resolve(null);
        return Unit.INSTANCE;
    }

    public static final Unit prepare$lambda$1(Promise promise, String code, String message, Exception exc) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        promise.reject(code, message, exc);
        return Unit.INSTANCE;
    }

    @ReactMethod
    public final void requestToken(String cloudProjectNumberStr, String rawRequestData, final Promise promise) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(cloudProjectNumberStr, "cloudProjectNumberStr");
        Intrinsics.checkNotNullParameter(rawRequestData, "rawRequestData");
        Intrinsics.checkNotNullParameter(promise, "promise");
        Long projectNumber = parseProjectNumber(cloudProjectNumberStr, promise);
        if (projectNumber != null) {
            resetProviderIfProjectChanged(projectNumber.longValue());
            requestTokenInternal(rawRequestData, true, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PlayIntegrityModule.requestToken$lambda$2(promise, (String) obj);
                }
            }, new Function3() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PlayIntegrityModule.requestToken$lambda$3(promise, (String) obj, (String) obj2, (Exception) obj3);
                }
            });
        }
    }

    public static final Unit requestToken$lambda$2(Promise promise, String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        promise.resolve(token);
        return Unit.INSTANCE;
    }

    public static final Unit requestToken$lambda$3(Promise promise, String code, String message, Exception exc) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(message, "message");
        promise.reject(code, message, exc);
        return Unit.INSTANCE;
    }

    private final Long parseProjectNumber(String cloudProjectNumberStr, Promise promise) {
        Long longOrNull = StringsKt.toLongOrNull(cloudProjectNumberStr);
        if (longOrNull != null) {
            return longOrNull;
        }
        promise.reject("INVALID_PROJECT_NUMBER", "Invalid cloud project number");
        return null;
    }

    private final void resetProviderIfProjectChanged(long projectNumber) {
        synchronized (this.prepareLock) {
            if (this.cloudProjectNumber != projectNumber) {
                this.cloudProjectNumber = projectNumber;
                this.tokenProvider = null;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void prepareInternal(final long projectNumber, Function0<Unit> onSuccess, Function3<? super String, ? super String, ? super Exception, Unit> onFailure) {
        synchronized (this.prepareLock) {
            if (this.tokenProvider != null && this.cloudProjectNumber == projectNumber) {
                onSuccess.invoke();
                return;
            }
            this.pendingPrepareSuccess.add(onSuccess);
            this.pendingPrepareFailure.add(onFailure);
            if (this.prepareInFlight) {
                return;
            }
            this.prepareInFlight = true;
            Unit unit = Unit.INSTANCE;
            StandardIntegrityManager standardIntegrityManagerCreateStandard = IntegrityManagerFactory.createStandard(getReactApplicationContext().getApplicationContext());
            Intrinsics.checkNotNullExpressionValue(standardIntegrityManagerCreateStandard, "createStandard(...)");
            Task<StandardIntegrityManager.StandardIntegrityTokenProvider> taskPrepareIntegrityToken = standardIntegrityManagerCreateStandard.prepareIntegrityToken(StandardIntegrityManager.PrepareIntegrityTokenRequest.builder().setCloudProjectNumber(projectNumber).build());
            final Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return PlayIntegrityModule.prepareInternal$lambda$8(this.f$0, projectNumber, (StandardIntegrityManager.StandardIntegrityTokenProvider) obj);
                }
            };
            taskPrepareIntegrityToken.addOnSuccessListener(new OnSuccessListener() {
                @Override
                public final void onSuccess(Object obj) {
                    function1.invoke(obj);
                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public final void onFailure(Exception exc) {
                    PlayIntegrityModule.prepareInternal$lambda$12(this.f$0, exc);
                }
            });
        }
    }

    public static final Unit prepareInternal$lambda$8(PlayIntegrityModule playIntegrityModule, long j, StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider) {
        List list;
        synchronized (playIntegrityModule.prepareLock) {
            playIntegrityModule.cloudProjectNumber = j;
            playIntegrityModule.tokenProvider = standardIntegrityTokenProvider;
            playIntegrityModule.prepareInFlight = false;
            list = CollectionsKt.toList(playIntegrityModule.pendingPrepareSuccess);
            playIntegrityModule.pendingPrepareSuccess.clear();
            playIntegrityModule.pendingPrepareFailure.clear();
            Unit unit = Unit.INSTANCE;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Function0) it.next()).invoke();
        }
        return Unit.INSTANCE;
    }

    public static final void prepareInternal$lambda$12(PlayIntegrityModule playIntegrityModule, Exception error) {
        String strIntegrityErrorCode;
        List list;
        Intrinsics.checkNotNullParameter(error, "error");
        if (error != null) {
            strIntegrityErrorCode = playIntegrityModule.integrityErrorCode(error);
        } else {
            strIntegrityErrorCode = "INTEGRITY_UNKNOWN";
        }
        String message = error.getMessage();
        if (message == null) {
            message = "prepareIntegrityToken failed";
        }
        synchronized (playIntegrityModule.prepareLock) {
            playIntegrityModule.prepareInFlight = false;
            list = CollectionsKt.toList(playIntegrityModule.pendingPrepareFailure);
            playIntegrityModule.pendingPrepareSuccess.clear();
            playIntegrityModule.pendingPrepareFailure.clear();
            Unit unit = Unit.INSTANCE;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Function3) it.next()).invoke(strIntegrityErrorCode, message, error);
        }
    }

    private final void requestTokenInternal(final String rawRequestData, final boolean allowProviderRetry, final Function1<? super String, Unit> onSuccess, final Function3<? super String, ? super String, ? super Exception, Unit> onFailure) throws NoSuchAlgorithmException {
        StandardIntegrityManager.StandardIntegrityTokenProvider standardIntegrityTokenProvider = this.tokenProvider;
        if (standardIntegrityTokenProvider == null) {
            prepareInternal(this.cloudProjectNumber, new Function0() {
                @Override
                public final Object invoke() {
                    return PlayIntegrityModule.requestTokenInternal$lambda$13(this.f$0, rawRequestData, allowProviderRetry, onSuccess, onFailure);
                }
            }, onFailure);
            return;
        }
        Task<StandardIntegrityManager.StandardIntegrityToken> taskRequest = standardIntegrityTokenProvider.request(StandardIntegrityManager.StandardIntegrityTokenRequest.builder().setRequestHash(hashRequest(rawRequestData)).build());
        final Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return PlayIntegrityModule.requestTokenInternal$lambda$14(onSuccess, (StandardIntegrityManager.StandardIntegrityToken) obj);
            }
        };
        taskRequest.addOnSuccessListener(new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                PlayIntegrityModule.requestTokenInternal$lambda$18(allowProviderRetry, this, onFailure, rawRequestData, onSuccess, exc);
            }
        });
    }

    public static final Unit requestTokenInternal$lambda$13(PlayIntegrityModule playIntegrityModule, String str, boolean z, Function1 function1, Function3 function3) throws NoSuchAlgorithmException {
        playIntegrityModule.requestTokenInternal(str, z, function1, function3);
        return Unit.INSTANCE;
    }

    public static final Unit requestTokenInternal$lambda$14(Function1 function1, StandardIntegrityManager.StandardIntegrityToken standardIntegrityToken) {
        String str = standardIntegrityToken.token();
        Intrinsics.checkNotNullExpressionValue(str, "token(...)");
        function1.invoke(str);
        return Unit.INSTANCE;
    }

    public static final void requestTokenInternal$lambda$18(boolean z, final PlayIntegrityModule playIntegrityModule, final Function3 function3, final String str, final Function1 function1, Exception error) {
        String strIntegrityErrorCode;
        Intrinsics.checkNotNullParameter(error, "error");
        if (z && error != null && playIntegrityModule.isProviderInvalid(error)) {
            synchronized (playIntegrityModule.prepareLock) {
                playIntegrityModule.tokenProvider = null;
                Unit unit = Unit.INSTANCE;
            }
            playIntegrityModule.prepareInternal(playIntegrityModule.cloudProjectNumber, new Function0() {
                @Override
                public final Object invoke() {
                    return PlayIntegrityModule.requestTokenInternal$lambda$18$lambda$17(this.f$0, str, function1, function3);
                }
            }, function3);
            return;
        }
        if (error != null) {
            strIntegrityErrorCode = playIntegrityModule.integrityErrorCode(error);
        } else {
            strIntegrityErrorCode = "INTEGRITY_UNKNOWN";
        }
        String message = error.getMessage();
        if (message == null) {
            message = "requestToken failed";
        }
        function3.invoke(strIntegrityErrorCode, message, error);
    }

    public static final Unit requestTokenInternal$lambda$18$lambda$17(PlayIntegrityModule playIntegrityModule, String str, Function1 function1, Function3 function3) throws NoSuchAlgorithmException {
        playIntegrityModule.requestTokenInternal(str, false, function1, function3);
        return Unit.INSTANCE;
    }

    private final String hashRequest(String rawRequestData) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        byte[] bytes = rawRequestData.getBytes(UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strEncodeToString = Base64.encodeToString(messageDigest.digest(bytes), 11);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    private final boolean isProviderInvalid(Exception error) {
        return (error instanceof StandardIntegrityException) && ((StandardIntegrityException) error).getErrorCode() == -19;
    }

    private final String integrityErrorCode(Exception error) {
        if (!(error instanceof StandardIntegrityException)) {
            return "INTEGRITY_UNKNOWN";
        }
        StandardIntegrityException standardIntegrityException = (StandardIntegrityException) error;
        int errorCode = standardIntegrityException.getErrorCode();
        if (errorCode == -100) {
            return "INTEGRITY_INTERNAL_ERROR";
        }
        if (errorCode == -12) {
            return "INTEGRITY_GOOGLE_SERVER_UNAVAILABLE";
        }
        if (errorCode == -8) {
            return "INTEGRITY_TOO_MANY_REQUESTS";
        }
        if (errorCode == -19) {
            return "INTEGRITY_PROVIDER_INVALID";
        }
        if (errorCode == -18) {
            return "INTEGRITY_CLIENT_TRANSIENT_ERROR";
        }
        if (errorCode == -6) {
            return "INTEGRITY_PLAY_SERVICES_NOT_FOUND";
        }
        if (errorCode == -5) {
            return "INTEGRITY_APP_NOT_INSTALLED";
        }
        if (errorCode == -3) {
            return "INTEGRITY_NETWORK_ERROR";
        }
        if (errorCode == -2) {
            return "INTEGRITY_PLAY_STORE_NOT_FOUND";
        }
        if (errorCode == -1) {
            return "INTEGRITY_API_NOT_AVAILABLE";
        }
        return "INTEGRITY_" + standardIntegrityException.getErrorCode();
    }
}
