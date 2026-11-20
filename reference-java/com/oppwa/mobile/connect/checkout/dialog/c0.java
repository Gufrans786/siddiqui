package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.payment.card.CardPaymentParams;
import com.oppwa.mobile.connect.payment.token.Card;
import com.oppwa.mobile.connect.payment.token.Token;

class c0 extends RecyclerView.Adapter<c> {
    private final Context a;
    private final Token[] b;
    private final int c;
    private b d;
    private boolean e = false;
    private int f = 0;
    private int g = 0;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        final c a;

        a(c cVar) {
            this.a = cVar;
        }

        @Override
        public void onGlobalLayout() {
            this.a.itemView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            c0.this.a(this.a.itemView);
            c0.this.notifyDataSetChanged();
        }
    }

    interface b {
        void a(Token token);
    }

    class c extends RecyclerView.ViewHolder {
        ImageView a;
        TextView b;
        ProgressBar c;

        c(View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.payment_token_image);
            this.b = (TextView) view.findViewById(R.id.payment_token_title);
            this.c = (ProgressBar) view.findViewById(R.id.loading_panel);
            c0.this.g = this.b.getCurrentTextColor();
        }
    }

    c0(Context context, Token[] tokenArr, int i) {
        this.a = context;
        this.b = tokenArr;
        this.c = i;
    }

    private boolean b(Token token) {
        Card card = token.getCard();
        return card != null && CardPaymentParams.isCardExpired(card.getExpiryMonth(), card.getExpiryYear());
    }

    @Override
    public int getItemCount() {
        return this.b.length;
    }

    @Override
    public c onCreateViewHolder(ViewGroup viewGroup, int i) {
        c cVar = new c(LayoutInflater.from(this.a).inflate(R.layout.opp_item_payment_token, viewGroup, false));
        if (!this.e) {
            ViewTreeObserver viewTreeObserver = cVar.itemView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                this.e = true;
                viewTreeObserver.addOnGlobalLayoutListener(new a(cVar));
            }
        }
        return cVar;
    }

    public void a(View view) {
        this.f = (int) (((double) view.getWidth()) * ((((double) this.c) / (((double) (this.c / view.getWidth())) - 0.5d)) / ((double) view.getWidth())));
    }

    @Override
    public void onBindViewHolder(c cVar, int i) throws Throwable {
        final Token token = this.b[i];
        String strA = a(token);
        String str = String.format(this.a.getString(R.string.checkout_layout_text_pay_with_stored_payment_method), l.b(this.a, token.getPaymentBrand()));
        Bitmap bitmapC = ImageLoader.a(this.a).c(token.getPaymentBrand());
        if (bitmapC != null) {
            cVar.a.setImageBitmap(bitmapC);
            cVar.c.setVisibility(8);
        }
        cVar.b.setText(strA);
        cVar.itemView.setContentDescription(str);
        if (b(token)) {
            cVar.b.setTextColor(this.a.getResources().getColor(R.color.error_color));
        } else {
            cVar.b.setTextColor(this.g);
        }
        cVar.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.a(token, view);
            }
        });
        if (this.f != 0) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) cVar.itemView.getLayoutParams();
            layoutParams.width = this.f;
            cVar.itemView.setLayoutParams(layoutParams);
        }
    }

    public void a(Token token, View view) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.a(token);
        }
    }

    private String a(Token token) {
        if ("DIRECTDEBIT_SEPA".equals(token.getPaymentBrand())) {
            return f0.c(token.getBankAccount().getIban());
        }
        if ("PAYPAL".equals(token.getPaymentBrand())) {
            return a(token.getVirtualAccount().getAccountId());
        }
        Card card = token.getCard();
        return f0.b(card.getLast4Digits()) + " " + f0.a(card);
    }

    private String a(String str) {
        try {
            String[] strArrSplit = str.split("@");
            return strArrSplit[0].charAt(0) + "***@" + strArrSplit[1];
        } catch (Exception unused) {
            return str;
        }
    }

    public void a(b bVar) {
        this.d = bVar;
    }
}
