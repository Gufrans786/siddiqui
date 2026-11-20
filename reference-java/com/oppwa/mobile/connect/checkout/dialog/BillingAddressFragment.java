package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.widget.AppCompatSpinner;
import com.mapbox.maps.plugin.scalebar.LocaleUnitResolver;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.checkout.dialog.view.CheckoutTextView;
import com.oppwa.mobile.connect.payment.BillingAddress;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BillingAddressFragment extends BaseFragment implements AdapterView.OnItemSelectedListener {
    private final Set<InputLayout> d;
    private BillingAddress e;
    private AppCompatSpinner f;
    private CheckoutTextView g;
    private AppCompatSpinner h;
    private CheckoutTextView i;
    private ArrayAdapter<String> j;
    private InputLayout k;
    private InputLayout l;
    private InputLayout m;

    private InputLayout f3727n;
    private InputLayout o;
    private OnBackPressedCallback p;
    private LinkedList<String> q;
    private LinkedList<String> r;

    class a extends OnBackPressedCallback {
        a(boolean z) {
            super(z);
        }

        @Override
        public void handleOnBackPressed() {
            BillingAddressFragment.this.h();
        }
    }

    class b extends ArrayAdapter<String> {
        final String a;
        final List b;

        b(Context context, int i, List list, String str, List list2) {
            super(context, i, list);
            this.a = str;
            this.b = list2;
        }

        @Override
        public String getItem(int i) {
            return i == 0 ? this.a : (String) this.b.get(i);
        }
    }

    public BillingAddressFragment() {
        super(R.layout.opp_fragment_billing_address);
        this.d = new HashSet();
    }

    private void b(View view) {
        InputLayout inputLayout = (InputLayout) view.findViewById(R.id.city_input_layout);
        this.l = inputLayout;
        a(inputLayout, this.e.getCity(), this.e.isCityRequired(), R.string.checkout_billing_address_city_hint, R.string.checkout_billing_address_city_required_error);
    }

    private void c(View view) {
        AppCompatSpinner appCompatSpinner = (AppCompatSpinner) view.findViewById(R.id.country_spinner);
        this.f = appCompatSpinner;
        appCompatSpinner.setOnItemSelectedListener(this);
        LinkedList linkedList = new LinkedList(m.b().values());
        linkedList.addFirst("NOT_SELECTED");
        ArrayAdapter<String> arrayAdapterA = a(linkedList, R.string.checkout_billing_address_country_spinner_hint, this.e.isCountryRequired());
        this.f.setAdapter((SpinnerAdapter) arrayAdapterA);
        this.f.setSelection(a(arrayAdapterA, m.b().get(this.e.getCountry())), false);
        this.g = (CheckoutTextView) view.findViewById(R.id.country_spinner_helper_text_view);
    }

    private void d(View view) {
        InputLayout inputLayout = (InputLayout) view.findViewById(R.id.post_code_input_layout);
        this.m = inputLayout;
        a(inputLayout, this.e.getPostCode(), this.e.isPostCodeRequired(), R.string.checkout_billing_address_post_code_hint, R.string.checkout_billing_address_post_code_required_error);
    }

    private void e(View view) {
        InputLayout inputLayout = (InputLayout) view.findViewById(R.id.state_input_layout);
        this.k = inputLayout;
        a(inputLayout, this.e.getState(), this.e.isStateRequired(), R.string.checkout_billing_address_state_hint, R.string.checkout_billing_address_state_required_error);
        AppCompatSpinner appCompatSpinner = (AppCompatSpinner) view.findViewById(R.id.state_spinner);
        this.h = appCompatSpinner;
        appCompatSpinner.setOnItemSelectedListener(this);
        this.i = (CheckoutTextView) view.findViewById(R.id.state_spinner_helper_text_view);
    }

    private void f(View view) {
        InputLayout inputLayout = (InputLayout) view.findViewById(R.id.street1_input_layout);
        this.f3727n = inputLayout;
        a(inputLayout, this.e.getStreet1(), this.e.isStreet1Required(), R.string.checkout_billing_address_street1_hint, R.string.checkout_billing_address_street_required_error);
    }

    private void g(View view) {
        InputLayout inputLayout = (InputLayout) view.findViewById(R.id.street2_input_layout);
        this.o = inputLayout;
        a(inputLayout, this.e.getStreet2(), this.e.isStreet2Required(), R.string.checkout_billing_address_street2_hint, R.string.checkout_billing_address_street_required_error);
    }

    public void h() {
        if (g()) {
            getParentFragmentManager().setFragmentResult(BillingAddressFragment.class.getName(), c());
            this.p.setEnabled(false);
            requireActivity().onBackPressed();
        }
    }

    private void i() {
        String strE = e();
        this.g.setVisibility(4);
        if ("CA".equals(strE)) {
            a(new LinkedList(d()), m.a().get(this.e.getState()));
            return;
        }
        if (LocaleUnitResolver.ImperialCountryCode.US.equals(strE)) {
            a(new LinkedList(f()), m.c().get(this.e.getState()));
            return;
        }
        if (!TextUtils.equals(strE, this.e.getCountry()) || !this.k.getText().equals(this.e.getState())) {
            this.k.getEditText().setText("");
        }
        this.h.setVisibility(8);
        this.i.setVisibility(8);
        this.k.setVisibility(0);
    }

    private void j() {
        this.i.setVisibility(4);
        this.k.clearError();
        this.k.getEditText().setText(this.h.getSelectedItem().toString());
    }

    private void k() {
        this.k.setVisibility(8);
        this.h.setVisibility(0);
        this.i.setVisibility(4);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.p = new a(true);
        requireActivity().getOnBackPressedDispatcher().addCallback(this, this.p);
    }

    @Override
    public void onDetach() {
        super.onDetach();
        this.p.remove();
    }

    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView == this.f) {
            i();
        }
        if (adapterView == this.h) {
            j();
        }
    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.e = (BillingAddress) requireArguments().getParcelable("BILLING_ADDRESS_KEY");
        this.a.setText(R.string.checkout_billing_address_title);
        this.b.setVisibility(0);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.a(view2);
            }
        });
        c(view);
        e(view);
        b(view);
        d(view);
        f(view);
        g(view);
        b();
    }

    public void a(View view) {
        h();
    }

    private int a(ArrayAdapter<String> arrayAdapter, String str) {
        if (arrayAdapter.getPosition(str) == -1) {
            return 0;
        }
        return arrayAdapter.getPosition(str);
    }

    private ArrayAdapter<String> a(List<String> list, int i, boolean z) {
        String string;
        if (z) {
            string = getString(i);
        } else {
            string = String.format(getString(R.string.checkout_billing_address_optional), getString(i));
        }
        return new b(getActivity(), R.layout.opp_item_countries_states, list, string, list);
    }

    private void b() {
        this.k.getEditText().setInputType(528384);
        this.k.getEditText().setImeOptions(5);
        this.l.getEditText().setInputType(528384);
        this.l.getEditText().setImeOptions(5);
        this.m.getEditText().setInputType(2);
        this.m.getEditText().setImeOptions(5);
        this.f3727n.getEditText().setInputType(528384);
        this.f3727n.getEditText().setImeOptions(5);
        this.o.getEditText().setInputType(528384);
        this.o.getEditText().setImeOptions(6);
    }

    private List<String> d() {
        if (this.r == null) {
            LinkedList<String> linkedList = new LinkedList<>(m.a().values());
            this.r = linkedList;
            linkedList.addFirst("NOT_SELECTED");
        }
        return this.r;
    }

    private List<String> f() {
        if (this.q == null) {
            LinkedList<String> linkedList = new LinkedList<>(m.c().values());
            this.q = linkedList;
            linkedList.addFirst("NOT_SELECTED");
        }
        return this.q;
    }

    private boolean g() {
        boolean z;
        if (this.e.isCountryRequired() && this.f.getSelectedItemPosition() == 0) {
            this.g.setVisibility(0);
            z = false;
        } else {
            z = true;
        }
        if (this.h.getVisibility() == 0 && this.e.isStateRequired() && this.h.getSelectedItemPosition() == 0) {
            this.i.setVisibility(0);
            z = false;
        }
        Iterator<InputLayout> it = this.d.iterator();
        while (it.hasNext()) {
            if (!it.next().validate()) {
                z = false;
            }
        }
        return z;
    }

    private void a(InputLayout inputLayout, String str, boolean z, int i, int i2) {
        String string = getString(i);
        if (!z) {
            string = String.format(getString(R.string.checkout_billing_address_optional), string);
            inputLayout.setOptional(true);
        }
        inputLayout.setHint(string);
        inputLayout.setText(str);
        inputLayout.setInputValidator(s.b(i2));
        this.d.add(inputLayout);
    }

    private String e() {
        return a(m.b(), this.f.getSelectedItem().toString());
    }

    private String b(String str) {
        if (LocaleUnitResolver.ImperialCountryCode.US.equals(str)) {
            return a(m.c(), this.h.getSelectedItem().toString());
        }
        if ("CA".equals(str)) {
            return a(m.a(), this.h.getSelectedItem().toString());
        }
        return null;
    }

    private String a(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (TextUtils.equals(entry.getValue(), str)) {
                return entry.getKey();
            }
        }
        return null;
    }

    private String a(String str) {
        if (this.k.getVisibility() == 0) {
            return this.k.getText();
        }
        return b(str);
    }

    private void a(List<String> list, String str) {
        ArrayAdapter<String> arrayAdapter = this.j;
        if (arrayAdapter == null) {
            ArrayAdapter<String> arrayAdapterA = a(list, R.string.checkout_billing_address_state_spinner_hint, this.e.isStateRequired());
            this.j = arrayAdapterA;
            this.h.setAdapter((SpinnerAdapter) arrayAdapterA);
        } else {
            arrayAdapter.clear();
            this.j.addAll(list);
            this.j.notifyDataSetChanged();
        }
        this.h.setSelection(a(this.j, str), false);
        k();
    }

    private Bundle c() {
        String strE = e();
        String strA = a(strE);
        String text = this.l.getText();
        String text2 = this.m.getText();
        String text3 = this.f3727n.getText();
        String text4 = this.o.getText();
        BillingAddress.Builder country = new BillingAddress.Builder().setCountry(strE);
        if (TextUtils.isEmpty(strA)) {
            strA = null;
        }
        BillingAddress.Builder state = country.setState(strA);
        if (TextUtils.isEmpty(text)) {
            text = null;
        }
        BillingAddress.Builder city = state.setCity(text);
        if (TextUtils.isEmpty(text2)) {
            text2 = null;
        }
        BillingAddress.Builder postCode = city.setPostCode(text2);
        if (TextUtils.isEmpty(text3)) {
            text3 = null;
        }
        BillingAddress.Builder street1 = postCode.setStreet1(text3);
        if (TextUtils.isEmpty(text4)) {
            text4 = null;
        }
        BillingAddress billingAddressBuild = street1.setStreet2(text4).setCountryRequired(Boolean.valueOf(this.e.isCountryRequired())).setStateRequired(Boolean.valueOf(this.e.isStateRequired())).setCityRequired(Boolean.valueOf(this.e.isCityRequired())).setPostCodeRequired(Boolean.valueOf(this.e.isPostCodeRequired())).setStreet1Required(Boolean.valueOf(this.e.isStreet1Required())).setStreet2Required(Boolean.valueOf(this.e.isStreet2Required())).build();
        Bundle bundle = new Bundle();
        bundle.putParcelable("BILLING_ADDRESS_KEY", billingAddressBuild);
        return bundle;
    }
}
