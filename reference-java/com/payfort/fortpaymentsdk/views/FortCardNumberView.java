package com.payfort.fortpaymentsdk.views;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import ch.qos.logback.core.CoreConstants;
import com.google.android.material.textfield.TextInputLayout;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.CardBrand;
import com.payfort.fortpaymentsdk.domain.model.FortError;
import com.payfort.fortpaymentsdk.domain.model.SdkRequest;
import com.payfort.fortpaymentsdk.domain.model.StringResult;
import com.payfort.fortpaymentsdk.domain.usecase.ValidateCardNumberUseCase;
import com.payfort.fortpaymentsdk.utils.CreditCardUtils;
import com.payfort.fortpaymentsdk.utils.InjectionUtils;
import com.payfort.fortpaymentsdk.utils.Utils;
import com.payfort.fortpaymentsdk.views.model.FortViewTypes;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001d\u001a\u00020\u0012H\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J!\u0010\u0017\u001a\u00020\u00122\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00120\u0011H\u0000¢\u0006\u0002\b\u001eJ\u001a\u0010\u001f\u001a\u00020\u00122\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00120\u0011J\u001f\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"2\b\u0010\n\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\b#J\r\u0010\u001b\u001a\u00020\u0012H\u0000¢\u0006\u0002\b$R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/FortCardNumberView;", "Lcom/payfort/fortpaymentsdk/views/FortView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "cardBrand", "Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;", "value", "defaultPaymentOption", "setDefaultPaymentOption", "(Lcom/payfort/fortpaymentsdk/domain/model/CardBrand;)V", "isValid", "", "lastCardBrand", "onMaskedNumberChanged", "Lkotlin/Function1;", "", "getOnMaskedNumberChanged$fortpayment_release", "()Lkotlin/jvm/functions/Function1;", "setOnMaskedNumberChanged$fortpayment_release", "(Lkotlin/jvm/functions/Function1;)V", "onValueChanged", "getOnValueChanged$fortpayment_release", "setOnValueChanged$fortpayment_release", "serverCardBrand", "validateCardNumber", "Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateCardNumberUseCase;", "checkCardNumber", "onValueChanged$fortpayment_release", "setOnMaskedNumberChanged", "setUp", Constants.EXTRAS.SDK_ENVIRONMENT, "", "setUp$fortpayment_release", "validateCardNumber$fortpayment_release", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FortCardNumberView extends FortView {
    private CardBrand cardBrand;
    private CardBrand defaultPaymentOption;
    private boolean isValid;
    private CardBrand lastCardBrand;
    private Function1<? super Boolean, Unit> onMaskedNumberChanged;
    private Function1<? super Boolean, Unit> onValueChanged;
    private CardBrand serverCardBrand;
    private ValidateCardNumberUseCase validateCardNumber;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FortError.values().length];
            try {
                iArr[FortError.INVALID_PAYMENT_OPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FortError.INVALID_CARD_LENGTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FortError.INVALID_CARD_LENGTH_AMEX.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FortError.CARD_UNSUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FortError.INVALID_CARD_NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FortError.EMPTY_CARD_NUMBER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FortCardNumberView(Context context, AttributeSet attributeSet) {
        super(context, FortViewTypes.CARD_NUMBER, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.isValid = true;
        TextInputLayout inputLayout$fortpayment_release = getInputLayout();
        if (inputLayout$fortpayment_release != null) {
            inputLayout$fortpayment_release.setErrorEnabled(false);
        }
        TextInputLayout inputLayout$fortpayment_release2 = getInputLayout();
        if (inputLayout$fortpayment_release2 != null) {
            inputLayout$fortpayment_release2.setEndIconVisible(true);
        }
        TextInputLayout inputLayout$fortpayment_release3 = getInputLayout();
        if (inputLayout$fortpayment_release3 != null) {
            inputLayout$fortpayment_release3.setEndIconMode(-1);
        }
        EditText etText$fortpayment_release = getEtText();
        if (etText$fortpayment_release != null) {
            etText$fortpayment_release.setFilters(new InputFilter[]{new InputFilter.LengthFilter(19)});
        }
        EditText etText$fortpayment_release2 = getEtText();
        if (etText$fortpayment_release2 != null) {
            etText$fortpayment_release2.setKeyListener(DigitsKeyListener.getInstance("1234567890"));
        }
        EditText etText$fortpayment_release3 = getEtText();
        if (etText$fortpayment_release3 != null) {
            etText$fortpayment_release3.addTextChangedListener(new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence text, int start, int count, int after) {
                }

                @Override
                public void onTextChanged(CharSequence text, int start, int before, int count) {
                }

                @Override
                public void afterTextChanged(Editable s) {
                    Function1<Boolean, Unit> onMaskedNumberChanged$fortpayment_release;
                    String strValueOf = String.valueOf(s);
                    int length = strValueOf.length();
                    this.this$0.serverCardBrand = null;
                    CardBrand cardBrandFromCardNumber = CardBrand.INSTANCE.fromCardNumber(strValueOf);
                    if (cardBrandFromCardNumber != CardBrand.UNKNOWN) {
                        this.this$0.lastCardBrand = cardBrandFromCardNumber;
                    }
                    this.this$0.cardBrand = cardBrandFromCardNumber;
                    if (this.this$0.lastCardBrand != null) {
                        EditText etText$fortpayment_release4 = this.this$0.getEtText();
                        if (etText$fortpayment_release4 != null) {
                            InputFilter[] inputFilterArr = new InputFilter[1];
                            CardBrand cardBrand = this.this$0.lastCardBrand;
                            Integer numValueOf = cardBrand != null ? Integer.valueOf(cardBrand.getDefaultMaxLength()) : null;
                            Intrinsics.checkNotNull(numValueOf);
                            inputFilterArr[0] = new InputFilter.LengthFilter(numValueOf.intValue());
                            etText$fortpayment_release4.setFilters(inputFilterArr);
                        }
                    } else {
                        EditText etText$fortpayment_release5 = this.this$0.getEtText();
                        if (etText$fortpayment_release5 != null) {
                            InputFilter[] inputFilterArr2 = new InputFilter[1];
                            CardBrand cardBrand2 = this.this$0.cardBrand;
                            Integer numValueOf2 = cardBrand2 != null ? Integer.valueOf(cardBrand2.getDefaultMaxLength()) : null;
                            Intrinsics.checkNotNull(numValueOf2);
                            inputFilterArr2[0] = new InputFilter.LengthFilter(numValueOf2.intValue());
                            etText$fortpayment_release5.setFilters(inputFilterArr2);
                        }
                    }
                    if (this.this$0.defaultPaymentOption == null) {
                        if (strValueOf.length() >= 4) {
                            TextInputLayout inputLayout$fortpayment_release4 = this.this$0.getInputLayout();
                            if (inputLayout$fortpayment_release4 != null) {
                                inputLayout$fortpayment_release4.setEndIconVisible(this.this$0.cardBrand != CardBrand.UNKNOWN);
                            }
                            TextInputLayout inputLayout$fortpayment_release5 = this.this$0.getInputLayout();
                            if (inputLayout$fortpayment_release5 != null) {
                                CardBrand cardBrand3 = this.this$0.cardBrand;
                                Integer numValueOf3 = cardBrand3 != null ? Integer.valueOf(cardBrand3.getIcon()) : null;
                                Intrinsics.checkNotNull(numValueOf3);
                                inputLayout$fortpayment_release5.setEndIconDrawable(numValueOf3.intValue());
                            }
                        } else {
                            TextInputLayout inputLayout$fortpayment_release6 = this.this$0.getInputLayout();
                            if (inputLayout$fortpayment_release6 != null) {
                                inputLayout$fortpayment_release6.setEndIconVisible(false);
                            }
                        }
                    }
                    if (((length == 15 && cardBrandFromCardNumber == CardBrand.AMEX) || length == 16 || length == 19) && !StringsKt.contains$default((CharSequence) strValueOf, (CharSequence) "*", false, 2, (Object) null)) {
                        this.this$0.checkCardNumber();
                    }
                    if (StringsKt.contains$default((CharSequence) strValueOf, (CharSequence) "*", false, 2, (Object) null) && (onMaskedNumberChanged$fortpayment_release = this.this$0.getOnMaskedNumberChanged$fortpayment_release()) != null) {
                        onMaskedNumberChanged$fortpayment_release.invoke(true);
                    }
                    Function1<Boolean, Unit> onValueChanged$fortpayment_release = this.this$0.getOnValueChanged$fortpayment_release();
                    if (onValueChanged$fortpayment_release != null) {
                        onValueChanged$fortpayment_release.invoke(true);
                    }
                }
            });
        }
        setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z) {
                FortCardNumberView._init_$lambda$1(this.f$0, view, z);
            }
        });
    }

    public final Function1<Boolean, Unit> getOnMaskedNumberChanged$fortpayment_release() {
        return this.onMaskedNumberChanged;
    }

    public final void setOnMaskedNumberChanged$fortpayment_release(Function1<? super Boolean, Unit> function1) {
        this.onMaskedNumberChanged = function1;
    }

    public final Function1<Boolean, Unit> getOnValueChanged$fortpayment_release() {
        return this.onValueChanged;
    }

    public final void setOnValueChanged$fortpayment_release(Function1<? super Boolean, Unit> function1) {
        this.onValueChanged = function1;
    }

    public final void setOnMaskedNumberChanged(Function1<? super Boolean, Unit> onMaskedNumberChanged) {
        Intrinsics.checkNotNullParameter(onMaskedNumberChanged, "onMaskedNumberChanged");
        this.onMaskedNumberChanged = onMaskedNumberChanged;
    }

    public final void onValueChanged$fortpayment_release(Function1<? super Boolean, Unit> onValueChanged) {
        Intrinsics.checkNotNullParameter(onValueChanged, "onValueChanged");
        this.onValueChanged = onValueChanged;
    }

    private final void setDefaultPaymentOption(CardBrand cardBrand) {
        TextInputLayout inputLayout$fortpayment_release;
        this.defaultPaymentOption = cardBrand;
        if (cardBrand == null || (inputLayout$fortpayment_release = getInputLayout()) == null) {
            return;
        }
        inputLayout$fortpayment_release.setEndIconDrawable(cardBrand.getIcon());
    }

    public final void setUp$fortpayment_release(String environment, CardBrand defaultPaymentOption) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        setDefaultPaymentOption(defaultPaymentOption);
        this.validateCardNumber = new ValidateCardNumberUseCase(InjectionUtils.INSTANCE.provideFortRepository(environment));
    }

    public static final void _init_$lambda$1(FortCardNumberView this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z) {
            this$0.setError(null);
        } else {
            this$0.validateCardNumber$fortpayment_release();
        }
    }

    public final void validateCardNumber$fortpayment_release() {
        FortError fortErrorIsValidCardNumber = CreditCardUtils.isValidCardNumber(String.valueOf(getText$fortpayment_release()), this.defaultPaymentOption, this.serverCardBrand);
        switch (fortErrorIsValidCardNumber == null ? -1 : WhenMappings.$EnumSwitchMapping$0[fortErrorIsValidCardNumber.ordinal()]) {
            case -1:
                setError(null);
                break;
            case 1:
                setError(getResources().getString(R.string.pf_errors_card_number_mismatch_po));
                break;
            case 2:
                setError(getResources().getString(R.string.pf_errors_card_number_length));
                break;
            case 3:
                setError(getResources().getString(R.string.pf_errors_card_number_amex_length));
                break;
            case 4:
            case 5:
                setError(getResources().getString(R.string.pf_errors_card_number_invalid));
                break;
            case 6:
                setError(getResources().getString(R.string.pf_cancel_required_field));
                break;
        }
    }

    public final void checkCardNumber() {
        this.isValid = false;
        SdkRequest sdkRequest = new SdkRequest();
        Utils utils = Utils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        sdkRequest.setDeviceId(utils.getDeviceId(context));
        HashMap map = new HashMap();
        map.put(Constants.FORT_PARAMS.CARD_NUMBER, String.valueOf(getText$fortpayment_release()));
        sdkRequest.setRequestMap(map);
        ValidateCardNumberUseCase validateCardNumberUseCase = this.validateCardNumber;
        if (validateCardNumberUseCase != null) {
            Observable<StringResult> observableObserveOn = validateCardNumberUseCase.execute(sdkRequest).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
            final Function1<StringResult, Unit> function1 = new Function1<StringResult, Unit>() {
                {
                    super(1);
                }

                @Override
                public Unit invoke(StringResult stringResult) {
                    invoke2(stringResult);
                    return Unit.INSTANCE;
                }

                public final void invoke2(StringResult stringResult) {
                    if (!(stringResult instanceof StringResult.Success)) {
                        if (stringResult instanceof StringResult.Failure) {
                            this.this$0.validateCardNumber$fortpayment_release();
                            return;
                        }
                        return;
                    }
                    String response = ((StringResult.Success) stringResult).getResponse();
                    this.this$0.serverCardBrand = CardBrand.INSTANCE.fromCode(response);
                    int i = 0;
                    if (this.this$0.defaultPaymentOption != null) {
                        CardBrand cardBrand = this.this$0.defaultPaymentOption;
                        if (!Intrinsics.areEqual(cardBrand != null ? cardBrand.getIssuerName() : null, response)) {
                            this.this$0.isValid = false;
                            FortCardNumberView fortCardNumberView = this.this$0;
                            fortCardNumberView.setError(fortCardNumberView.getResources().getString(R.string.pf_errors_card_number_mismatch_po));
                            return;
                        }
                    }
                    switch (response.hashCode()) {
                        case -2113644158:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.JAYWAN)) {
                                i = R.drawable.ic_jaywan;
                            }
                            break;
                        case -1553624974:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.MASTERCARD)) {
                                i = R.drawable.ic_master_card;
                            }
                            break;
                        case 2012639:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.AMEX)) {
                                i = R.drawable.ic_amex;
                            }
                            break;
                        case 2358545:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.MADA)) {
                                i = R.drawable.ic_mada_card;
                            }
                            break;
                        case 2634817:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.VISA)) {
                                i = R.drawable.ic_visa;
                            }
                            break;
                        case 73235860:
                            if (response.equals(Constants.CREDIT_CARDS_TYPES.MEEZA)) {
                                i = R.drawable.ic_meza;
                            }
                            break;
                    }
                    TextInputLayout inputLayout$fortpayment_release = this.this$0.getInputLayout();
                    if (inputLayout$fortpayment_release != null) {
                        inputLayout$fortpayment_release.setEndIconDrawable(i);
                    }
                    this.this$0.isValid = true;
                    this.this$0.setError(null);
                }
            };
            observableObserveOn.subscribe(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    FortCardNumberView.checkCardNumber$lambda$3$lambda$2(function1, obj);
                }
            });
        }
    }

    public static final void checkCardNumber$lambda$3$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override
    public boolean isValid() {
        return this.isValid && CreditCardUtils.isValidCardNumber(getText$fortpayment_release(), this.defaultPaymentOption, this.serverCardBrand) == null;
    }
}
