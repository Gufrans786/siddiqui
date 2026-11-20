package com.payfort.fortpaymentsdk.presentation.threeds;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ImagesContract;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.Result;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.handlers.PayHandler;
import com.payfort.fortpaymentsdk.presentation.base.FortActivity;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.ViewExtKt;
import com.payfort.fortpaymentsdk.utils.WebViewUtils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0006J\b\u0010\u0011\u001a\u00020\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0012H\u0016J\u0012\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\b\u0010\u0017\u001a\u00020\u0012H\u0014J\b\u0010\u0018\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity;", "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "()V", "mWebView", "Landroid/webkit/WebView;", ImagesContract.URL, "", "getUrl", "()Ljava/lang/String;", "url$delegate", "Lkotlin/Lazy;", "viewModel", "Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;", "getViewModel", "()Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsViewModel;", "viewModel$delegate", "getSdkToken", "observeValues", "", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "setResultError", "setResultSuccess", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "webViewClient", "Landroid/webkit/WebViewClient;", "Companion", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ThreeDsActivity extends FortActivity {

    public static final Companion INSTANCE = new Companion(null);
    public static final String KEY_FAILURE = "FAILURE";
    public static final String KEY_SUCCESS = "SUCCESS";
    public static final String URL = "URL";
    private WebView mWebView;

    private final Lazy url = LazyKt.lazy(new Function0<String>() {
        {
            super(0);
        }

        @Override
        public final String invoke() {
            Bundle extras = this.this$0.getIntent().getExtras();
            if (extras != null) {
                return extras.getString(ThreeDsActivity.URL);
            }
            return null;
        }
    });

    private final Lazy viewModel;

    @Override
    public void onBackPressed() {
    }

    public ThreeDsActivity() {
        final ThreeDsActivity threeDsActivity = this;
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(ThreeDsViewModel.class), new Function0<ViewModelStore>() {
            {
                super(0);
            }

            @Override
            public final ViewModelStore invoke() {
                return threeDsActivity.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() {
            {
                super(0);
            }

            @Override
            public final ViewModelProvider.Factory invoke() {
                return InjectionUtils.provideCompleteThreeDsUseViewModelFactory(this.this$0.getEnvironment$fortpayment_release());
            }
        }, new Function0<CreationExtras>() {
            {
                super(0);
            }

            @Override
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.invoke()) == null) ? threeDsActivity.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/threeds/ThreeDsActivity$Companion;", "", "()V", "KEY_FAILURE", "", "KEY_SUCCESS", ThreeDsActivity.URL, "start", "", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", ImagesContract.URL, Constants.EXTRAS.SDK_ENVIRONMENT, "sdkToken", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void start(Context context, String url, String environment, String sdkToken) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(environment, "environment");
            Intrinsics.checkNotNullParameter(sdkToken, "sdkToken");
            Intent intent = new Intent(context, (Class<?>) ThreeDsActivity.class);
            intent.putExtra(ThreeDsActivity.URL, url);
            intent.putExtra(Constants.EXTRAS.SDK_ENVIRONMENT, environment);
            intent.putExtra(Constants.FORT_PARAMS.SDK_TOKEN, sdkToken);
            context.startActivity(intent);
        }
    }

    public final String getSdkToken() {
        String stringExtra = getIntent().getStringExtra(Constants.FORT_PARAMS.SDK_TOKEN);
        return stringExtra == null ? "" : stringExtra;
    }

    public final ThreeDsViewModel getViewModel() {
        return (ThreeDsViewModel) this.viewModel.getValue();
    }

    private final String getUrl() {
        return (String) this.url.getValue();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.webview);
        View viewFindViewById = findViewById(R.id.webView);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(R.id.webView)");
        this.mWebView = (WebView) viewFindViewById;
        WebViewUtils webViewUtils = WebViewUtils.INSTANCE;
        WebView webView = this.mWebView;
        WebView webView2 = null;
        if (webView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebView");
            webView = null;
        }
        webViewUtils.setupWebView(webView);
        WebView webView3 = this.mWebView;
        if (webView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebView");
            webView3 = null;
        }
        webView3.setWebViewClient(webViewClient());
        getViewModel().setSdkToken(getSdkToken());
        WebView webView4 = this.mWebView;
        if (webView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebView");
            webView4 = null;
        }
        String url = getUrl();
        Intrinsics.checkNotNull(url);
        webView4.loadUrl(url);
        WebView webView5 = this.mWebView;
        if (webView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWebView");
        } else {
            webView2 = webView5;
        }
        ViewExtKt.gone(webView2);
        observeValues();
    }

    private final void observeValues() {
        ThreeDsActivity threeDsActivity = this;
        getViewModel().getErrorHappened().observe(threeDsActivity, new ThreeDsActivity$sam$androidx_lifecycle_Observer$0(new Function1<Unit, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Unit unit) {
                invoke2(unit);
                return Unit.INSTANCE;
            }

            public final void invoke2(Unit unit) {
                ThreeDsActivity.this.setResultError();
            }
        }));
        getViewModel().getShowWebView().observe(threeDsActivity, new ThreeDsActivity$sam$androidx_lifecycle_Observer$0(new Function1<Unit, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Unit unit) {
                invoke2(unit);
                return Unit.INSTANCE;
            }

            public final void invoke2(Unit unit) {
                WebView webView = ThreeDsActivity.this.mWebView;
                if (webView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mWebView");
                    webView = null;
                }
                ViewExtKt.visible(webView);
            }
        }));
        getViewModel().getResult().observe(threeDsActivity, new ThreeDsActivity$sam$androidx_lifecycle_Observer$0(new Function1<Result, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Result result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            public final void invoke2(Result result) {
                if (result instanceof Result.Failure) {
                    ThreeDsActivity.this.setResultError();
                } else if (result instanceof Result.Success) {
                    ThreeDsActivity.this.setResultSuccess(((Result.Success) result).getResponse());
                }
            }
        }));
    }

    @Override
    protected void onStart() {
        super.onStart();
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
        }
    }

    private final WebViewClient webViewClient() {
        return new WebViewClient() {
            @Override
            public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(detail, "detail");
                if (Build.VERSION.SDK_INT < 26) {
                    return false;
                }
                try {
                    return super.onRenderProcessGone(view, detail);
                } catch (Exception unused) {
                    return false;
                }
            }

            @Override
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                ThreeDsActivity.this.getViewModel().validateErrorCode(errorCode);
                super.onReceivedError(view, errorCode, description, failingUrl);
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(url, "url");
                super.onPageFinished(view, url);
                ThreeDsActivity.this.getViewModel().checkUrlNotContainsThreeDs(url);
                ThreeDsActivity.this.getViewModel().checkResponseIfExist(url);
            }
        };
    }

    public final void setResultSuccess(SdkResponse sdkResponse) {
        Intent intent = new Intent(PayHandler.INSTANCE.getTHREEDS_INTENT_FILTER$fortpayment_release());
        intent.putExtra(KEY_SUCCESS, sdkResponse);
        sendBroadcast(intent);
        finish();
    }

    public final void setResultError() {
        Intent intent = new Intent(PayHandler.INSTANCE.getTHREEDS_INTENT_FILTER$fortpayment_release());
        intent.putExtra(KEY_FAILURE, true);
        sendBroadcast(intent);
        finish();
    }
}
