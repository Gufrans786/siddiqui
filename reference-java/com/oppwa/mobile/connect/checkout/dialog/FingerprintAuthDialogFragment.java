package com.oppwa.mobile.connect.checkout.dialog;

import android.app.KeyguardManager;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.oppwa.mobile.connect.R;

public class FingerprintAuthDialogFragment extends DialogFragment {
    static String l = "com.oppwa.mobile.connect.checkout.dialog.EXTRA_TITLE";
    private q a;
    private ImageView b;
    private TextView c;
    private Button d;
    private KeyguardManager e;
    private FingerprintManager f;
    private CancellationSignal g;
    private final FingerprintManager.AuthenticationCallback h = new a();
    private final Runnable i = new b();
    private String j;
    private boolean k;

    class a extends FingerprintManager.AuthenticationCallback {
        a() {
        }

        @Override
        public void onAuthenticationError(int i, CharSequence charSequence) {
            super.onAuthenticationError(i, charSequence);
            if (FingerprintAuthDialogFragment.this.k) {
                return;
            }
            FingerprintAuthDialogFragment.this.a(charSequence);
        }

        @Override
        public void onAuthenticationFailed() {
            super.onAuthenticationFailed();
            FingerprintAuthDialogFragment.this.c();
        }

        @Override
        public void onAuthenticationHelp(int i, CharSequence charSequence) {
            super.onAuthenticationHelp(i, charSequence);
            FingerprintAuthDialogFragment.this.b(charSequence);
        }

        @Override
        public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
            super.onAuthenticationSucceeded(authenticationResult);
            FingerprintAuthDialogFragment.this.d();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            if (FingerprintAuthDialogFragment.this.isAdded()) {
                FingerprintAuthDialogFragment.this.b.setImageResource(R.drawable.ic_fingerprint);
                FingerprintAuthDialogFragment.this.c.setText(R.string.checkout_fingerprint_touch_sensor);
                FingerprintAuthDialogFragment.this.c.setTextColor(FingerprintAuthDialogFragment.this.getResources().getColor(R.color.checkout_text_color_hint, null));
            }
        }
    }

    private void f() {
        if (this.f == null) {
            return;
        }
        this.g = new CancellationSignal();
        if (getActivity().checkSelfPermission("android.permission.USE_FINGERPRINT") == 0) {
            this.f.authenticate(null, this.g, 0, this.h, null);
        }
    }

    private void g() {
        this.k = true;
        this.g.cancel();
        this.g = null;
    }

    public static FingerprintAuthDialogFragment newInstance(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(l, str);
        FingerprintAuthDialogFragment fingerprintAuthDialogFragment = new FingerprintAuthDialogFragment();
        fingerprintAuthDialogFragment.setArguments(bundle);
        return fingerprintAuthDialogFragment;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        setCancelable(false);
        e();
        this.j = getArguments().getString(l);
        this.e = (KeyguardManager) getActivity().getSystemService("keyguard");
        this.f = (FingerprintManager) getActivity().getSystemService("fingerprint");
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_dialog_fingerprint_auth, viewGroup, false);
    }

    @Override
    public void onPause() {
        super.onPause();
        g();
    }

    @Override
    public void onResume() {
        super.onResume();
        f();
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.b = (ImageView) view.findViewById(R.id.fingerprint_icon);
        this.c = (TextView) view.findViewById(R.id.fingerprint_status);
        this.d = (Button) view.findViewById(R.id.enter_pin_button);
        ((Button) view.findViewById(R.id.cancel_button)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.a(view2);
            }
        });
    }

    public void setListener(q qVar) {
        this.a = qVar;
    }

    public void c() {
        this.b.setImageResource(R.drawable.opp_ic_fingerprint_error);
        this.c.setText(R.string.checkout_fingerprint_not_recognized);
        this.c.setTextColor(getResources().getColor(R.color.checkout_helper_text_color, null));
        this.c.removeCallbacks(this.i);
        this.c.postDelayed(this.i, 1500L);
        if (this.d.getVisibility() == 8) {
            this.d.setVisibility(0);
            this.d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f$0.b(view);
                }
            });
        }
    }

    public void d() {
        this.b.setImageResource(R.drawable.opp_ic_fingerprint_success);
        this.c.setText(R.string.checkout_fingerprint_success);
        this.c.setTextColor(getResources().getColor(R.color.success_color, null));
        this.c.removeCallbacks(this.i);
        this.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f$0.b();
            }
        }, 1500L);
    }

    public void a(View view) {
        q qVar = this.a;
        if (qVar != null) {
            qVar.a();
        }
        dismiss();
    }

    public void b(View view) {
        getActivity().startActivityForResult(this.e.createConfirmDeviceCredentialIntent(this.j, getString(R.string.checkout_auth_confirm_payment)), 700);
        dismiss();
    }

    private void e() {
        setStyle(1, android.R.style.Theme.Material.Light.Dialog);
    }

    public void a(CharSequence charSequence) {
        this.b.setImageResource(R.drawable.opp_ic_fingerprint_error);
        this.c.setText(charSequence);
        this.c.setTextColor(getResources().getColor(R.color.checkout_helper_text_color, null));
        this.c.removeCallbacks(this.i);
        this.c.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a();
            }
        }, 1500L);
    }

    public void a() {
        q qVar = this.a;
        if (qVar != null) {
            qVar.b();
            dismiss();
        }
    }

    public void b(CharSequence charSequence) {
        this.b.setImageResource(R.drawable.opp_ic_fingerprint_error);
        this.c.setText(charSequence);
        this.c.setTextColor(getResources().getColor(R.color.checkout_helper_text_color, null));
        this.c.removeCallbacks(this.i);
        this.c.postDelayed(this.i, 1500L);
    }

    public void b() {
        q qVar = this.a;
        if (qVar != null) {
            qVar.c();
            dismiss();
        }
    }
}
