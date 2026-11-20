package com.payfort.fortpaymentsdk.presentation.credit;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.content.res.AppCompatResources;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.callbacks.FortPayInternalCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.databinding.ActivityCcPaymentBinding;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.domain.model.FortSdkCache;
import com.payfort.fortpaymentsdk.domain.model.MerchantToken;
import com.payfort.fortpaymentsdk.domain.model.SdkResponse;
import com.payfort.fortpaymentsdk.presentation.base.FortActivity;
import com.payfort.fortpaymentsdk.presentation.response.CreditCardResponseActivity;
import com.payfort.fortpaymentsdk.utils.CommonServiceUtil;
import com.payfort.fortpaymentsdk.utils.LocalizationService;
import com.payfort.fortpaymentsdk.utils.MapUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.utils.ViewExtKt;
import com.payfort.fortpaymentsdk.views.CardCvvView;
import com.payfort.fortpaymentsdk.views.CardExpiryView;
import com.payfort.fortpaymentsdk.views.CardHolderNameView;
import com.payfort.fortpaymentsdk.views.FortCardNumberView;
import com.payfort.fortpaymentsdk.views.PayfortPayButton;
import com.payfort.fortpaymentsdk.views.model.PayComponents;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0002\u0010\bJ\n\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\r\u001a\u00020\fH\u0002J\b\u0010\u000e\u001a\u00020\fH\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\fH\u0002J\b\u0010\u0017\u001a\u00020\fH\u0002J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0019\u001a\u00020\fH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/credit/CreditCardPaymentActivity;", "Lcom/payfort/fortpaymentsdk/presentation/base/FortActivity;", "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;", "()V", "binding", "Lcom/payfort/fortpaymentsdk/databinding/ActivityCcPaymentBinding;", "getCurrencyDecimalPoints", "", "()Ljava/lang/Integer;", "getMerchantToken", "Lcom/payfort/fortpaymentsdk/domain/model/MerchantToken;", "hideRememberMe", "", "initListeners", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onFailure", "sdkResponse", "Lcom/payfort/fortpaymentsdk/domain/model/SdkResponse;", "onSuccess", "setupViews", "showRememberMe", "showResponsePage", "startLoading", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CreditCardPaymentActivity extends FortActivity implements FortPayInternalCallback {
    private ActivityCcPaymentBinding binding;

    private final MerchantToken getMerchantToken() {
        return (MerchantToken) getIntent().getSerializableExtra(Constants.EXTRAS.SDK_MERCHANT_TOKEN);
    }

    private final Integer getCurrencyDecimalPoints() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            return Integer.valueOf(extras.getInt(Constants.EXTRAS.SDK_CURRENCY_DP, 0));
        }
        return null;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityCcPaymentBinding activityCcPaymentBindingInflate = ActivityCcPaymentBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityCcPaymentBindingInflate, "inflate(layoutInflater)");
        this.binding = activityCcPaymentBindingInflate;
        if (activityCcPaymentBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBindingInflate = null;
        }
        setContentView(activityCcPaymentBindingInflate.getRoot());
        setupViews();
        initListeners();
    }

    private final void setupViews() {
        Boolean boolValueOf;
        String strSubstring;
        String strSubstring2;
        String expDate;
        String expDate2;
        String expDate3;
        String expDate4;
        Integer currencySymbolResId = Utils.INSTANCE.getCurrencySymbolResId(Utils.INSTANCE.getParamValue(getMerchantRequest$fortpayment_release().getRequestMap(), "currency"));
        ActivityCcPaymentBinding activityCcPaymentBinding = null;
        if (currencySymbolResId != null) {
            ActivityCcPaymentBinding activityCcPaymentBinding2 = this.binding;
            if (activityCcPaymentBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding2 = null;
            }
            activityCcPaymentBinding2.currencySymbolIV.setImageDrawable(AppCompatResources.getDrawable(this, currencySymbolResId.intValue()));
            ActivityCcPaymentBinding activityCcPaymentBinding3 = this.binding;
            if (activityCcPaymentBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding3 = null;
            }
            activityCcPaymentBinding3.currencySymbolIV.setVisibility(0);
            ActivityCcPaymentBinding activityCcPaymentBinding4 = this.binding;
            if (activityCcPaymentBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding4 = null;
            }
            TextView textView = activityCcPaymentBinding4.amountTV;
            Utils utils = Utils.INSTANCE;
            Map<String, ? extends Object> requestMap = getMerchantRequest$fortpayment_release().getRequestMap();
            Integer currencyDecimalPoints = getCurrencyDecimalPoints();
            Intrinsics.checkNotNull(currencyDecimalPoints);
            textView.setText(utils.formatAmount(requestMap, currencyDecimalPoints.intValue(), false));
        } else {
            ActivityCcPaymentBinding activityCcPaymentBinding5 = this.binding;
            if (activityCcPaymentBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding5 = null;
            }
            activityCcPaymentBinding5.currencySymbolIV.setVisibility(8);
            ActivityCcPaymentBinding activityCcPaymentBinding6 = this.binding;
            if (activityCcPaymentBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding6 = null;
            }
            TextView textView2 = activityCcPaymentBinding6.amountTV;
            Utils utils2 = Utils.INSTANCE;
            Map<String, Object> requestMap2 = getMerchantRequest$fortpayment_release().getRequestMap();
            Integer currencyDecimalPoints2 = getCurrencyDecimalPoints();
            Intrinsics.checkNotNull(currencyDecimalPoints2);
            textView2.setText(Utils.formatAmount$default(utils2, requestMap2, currencyDecimalPoints2.intValue(), false, 4, null));
        }
        String paymentOptionValue = MapUtils.getPaymentOptionValue(getMerchantRequest$fortpayment_release().getRequestMap());
        if (paymentOptionValue == null) {
            MerchantToken merchantToken = getMerchantToken();
            paymentOptionValue = merchantToken != null ? merchantToken.getPaymentOptionName() : null;
        }
        CardBrand cardBrandFromCodeOrNull = CardBrand.INSTANCE.fromCodeOrNull(paymentOptionValue);
        ActivityCcPaymentBinding activityCcPaymentBinding7 = this.binding;
        if (activityCcPaymentBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding7 = null;
        }
        activityCcPaymentBinding7.etCardNumberView.setUp$fortpayment_release(getEnvironment$fortpayment_release(), cardBrandFromCodeOrNull);
        Resources resources = getResources();
        if (resources != null) {
            float dimension = resources.getDimension(R.dimen._10sdp);
            Resources resources2 = getResources();
            if (resources2 != null) {
                int dimension2 = (int) resources2.getDimension(R.dimen._20sdp);
                ActivityCcPaymentBinding activityCcPaymentBinding8 = this.binding;
                if (activityCcPaymentBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityCcPaymentBinding8 = null;
                }
                EditText etText$fortpayment_release = activityCcPaymentBinding8.etCardNumberView.getEtText();
                if (etText$fortpayment_release != null) {
                    int i = (int) dimension;
                    etText$fortpayment_release.setPadding(i, dimension2, i, i);
                }
                ActivityCcPaymentBinding activityCcPaymentBinding9 = this.binding;
                if (activityCcPaymentBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityCcPaymentBinding9 = null;
                }
                EditText etText$fortpayment_release2 = activityCcPaymentBinding9.etCardCvv.getEtText();
                if (etText$fortpayment_release2 != null) {
                    int i2 = (int) dimension;
                    etText$fortpayment_release2.setPadding(i2, dimension2, i2, i2);
                }
                ActivityCcPaymentBinding activityCcPaymentBinding10 = this.binding;
                if (activityCcPaymentBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityCcPaymentBinding10 = null;
                }
                EditText etText$fortpayment_release3 = activityCcPaymentBinding10.etCardExpiry.getEtText();
                if (etText$fortpayment_release3 != null) {
                    int i3 = (int) dimension;
                    etText$fortpayment_release3.setPadding(i3, dimension2, i3, i3);
                }
                ActivityCcPaymentBinding activityCcPaymentBinding11 = this.binding;
                if (activityCcPaymentBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityCcPaymentBinding11 = null;
                }
                EditText etText$fortpayment_release4 = activityCcPaymentBinding11.cardHolderNameView.getEtText();
                if (etText$fortpayment_release4 != null) {
                    int i4 = (int) dimension;
                    etText$fortpayment_release4.setPadding(i4, dimension2, i4, i4);
                }
            }
        }
        if (cardBrandFromCodeOrNull != null) {
            ActivityCcPaymentBinding activityCcPaymentBinding12 = this.binding;
            if (activityCcPaymentBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityCcPaymentBinding12 = null;
            }
            activityCcPaymentBinding12.etCardCvv.setUpPaymentOption$fortpayment_release(cardBrandFromCodeOrNull);
        }
        hideRememberMe();
        MerchantToken merchantToken2 = getMerchantToken();
        if (merchantToken2 != null) {
            if (merchantToken2.isRememberMe()) {
                if (MapUtils.displayRememberMe(getMerchantRequest$fortpayment_release().getRequestMap())) {
                    showRememberMe();
                }
            } else {
                String defaultLocale = LocalizationService.getDefaultLocale(this);
                Intrinsics.checkNotNullExpressionValue(defaultLocale, "getDefaultLocale(this)");
                if (StringsKt.startsWith$default(defaultLocale, Constants.LANGUAGES.ARABIC, false, 2, (Object) null)) {
                    ActivityCcPaymentBinding activityCcPaymentBinding13 = this.binding;
                    if (activityCcPaymentBinding13 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        activityCcPaymentBinding13 = null;
                    }
                    FortCardNumberView fortCardNumberView = activityCcPaymentBinding13.etCardNumberView;
                    MerchantToken merchantToken3 = getMerchantToken();
                    fortCardNumberView.setText$fortpayment_release(CommonServiceUtil.hackMaskedCardForArabic(merchantToken3 != null ? merchantToken3.getMaskedCardNumber() : null));
                } else {
                    ActivityCcPaymentBinding activityCcPaymentBinding14 = this.binding;
                    if (activityCcPaymentBinding14 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        activityCcPaymentBinding14 = null;
                    }
                    FortCardNumberView fortCardNumberView2 = activityCcPaymentBinding14.etCardNumberView;
                    MerchantToken merchantToken4 = getMerchantToken();
                    fortCardNumberView2.setText$fortpayment_release((merchantToken4 != null ? merchantToken4.getMaskedCardNumber() : null));
                }
                MerchantToken merchantToken5 = getMerchantToken();
                if ((merchantToken5 != null ? merchantToken5.getExpDate() : null) != null) {
                    MerchantToken merchantToken6 = getMerchantToken();
                    if (merchantToken6 == null || (expDate4 = merchantToken6.getExpDate()) == null) {
                        boolValueOf = null;
                    } else {
                        Intrinsics.checkNotNullExpressionValue(expDate4, "expDate");
                        boolValueOf = Boolean.valueOf(StringsKt.isBlank(expDate4));
                    }
                    Intrinsics.checkNotNull(boolValueOf);
                    if (!boolValueOf.booleanValue()) {
                        MerchantToken merchantToken7 = getMerchantToken();
                        Integer numValueOf = (merchantToken7 == null || (expDate3 = merchantToken7.getExpDate()) == null) ? null : Integer.valueOf(expDate3.length());
                        Intrinsics.checkNotNull(numValueOf);
                        if (numValueOf.intValue() >= 4) {
                            MerchantToken merchantToken8 = getMerchantToken();
                            if (merchantToken8 == null || (expDate2 = merchantToken8.getExpDate()) == null) {
                                strSubstring = null;
                            } else {
                                Intrinsics.checkNotNullExpressionValue(expDate2, "expDate");
                                strSubstring = expDate2.substring(0, 2);
                                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                            }
                            MerchantToken merchantToken9 = getMerchantToken();
                            if (merchantToken9 == null || (expDate = merchantToken9.getExpDate()) == null) {
                                strSubstring2 = null;
                            } else {
                                Intrinsics.checkNotNullExpressionValue(expDate, "expDate");
                                strSubstring2 = expDate.substring(2);
                                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                            }
                            String str = strSubstring + "/" + strSubstring2;
                            ActivityCcPaymentBinding activityCcPaymentBinding15 = this.binding;
                            if (activityCcPaymentBinding15 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                activityCcPaymentBinding15 = null;
                            }
                            activityCcPaymentBinding15.etCardExpiry.setText$fortpayment_release(str);
                        }
                    }
                }
            }
        }
        ActivityCcPaymentBinding activityCcPaymentBinding16 = this.binding;
        if (activityCcPaymentBinding16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding16 = null;
        }
        FortCardNumberView fortCardNumberView3 = activityCcPaymentBinding16.etCardNumberView;
        Intrinsics.checkNotNullExpressionValue(fortCardNumberView3, "binding.etCardNumberView");
        ActivityCcPaymentBinding activityCcPaymentBinding17 = this.binding;
        if (activityCcPaymentBinding17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding17 = null;
        }
        CardCvvView cardCvvView = activityCcPaymentBinding17.etCardCvv;
        Intrinsics.checkNotNullExpressionValue(cardCvvView, "binding.etCardCvv");
        ActivityCcPaymentBinding activityCcPaymentBinding18 = this.binding;
        if (activityCcPaymentBinding18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding18 = null;
        }
        CardExpiryView cardExpiryView = activityCcPaymentBinding18.etCardExpiry;
        Intrinsics.checkNotNullExpressionValue(cardExpiryView, "binding.etCardExpiry");
        ActivityCcPaymentBinding activityCcPaymentBinding19 = this.binding;
        if (activityCcPaymentBinding19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding19 = null;
        }
        CardHolderNameView cardHolderNameView = activityCcPaymentBinding19.cardHolderNameView;
        Intrinsics.checkNotNullExpressionValue(cardHolderNameView, "binding.cardHolderNameView");
        PayComponents payComponents = new PayComponents(fortCardNumberView3, cardCvvView, cardExpiryView, cardHolderNameView);
        ActivityCcPaymentBinding activityCcPaymentBinding20 = this.binding;
        if (activityCcPaymentBinding20 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding20 = null;
        }
        PayfortPayButton payfortPayButton = activityCcPaymentBinding20.btnPay;
        String environment$fortpayment_release = getEnvironment$fortpayment_release();
        FortRequest merchantRequest$fortpayment_release = getMerchantRequest$fortpayment_release();
        Intrinsics.checkNotNullExpressionValue(merchantRequest$fortpayment_release, "getMerchantRequest()");
        payfortPayButton.setUpInternalButton$fortpayment_release(environment$fortpayment_release, merchantRequest$fortpayment_release, payComponents, this);
        ActivityCcPaymentBinding activityCcPaymentBinding21 = this.binding;
        if (activityCcPaymentBinding21 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCcPaymentBinding = activityCcPaymentBinding21;
        }
        activityCcPaymentBinding.btnPay.isValidatedBefore$fortpayment_release(true);
    }

    private final void initListeners() {
        ActivityCcPaymentBinding activityCcPaymentBinding = this.binding;
        ActivityCcPaymentBinding activityCcPaymentBinding2 = null;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        activityCcPaymentBinding.toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CreditCardPaymentActivity.initListeners$lambda$4(this.f$0, view);
            }
        });
        ActivityCcPaymentBinding activityCcPaymentBinding3 = this.binding;
        if (activityCcPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding3 = null;
        }
        activityCcPaymentBinding3.rememberMeTB.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CreditCardPaymentActivity.initListeners$lambda$5(this.f$0, compoundButton, z);
            }
        });
        ActivityCcPaymentBinding activityCcPaymentBinding4 = this.binding;
        if (activityCcPaymentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCcPaymentBinding2 = activityCcPaymentBinding4;
        }
        activityCcPaymentBinding2.etCardNumberView.setOnMaskedNumberChanged(new Function1<Boolean, Unit>() {
            {
                super(1);
            }

            @Override
            public Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                ActivityCcPaymentBinding activityCcPaymentBinding5 = CreditCardPaymentActivity.this.binding;
                ActivityCcPaymentBinding activityCcPaymentBinding6 = null;
                if (activityCcPaymentBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    activityCcPaymentBinding5 = null;
                }
                activityCcPaymentBinding5.etCardExpiry.setText$fortpayment_release("");
                ActivityCcPaymentBinding activityCcPaymentBinding7 = CreditCardPaymentActivity.this.binding;
                if (activityCcPaymentBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    activityCcPaymentBinding6 = activityCcPaymentBinding7;
                }
                activityCcPaymentBinding6.etCardNumberView.setText$fortpayment_release("");
            }
        });
    }

    public static final void initListeners$lambda$4(CreditCardPaymentActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onBackPressed();
    }

    public static final void initListeners$lambda$5(CreditCardPaymentActivity this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityCcPaymentBinding activityCcPaymentBinding = this$0.binding;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        activityCcPaymentBinding.btnPay.isRememberMeEnabled(z);
    }

    @Override
    public void startLoading() {
        ActivityCcPaymentBinding activityCcPaymentBinding = this.binding;
        ActivityCcPaymentBinding activityCcPaymentBinding2 = null;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        RelativeLayout relativeLayout = activityCcPaymentBinding.loadingContainer;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "binding.loadingContainer");
        ViewExtKt.visible(relativeLayout);
        ActivityCcPaymentBinding activityCcPaymentBinding3 = this.binding;
        if (activityCcPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding3 = null;
        }
        activityCcPaymentBinding3.cardHolderNameView.setEnabled(false);
        ActivityCcPaymentBinding activityCcPaymentBinding4 = this.binding;
        if (activityCcPaymentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding4 = null;
        }
        activityCcPaymentBinding4.etCardNumberView.setEnabled(false);
        ActivityCcPaymentBinding activityCcPaymentBinding5 = this.binding;
        if (activityCcPaymentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding5 = null;
        }
        activityCcPaymentBinding5.etCardExpiry.setEnabled(false);
        ActivityCcPaymentBinding activityCcPaymentBinding6 = this.binding;
        if (activityCcPaymentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding6 = null;
        }
        activityCcPaymentBinding6.etCardCvv.setEnabled(false);
        ActivityCcPaymentBinding activityCcPaymentBinding7 = this.binding;
        if (activityCcPaymentBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding7 = null;
        }
        activityCcPaymentBinding7.rememberMeRL.setEnabled(false);
        ActivityCcPaymentBinding activityCcPaymentBinding8 = this.binding;
        if (activityCcPaymentBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCcPaymentBinding2 = activityCcPaymentBinding8;
        }
        activityCcPaymentBinding2.btnPay.setEnabled(false);
    }

    @Override
    public void onSuccess(SdkResponse sdkResponse) {
        Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
        if (getMerchantRequest$fortpayment_release().isShowResponsePage()) {
            showResponsePage(sdkResponse);
        } else {
            Utils.INSTANCE.backToMerchant(this, sdkResponse);
        }
    }

    @Override
    public void onFailure(SdkResponse sdkResponse) {
        Intrinsics.checkNotNullParameter(sdkResponse, "sdkResponse");
        Utils.INSTANCE.backToMerchant(this, sdkResponse);
    }

    private final void showResponsePage(SdkResponse sdkResponse) {
        Intent intent = new Intent(this, (Class<?>) CreditCardResponseActivity.class);
        intent.putExtra(Constants.EXTRAS.SDK_MERCHANT_REQUEST, getMerchantRequest$fortpayment_release());
        intent.putExtra(Constants.EXTRAS.SDK_RESPONSE, sdkResponse);
        intent.putExtra(Constants.EXTRAS.SDK_DEFAULT_LOCALE, FortSdkCache.getDEFAULT_SYSTEM_LANGUAGE());
        startActivity(intent);
        finish();
    }

    @Override
    public void onBackPressed() {
        ActivityCcPaymentBinding activityCcPaymentBinding = this.binding;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        if (activityCcPaymentBinding.loadingContainer.getVisibility() != 0) {
            Utils.INSTANCE.displayCancelPaymentDialog(this);
        } else {
            Toast.makeText(this, getResources().getString(R.string.pf_no_back_tnx_processing), 1).show();
        }
    }

    private final void showRememberMe() {
        ActivityCcPaymentBinding activityCcPaymentBinding = this.binding;
        ActivityCcPaymentBinding activityCcPaymentBinding2 = null;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        LinearLayout linearLayout = activityCcPaymentBinding.rememberMeRL;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.rememberMeRL");
        ViewExtKt.showVisibility(linearLayout, true);
        ActivityCcPaymentBinding activityCcPaymentBinding3 = this.binding;
        if (activityCcPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCcPaymentBinding2 = activityCcPaymentBinding3;
        }
        activityCcPaymentBinding2.rememberMeTB.setChecked(true);
    }

    private final void hideRememberMe() {
        ActivityCcPaymentBinding activityCcPaymentBinding = this.binding;
        ActivityCcPaymentBinding activityCcPaymentBinding2 = null;
        if (activityCcPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityCcPaymentBinding = null;
        }
        LinearLayout linearLayout = activityCcPaymentBinding.rememberMeRL;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.rememberMeRL");
        ViewExtKt.gone(linearLayout);
        ActivityCcPaymentBinding activityCcPaymentBinding3 = this.binding;
        if (activityCcPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityCcPaymentBinding2 = activityCcPaymentBinding3;
        }
        activityCcPaymentBinding2.rememberMeTB.setChecked(false);
    }
}
