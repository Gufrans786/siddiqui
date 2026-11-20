package com.payfort.fortpaymentsdk.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import ch.qos.logback.core.CoreConstants;
import com.facebook.react.uimanager.ViewProps;
import com.payfort.fortpaymentsdk.callbacks.FortPayInternalCallback;
import com.payfort.fortpaymentsdk.callbacks.PayFortCallback;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import com.payfort.fortpaymentsdk.handlers.PayHandler;
import com.payfort.fortpaymentsdk.views.model.PayComponents;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0000¢\u0006\u0002\b\u0010J\u0012\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J/\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0000¢\u0006\u0002\b\u001dJ \u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010 J&\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0018R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;", "Landroidx/appcompat/widget/AppCompatButton;", "Landroid/view/View$OnClickListener;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "payHandler", "Lcom/payfort/fortpaymentsdk/handlers/PayHandler;", "isRememberMeEnabled", "", "isRememberMe", "", "isValidatedBefore", "flag", "isValidatedBefore$fortpayment_release", ViewProps.ON_CLICK, "v", "Landroid/view/View;", "setUpInternalButton", Constants.EXTRAS.SDK_ENVIRONMENT, "", "request", "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;", "payComponents", "Lcom/payfort/fortpaymentsdk/views/model/PayComponents;", "fortPayCallback", "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;", "setUpInternalButton$fortpayment_release", "setup", "payFortCallback", "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;", "updateRequest", "fortRequest", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PayfortPayButton extends AppCompatButton implements View.OnClickListener {
    private final PayHandler payHandler;

    public PayfortPayButton(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public PayfortPayButton(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public PayfortPayButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.payHandler = new PayHandler(this);
        setOnClickListener(this);
    }

    public final void isValidatedBefore$fortpayment_release(boolean flag) {
        this.payHandler.setValidatedBefore$fortpayment_release(flag);
    }

    public final void isRememberMeEnabled(boolean isRememberMe) {
        this.payHandler.setRememberMe(isRememberMe);
    }

    public final void updateRequest(FortRequest fortRequest) {
        Intrinsics.checkNotNullParameter(fortRequest, "fortRequest");
        this.payHandler.setRequest$fortpayment_release(fortRequest);
    }

    public final void setup(String environment, FortRequest request, PayComponents payComponents, PayFortCallback payFortCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(payComponents, "payComponents");
        Intrinsics.checkNotNullParameter(payFortCallback, "payFortCallback");
        this.payHandler.setUpPayButton(environment, request, payComponents, payFortCallback);
    }

    public final void setup(String environment, FortRequest request, PayFortCallback payFortCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        this.payHandler.setUpPayButton(environment, request, payFortCallback);
    }

    public final void setUpInternalButton$fortpayment_release(String environment, FortRequest request, PayComponents payComponents, FortPayInternalCallback fortPayCallback) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(payComponents, "payComponents");
        this.payHandler.setUpPayButton(environment, request, payComponents, fortPayCallback);
    }

    @Override
    public void onClick(View v) {
        this.payHandler.pay();
    }
}
