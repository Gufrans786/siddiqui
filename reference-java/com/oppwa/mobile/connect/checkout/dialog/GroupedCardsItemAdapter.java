package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;

public class GroupedCardsItemAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final String[] a;
    private final Context b;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        ImageView a;
        ProgressBar b;

        public ViewHolder(View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.grouped_cards_item_image);
            this.b = (ProgressBar) view.findViewById(R.id.loading_panel);
        }
    }

    GroupedCardsItemAdapter(Context context, String[] strArr) {
        this.a = strArr;
        this.b = context;
    }

    @Override
    public int getItemCount() {
        return this.a.length;
    }

    @Override
    public void onBindViewHolder(ViewHolder viewHolder, int i) throws Throwable {
        viewHolder.b.setVisibility(0);
        String str = this.a[i];
        Bitmap bitmapC = ImageLoader.a(this.b).c(str);
        String strB = l.b(this.b, str);
        if (bitmapC != null) {
            viewHolder.b.setVisibility(8);
            viewHolder.a.setImageBitmap(bitmapC);
            viewHolder.a.setContentDescription(strB);
        }
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.b).inflate(R.layout.opp_item_card, viewGroup, false));
    }
}
