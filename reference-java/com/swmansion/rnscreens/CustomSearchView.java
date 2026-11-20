package com.swmansion.rnscreens;

import android.content.Context;
import android.view.View;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.Fragment;
import ch.qos.logback.core.CoreConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0018J\u0012\u0010\u001e\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010 \u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010!\u001a\u00020\u0018H\u0014J\b\u0010\"\u001a\u00020\u0018H\u0014R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Lcom/swmansion/rnscreens/CustomSearchView;", "Landroidx/appcompat/widget/SearchView;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "fragment", "Landroidx/fragment/app/Fragment;", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V", "onCloseListener", "Landroidx/appcompat/widget/SearchView$OnCloseListener;", "onSearchClickedListener", "Landroid/view/View$OnClickListener;", "onBackPressedCallback", "Landroidx/activity/OnBackPressedCallback;", "backPressOverrider", "Lcom/swmansion/rnscreens/FragmentBackPressOverrider;", "value", "", "overrideBackAction", "getOverrideBackAction", "()Z", "setOverrideBackAction", "(Z)V", "focus", "", "clearText", "setText", "text", "", "cancelSearch", "setOnCloseListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnSearchClickListener", "onAttachedToWindow", "onDetachedFromWindow", "react-native-screens_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CustomSearchView extends SearchView {
    private final FragmentBackPressOverrider backPressOverrider;
    private OnBackPressedCallback onBackPressedCallback;
    private SearchView.OnCloseListener onCloseListener;
    private View.OnClickListener onSearchClickedListener;

    public CustomSearchView(Context context, Fragment fragment) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.onBackPressedCallback = new OnBackPressedCallback() {
            {
                super(true);
            }

            @Override
            public void handleOnBackPressed() {
                this.this$0.setIconified(true);
            }
        };
        this.backPressOverrider = new FragmentBackPressOverrider(fragment, this.onBackPressedCallback);
        super.setOnSearchClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CustomSearchView._init_$lambda$0(this.f$0, view);
            }
        });
        super.setOnCloseListener(new SearchView.OnCloseListener() {
            @Override
            public final boolean onClose() {
                return CustomSearchView._init_$lambda$1(this.f$0);
            }
        });
        setMaxWidth(Integer.MAX_VALUE);
    }

    public final void setOverrideBackAction(boolean z) {
        this.backPressOverrider.setOverrideBackAction(z);
    }

    public final boolean getOverrideBackAction() {
        return this.backPressOverrider.getOverrideBackAction();
    }

    public final void focus() {
        setIconified(false);
        requestFocusFromTouch();
    }

    public final void clearText() {
        setQuery("", false);
    }

    public final void setText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        setQuery(text, false);
    }

    public final void cancelSearch() {
        clearText();
        setIconified(true);
    }

    @Override
    public void setOnCloseListener(SearchView.OnCloseListener listener) {
        this.onCloseListener = listener;
    }

    @Override
    public void setOnSearchClickListener(View.OnClickListener listener) {
        this.onSearchClickedListener = listener;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isIconified()) {
            return;
        }
        this.backPressOverrider.maybeAddBackCallback();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.backPressOverrider.removeBackCallbackIfAdded();
    }

    public static final void _init_$lambda$0(CustomSearchView customSearchView, View view) {
        View.OnClickListener onClickListener = customSearchView.onSearchClickedListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        customSearchView.backPressOverrider.maybeAddBackCallback();
    }

    public static final boolean _init_$lambda$1(CustomSearchView customSearchView) {
        SearchView.OnCloseListener onCloseListener = customSearchView.onCloseListener;
        boolean zOnClose = onCloseListener != null ? onCloseListener.onClose() : false;
        customSearchView.backPressOverrider.removeBackCallbackIfAdded();
        return zOnClose;
    }
}
