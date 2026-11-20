package com.oppwa.mobile.connect.checkout.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.meta.CheckoutCardBrandsDisplayMode;
import com.oppwa.mobile.connect.checkout.meta.CheckoutSettings;
import com.oppwa.mobile.connect.payment.BrandsValidation;
import com.oppwa.mobile.connect.payment.CheckoutInfo;
import com.oppwa.mobile.connect.payment.token.Token;
import java.util.ArrayList;

public class PaymentMethodSelectionFragment extends BaseFragment implements ImageLoader.Listener {
    private Token[] d;
    private String[] e;
    private String[] f;
    private String[] g;
    private CheckoutInfo h;
    private CheckoutSettings i;
    private BrandsValidation j;
    private y k;
    private GroupedCardsAdapter l;
    private c0 m;

    public void b(String str) {
        a(str, (Token) null);
    }

    private void c(View view) {
        TextView textView = (TextView) view.findViewById(R.id.payment_cards_brand_section_title);
        textView.setVisibility(0);
        textView.setText(textView.getText().toString().toUpperCase());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.payment_cards_brands_recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.l = new GroupedCardsAdapter(getContext(), this.f);
        linearLayoutManager.setOrientation(1);
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.l);
        this.l.setListener(new GroupedCardsAdapter.b() {
            @Override
            public final void a(String str) {
                this.f$0.b(str);
            }
        });
    }

    private void d(View view) {
        if (this.f.length > 0) {
            c(view);
        }
        if (this.g.length > 0) {
            e(view);
        }
    }

    private void e(View view) {
        a(view, this.g);
    }

    private void f(View view) {
        a(view, this.e);
    }

    private void g(View view) {
        Token[] tokenArr = this.d;
        if (tokenArr != null && tokenArr.length > 0) {
            TextView textView = (TextView) view.findViewById(R.id.payment_tokens_section_title);
            textView.setVisibility(0);
            textView.setText(textView.getText().toString().toUpperCase());
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.payment_tokens_recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.m = new c0(getContext(), this.d, f0.a((Activity) getActivity()));
        linearLayoutManager.setOrientation(0);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.m);
        this.m.a(new c0.b() {
            @Override
            public final void a(Token token) {
                this.f$0.a(token);
            }
        });
    }

    private void h(View view) {
        view.findViewById(R.id.total_amount_view).setVisibility(0);
        TextView textView = (TextView) view.findViewById(R.id.total_amount_header);
        TextView textView2 = (TextView) view.findViewById(R.id.total_amount_value);
        textView.setText(getString(R.string.checkout_layout_text_total_amount));
        textView2.setText(f0.a(this.h.getAmount(), this.h.getCurrencyCode()));
    }

    public static PaymentMethodSelectionFragment newInstance(a0 a0Var, CheckoutSettings checkoutSettings, CheckoutInfo checkoutInfo, BrandsValidation brandsValidation) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_METHODS", a0Var);
        bundle.putParcelable(CheckoutActivity.CHECKOUT_SETTINGS, checkoutSettings);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO", checkoutInfo);
        bundle.putParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION", brandsValidation);
        PaymentMethodSelectionFragment paymentMethodSelectionFragment = new PaymentMethodSelectionFragment();
        paymentMethodSelectionFragment.setArguments(bundle);
        return paymentMethodSelectionFragment;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.i = (CheckoutSettings) arguments.getParcelable(CheckoutActivity.CHECKOUT_SETTINGS);
            this.h = (CheckoutInfo) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CHECKOUT_INFO");
            this.j = (BrandsValidation) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_BRANDS_VALIDATION");
            a0 a0Var = (a0) arguments.getParcelable("com.oppwa.mobile.connect.checkout.dialog.EXTRA_PAYMENT_METHODS");
            this.d = a0Var.d();
            this.e = a0Var.c();
            b();
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_payment_method_selection, viewGroup, false);
    }

    @Override
    public void onImageLoaded(String str) {
        if (this.m != null) {
            int i = 0;
            for (Token token : this.d) {
                if (token.getPaymentBrand().equals(str)) {
                    this.m.notifyItemChanged(i);
                }
                i++;
            }
        }
        if (this.k != null) {
            int i2 = 0;
            for (String str2 : c() ? this.g : this.e) {
                if (str2.equalsIgnoreCase(str)) {
                    this.k.notifyItemChanged(i2);
                }
                i2++;
            }
        }
        if (this.l != null) {
            int i3 = 0;
            for (String str3 : this.f) {
                if (str3.equals(str)) {
                    if (this.l.a() != null) {
                        this.l.a().notifyItemChanged(i3);
                    }
                    this.l.notifyItemChanged(0);
                }
                i3++;
            }
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        ImageLoader.a(getContext()).b(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        ImageLoader.a(getContext()).a(this);
    }

    @Override
    public void onViewCreated(final View view, Bundle bundle) {
        final j jVarU;
        super.onViewCreated(view, bundle);
        this.a.setText(R.string.checkout_layout_text_select_payment_method);
        if (this.d != null) {
            g(view);
        }
        if (this.e != null) {
            if (c()) {
                d(view);
            } else {
                f(view);
            }
        }
        if (this.i.isTotalAmountRequired() && this.h != null) {
            h(view);
        }
        FragmentActivity activity = getActivity();
        if (activity == null || !(activity instanceof CheckoutActivity) || f0.b(getActivity()) || (jVarU = ((CheckoutActivity) getActivity()).u()) == null) {
            return;
        }
        view.post(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a(view, jVarU);
            }
        });
    }

    public void a(Token token) {
        a(token.getPaymentBrand(), token);
    }

    private void b() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : this.e) {
            if (this.j.isCardBrand(str)) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        this.f = (String[]) arrayList.toArray(new String[0]);
        this.g = (String[]) arrayList2.toArray(new String[0]);
    }

    private void a(View view, String[] strArr) {
        Token[] tokenArr = this.d;
        boolean z = tokenArr != null && tokenArr.length > 0;
        boolean z2 = this.f.length > 0 && c();
        if (z || z2) {
            TextView textView = (TextView) view.findViewById(R.id.payment_brand_section_title);
            textView.setVisibility(0);
            textView.setText(textView.getText().toString().toUpperCase());
        }
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.payment_brands_recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        this.k = new y(getContext(), strArr, this.j.getLabels());
        linearLayoutManager.setOrientation(1);
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.k);
        this.k.a(new y.a() {
            @Override
            public final void a(String str) {
                this.f$0.a(str);
            }
        });
    }

    public void a(View view, j jVar) {
        int iC = jVar.c();
        int iB = b(view.findViewById(R.id.payment_method_selection_layout));
        if (iB > 0) {
            a(jVar, iC, iB);
        }
    }

    private boolean c() {
        return this.i.getCardBrandsDisplayMode() == CheckoutCardBrandsDisplayMode.GROUPED;
    }

    private int b(View view) {
        if (view == null) {
            return 0;
        }
        return view.getHeight();
    }

    public void a(String str) {
        a(str, (Token) null);
    }

    protected static void a(j jVar, int i, int i2) {
        if (i <= i2) {
            if (i < i2) {
                jVar.a(i2, i);
            }
        } else {
            int iD = i - (i - i2);
            if (iD < jVar.d()) {
                iD = jVar.d();
            }
            jVar.a(i, iD);
        }
    }

    private void a(String str, Token token) {
        Bundle bundle = new Bundle();
        bundle.putString("PAYMENT_METHOD_RESULT_KEY", str);
        bundle.putParcelable("TOKEN_RESULT_KEY", token);
        getParentFragmentManager().setFragmentResult(PaymentMethodSelectionFragment.class.getName(), bundle);
    }
}
