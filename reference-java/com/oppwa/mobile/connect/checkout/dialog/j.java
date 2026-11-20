package com.oppwa.mobile.connect.checkout.dialog;

import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.oppwa.mobile.connect.R;
import java.util.Objects;

class j {
    private static final int g = R.id.container;
    private final FragmentActivity a;
    private final FragmentManager b;
    private final View c;
    private boolean f = false;
    private final int d = e();
    private final int e = c();

    j(FragmentActivity fragmentActivity) {
        this.a = fragmentActivity;
        this.b = fragmentActivity.getSupportFragmentManager();
        this.c = fragmentActivity.findViewById(g);
    }

    private int e() {
        WindowManager windowManager = (WindowManager) this.a.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    private boolean h() {
        FragmentActivity fragmentActivity = this.a;
        return (fragmentActivity == null || fragmentActivity.isFinishing() || this.a.isDestroyed()) ? false : true;
    }

    public void i() {
        a(this.c.getHeight(), 0);
        Handler handler = new Handler(Looper.getMainLooper());
        final FragmentActivity fragmentActivity = this.a;
        Objects.requireNonNull(fragmentActivity);
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                fragmentActivity.finish();
            }
        }, 500L);
    }

    void a(boolean z) {
        this.f = z;
    }

    Fragment b() {
        return this.b.findFragmentById(g);
    }

    int c() {
        return (int) ((((double) this.d) * 60.0d) / 100.0d);
    }

    int d() {
        return (int) ((((double) this.d) * 35.0d) / 100.0d);
    }

    void f() {
        String name = null;
        for (int backStackEntryCount = this.b.getBackStackEntryCount() - 2; backStackEntryCount >= 0; backStackEntryCount--) {
            name = this.b.getBackStackEntryAt(backStackEntryCount).getName();
            if (name != null) {
                break;
            }
        }
        if (name == null) {
            this.b.popBackStackImmediate();
        } else {
            this.b.popBackStackImmediate(name, 0);
            a(name, this.c.getHeight());
        }
    }

    boolean g() {
        return b() != null;
    }

    boolean j() {
        return (b() instanceof PaymentMethodSelectionFragment) || (b() instanceof OrderSummaryFragment) || this.f;
    }

    boolean k() {
        return this.f;
    }

    private ValueAnimator b(int i, int i2) {
        final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.a(valueAnimatorOfInt, valueAnimator);
            }
        });
        valueAnimatorOfInt.setDuration(500L);
        return valueAnimatorOfInt;
    }

    void a() {
        this.a.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                this.f$0.i();
            }
        });
    }

    void a(Fragment fragment) {
        int height = g() ? this.c.getHeight() : 0;
        a(fragment, (fragment instanceof ProcessingFragment) || (fragment instanceof CheckoutThreeDS2WebViewFragment));
        a(fragment, height);
    }

    private void a(Fragment fragment, int i) {
        a(fragment.getClass().getName(), i);
    }

    private void a(String str, int i) {
        a(i, a(str) ? this.d : this.e);
    }

    private boolean a(String str) {
        if (f0.b(this.a)) {
            return true;
        }
        return (str.equals(PaymentMethodSelectionFragment.class.getName()) || str.equals(ProcessingFragment.class.getName())) ? false : true;
    }

    private void a(Fragment fragment, boolean z) {
        if (h()) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.b.beginTransaction();
            fragmentTransactionBeginTransaction.replace(g, fragment);
            fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.opp_fragment_in, R.anim.opp_fragment_out);
            fragmentTransactionBeginTransaction.addToBackStack(z ? null : fragment.getClass().getName());
            fragmentTransactionBeginTransaction.commit();
        }
    }

    void a(int i, int i2) {
        if (this.c.getHeight() != i2) {
            final ValueAnimator valueAnimatorB = b(i, i2);
            FragmentActivity fragmentActivity = this.a;
            Objects.requireNonNull(valueAnimatorB);
            fragmentActivity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    valueAnimatorB.start();
                }
            });
        }
    }

    public void a(ValueAnimator valueAnimator, ValueAnimator valueAnimator2) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
        layoutParams.height = iIntValue;
        this.c.setLayoutParams(layoutParams);
    }
}
