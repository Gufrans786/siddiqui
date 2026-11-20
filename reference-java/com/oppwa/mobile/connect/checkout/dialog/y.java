package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;

class y extends RecyclerView.Adapter<b> {
    private final Context a;
    private final String[] b;
    private final Bundle c;
    private a d;

    interface a {
        void a(String str);
    }

    static class b extends RecyclerView.ViewHolder {
        ImageView a;
        TextView b;
        ProgressBar c;

        b(View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.payment_brand_image);
            this.b = (TextView) view.findViewById(R.id.payment_brand_title);
            this.c = (ProgressBar) view.findViewById(R.id.loading_panel);
        }
    }

    y(Context context, String[] strArr, Bundle bundle) {
        this.a = context;
        this.b = strArr;
        this.c = bundle;
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.a).inflate(R.layout.opp_item_payment_brand, viewGroup, false));
    }

    @Override
    public int getItemCount() {
        return this.b.length;
    }

    @Override
    public void onBindViewHolder(b bVar, int i) throws Throwable {
        bVar.c.setVisibility(0);
        final String str = this.b[i];
        Bitmap bitmapC = ImageLoader.a(this.a).c(str);
        if (bitmapC != null) {
            bVar.c.setVisibility(8);
            bVar.a.setImageBitmap(bitmapC);
        }
        String strA = a(this.a, str);
        bVar.b.setText(strA);
        bVar.itemView.setContentDescription(strA);
        bVar.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.a(str, view);
            }
        });
    }

    public void a(String str, View view) {
        a aVar = this.d;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    private String a(Context context, String str) {
        int iC = l.c(context, str);
        if (iC != 0) {
            return context.getString(iC);
        }
        String string = this.c.getString(str);
        return (string == null || string.isEmpty()) ? f0.a(str) : string;
    }
}
