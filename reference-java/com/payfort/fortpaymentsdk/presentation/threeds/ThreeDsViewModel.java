package com.payfort.fortpaymentsdk.presentation.threeds;

import android.net.Uri;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.google.android.gms.common.internal.ImagesContract;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.ThreeDsRequest;
import com.payfort.fortpaymentsdk.domain.usecase.UseCase;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u001f\u0012\u0018\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0014J\u000e\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0014J\u000e\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\"R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u000e8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0010R \u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;", "Landroidx/lifecycle/ViewModel;", "useCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;", "Lcom/payfort/fortpaymentsdk/domain/model/ThreeDsRequest;", "Lio/reactivex/Observable;", "Lcom/payfort/fortpaymentsdk/domain/model/Result;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/UseCase;)V", "_errorHappened", "Landroidx/lifecycle/MutableLiveData;", "", "_result", "_showWebView", "errorHappened", "Landroidx/lifecycle/LiveData;", "getErrorHappened", "()Landroidx/lifecycle/LiveData;", "result", "getResult", "sdkToken", "", "getSdkToken", "()Ljava/lang/String;", "setSdkToken", "(Ljava/lang/String;)V", "showWebView", "getShowWebView", "callCompleteSdkFlow", "threeDsRequest", "checkResponseIfExist", ImagesContract.URL, "checkUrlNotContainsThreeDs", "validateErrorCode", "errorCode", "", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ThreeDsViewModel extends ViewModel {
    private static final String RESPONSE_TOKEN = "response_token";
    private MutableLiveData<Unit> _errorHappened;
    private MutableLiveData<Result> _result;
    private MutableLiveData<Unit> _showWebView;
    private String sdkToken;
    private final UseCase<ThreeDsRequest, Observable<Result>> useCase;

    public ThreeDsViewModel(UseCase<ThreeDsRequest, Observable<Result>> useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        this.useCase = useCase;
        this.sdkToken = "";
        this._errorHappened = new MutableLiveData<>();
        this._showWebView = new MutableLiveData<>();
        this._result = new MutableLiveData<>();
    }

    public final String getSdkToken() {
        return this.sdkToken;
    }

    public final void setSdkToken(String str) {
        this.sdkToken = str;
    }

    public final LiveData<Unit> getErrorHappened() {
        return this._errorHappened;
    }

    public final LiveData<Unit> getShowWebView() {
        return this._showWebView;
    }

    public final LiveData<Result> getResult() {
        return this._result;
    }

    public final void validateErrorCode(int errorCode) {
        if (errorCode == -12 || errorCode == -2 || errorCode == -8 || errorCode == -7 || errorCode == -6) {
            this._errorHappened.setValue(Unit.INSTANCE);
        }
    }

    public final void checkUrlNotContainsThreeDs(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (StringsKt.contains$default((CharSequence) url, (CharSequence) Constants.FORT_URI.WV_CHECKER_3DS_PARAMS_URL, false, 2, (Object) null)) {
            return;
        }
        this._showWebView.setValue(Unit.INSTANCE);
    }

    public final void checkResponseIfExist(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (StringsKt.contains$default((CharSequence) url, (CharSequence) Constants.FORT_URI.WV_CHECKER_3DS_PARAMS_URL, false, 2, (Object) null)) {
            String queryParameter = Uri.parse(url).getQueryParameter(RESPONSE_TOKEN);
            String str = this.sdkToken;
            if (str == null) {
                str = "";
            }
            if (queryParameter == null) {
                queryParameter = "";
            }
            callCompleteSdkFlow(new ThreeDsRequest(str, queryParameter));
        }
    }

    private final void callCompleteSdkFlow(ThreeDsRequest threeDsRequest) {
        Observable<Result> observableObserveOn = this.useCase.execute(threeDsRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        final Function1<Result, Unit> function1 = new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                ThreeDsViewModel.this._result.setValue(result);
            }
        };
        Consumer<? super Result> consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                ThreeDsViewModel.callCompleteSdkFlow$lambda$0(function1, obj);
            }
        };
        final Function1<Throwable, Unit> function2 = new Function1<Throwable, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            public final void invoke2(Throwable it) {
                MutableLiveData mutableLiveData = ThreeDsViewModel.this._result;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                mutableLiveData.setValue(new Result.Failure(it));
            }
        };
        observableObserveOn.subscribe(consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                ThreeDsViewModel.callCompleteSdkFlow$lambda$1(function2, obj);
            }
        });
    }

    public static final void callCompleteSdkFlow$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void callCompleteSdkFlow$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
