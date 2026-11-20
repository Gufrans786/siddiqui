package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.oppwa.mobile.connect.R;

public abstract class ListPaymentInfoFragment extends PaymentInfoFragment {
    protected ListView o;
    protected w p;
    protected RelativeLayout q;
    protected RelativeLayout r;

    public void a(AdapterView adapterView, View view, int i, long j) {
        this.p.a(i);
        this.p.notifyDataSetChanged();
    }

    protected abstract w.b[] d();

    protected String e() {
        return ((w.b) this.o.getItemAtPosition(this.p.a())).b;
    }

    protected void f() {
        this.r.setVisibility(0);
        this.q.setVisibility(8);
    }

    protected void g() {
        this.l.setVisibility(8);
    }

    protected void h() {
        w wVar = new w(getContext(), d());
        this.p = wVar;
        this.o.setAdapter((ListAdapter) wVar);
        this.o.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                this.f$0.a(adapterView, view, i, j);
            }
        });
        this.p.a(0);
    }

    protected void i() {
        this.r.setVisibility(8);
        this.q.setVisibility(0);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.opp_fragment_list_payment_info, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.o = (ListView) view.findViewById(R.id.list_view);
        this.q = (RelativeLayout) view.findViewById(R.id.list_payment_info_view);
        this.r = (RelativeLayout) view.findViewById(R.id.progress_view);
    }
}
