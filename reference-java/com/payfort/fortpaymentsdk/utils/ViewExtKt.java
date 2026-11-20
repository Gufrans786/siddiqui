package com.payfort.fortpaymentsdk.utils;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.react.uimanager.ViewProps;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0002\u001a\u0012\u0010\b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010\u000b\u001a\u00020\u0006*\u00020\u0002\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\f"}, d2 = {"activity", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/view/View;", "getActivity", "(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;", "gone", "", "invisible", "showVisibility", TypedValues.Custom.S_BOOLEAN, "", ViewProps.VISIBLE, "fortpayment_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class ViewExtKt {
    public static final void visible(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(0);
    }

    public static final void invisible(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(4);
    }

    public static final void gone(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(8);
    }

    public static final void showVisibility(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (z) {
            visible(view);
        } else {
            gone(view);
        }
    }

    public static final AppCompatActivity getActivity(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        for (Context context = view.getContext(); ContextWrapper.class.isInstance(context); context = ((ContextWrapper) context).getBaseContext()) {
            if (AppCompatActivity.class.isInstance(context)) {
                Intrinsics.checkNotNull(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
                return (AppCompatActivity) context;
            }
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.content.ContextWrapper");
        }
        return null;
    }
}
