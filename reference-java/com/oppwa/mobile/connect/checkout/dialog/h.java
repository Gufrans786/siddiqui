package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;

class h extends RecyclerView.Adapter<b> {
    private final Context a;
    private String[] b;
    private a c;
    private int d = 0;

    interface a {
        void a(String str);
    }

    static class b extends RecyclerView.ViewHolder {
        ImageView a;
        ProgressBar b;
        RelativeLayout c;

        b(View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.card_brand_logo);
            this.b = (ProgressBar) view.findViewById(R.id.loading_panel);
            this.c = (RelativeLayout) view.findViewById(R.id.card_brand_border);
        }
    }

    h(Context context, String[] strArr) {
        this.a = context;
        this.b = strArr;
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    @Override
    public int getItemCount() {
        return this.b.length;
    }

    public void a(String[] strArr) {
        this.b = strArr;
    }

    void a(String str) {
        String[] strArr = this.b;
        int length = strArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length && !strArr[i2].equals(str); i2++) {
            i++;
        }
        this.d = i;
    }

    @Override
    public b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.a).inflate(R.layout.opp_item_card_brands, viewGroup, false));
    }

    @Override
    public void onBindViewHolder(final b bVar, int i) throws Throwable {
        bVar.b.setVisibility(0);
        String str = this.b[i];
        Bitmap bitmapC = ImageLoader.a(this.a).c(str);
        String strB = l.b(this.a, str);
        if (bitmapC != null) {
            bVar.a.setImageBitmap(bitmapC);
            bVar.b.setVisibility(8);
        }
        bVar.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.a(bVar, view);
            }
        });
        if (i == this.d) {
            bVar.c.setSelected(true);
            bVar.itemView.setContentDescription(strB + " " + this.a.getString(R.string.checkout_layout_text_selected));
        } else {
            bVar.c.setSelected(false);
            bVar.itemView.setContentDescription(strB);
        }
        bVar.itemView.setTag(str);
    }

    public void a(b bVar, View view) {
        this.d = bVar.getAdapterPosition();
        notifyDataSetChanged();
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(this.b[this.d]);
        }
    }
}
