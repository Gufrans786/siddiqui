package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.oppwa.mobile.connect.R;

class w extends BaseAdapter {
    private final b[] a;
    private final LayoutInflater b;
    private int c;

    static class b {
        String a;
        String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    private static class c {
        TextView a;
        ImageView b;

        private c() {
        }
    }

    w(Context context, b[] bVarArr) {
        this.a = bVarArr;
        this.b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    int a() {
        return this.c;
    }

    @Override
    public int getCount() {
        return this.a.length;
    }

    @Override
    public Object getItem(int i) {
        return this.a[i];
    }

    @Override
    public long getItemId(int i) {
        return 0L;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        c cVar;
        if (view == null) {
            view = this.b.inflate(R.layout.opp_item_payment_info, viewGroup, false);
            cVar = new c();
            cVar.a = (TextView) view.findViewById(R.id.text_view);
            cVar.b = (ImageView) view.findViewById(R.id.mark_image_view);
            view.setTag(cVar);
        } else {
            cVar = (c) view.getTag();
        }
        cVar.a.setText(this.a[i].a);
        if (i == this.c) {
            cVar.b.setVisibility(0);
            return view;
        }
        cVar.b.setVisibility(4);
        return view;
    }

    void a(int i) {
        this.c = i;
    }
}
