package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;

public class GroupedCardsAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final Context a;
    private final String[] b;
    private b c;
    private GroupedCardsItemAdapter d;

    static class a extends RecyclerView.ViewHolder {
        RecyclerView a;

        a(View view) {
            super(view);
            this.a = (RecyclerView) view.findViewById(R.id.card_brands_recycler_view);
        }
    }

    interface b {
        void a(String str);
    }

    GroupedCardsAdapter(Context context, String[] strArr) {
        this.a = context;
        this.b = strArr;
    }

    public void a(View view) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(PaymentButtonFragment.OPP_PAYMENT_BRAND_CARD);
        }
    }

    @Override
    public int getItemCount() {
        return 1;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        Context context = this.a;
        aVar.a.setLayoutManager(new GridLayoutManager(context, a(context)));
        GroupedCardsItemAdapter groupedCardsItemAdapter = new GroupedCardsItemAdapter(this.a, this.b);
        this.d = groupedCardsItemAdapter;
        aVar.a.setAdapter(groupedCardsItemAdapter);
        aVar.a.suppressLayout(true);
        aVar.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f$0.a(view);
            }
        });
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.a).inflate(R.layout.opp_item_grouped_cards, viewGroup, false));
    }

    public void setListener(b bVar) {
        this.c = bVar;
    }

    GroupedCardsItemAdapter a() {
        return this.d;
    }

    private static int a(Context context) {
        Resources resources = context.getResources();
        return resources.getDisplayMetrics().widthPixels / (((int) resources.getDimension(R.dimen.card_brand_logo_width)) + (((int) resources.getDimension(R.dimen.card_brand_logo_padding)) * 2));
    }
}
