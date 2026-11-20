package com.oppwa.mobile.connect.checkout.dialog;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.oppwa.mobile.connect.R;

public class CardBrandSelectionLayout extends LinearLayout {
    private final RecyclerView a;
    private b b;
    private String[] c;
    private h d;
    private String e;
    private boolean f;

    interface b {
        void a(String str);
    }

    private static class c extends View.BaseSavedState {
        public static final Parcelable.Creator<c> CREATOR = new a();
        String a;
        String[] b;

        class a implements Parcelable.Creator<c> {
            a() {
            }

            @Override
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override
            public c[] newArray(int i) {
                return new c[i];
            }
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.a);
            parcel.writeStringArray(this.b);
        }

        c(Parcelable parcelable) {
            super(parcelable);
        }

        private c(Parcel parcel) {
            super(parcel);
            this.a = parcel.readString();
            this.b = parcel.createStringArray();
        }
    }

    public CardBrandSelectionLayout(Context context) {
        this(context, null);
    }

    public void a() {
        if (this.a.getAdapter() != null) {
            setVisibility(0);
            d.b(getContext(), this);
            this.a.getAdapter().notifyDataSetChanged();
        }
    }

    public String[] getCardBrands() {
        return this.c;
    }

    public void hide() {
        hide(true);
    }

    public boolean isVisible() {
        return this.f;
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        String str = cVar.a;
        this.e = str;
        String[] strArr = cVar.b;
        this.c = strArr;
        if (strArr != null) {
            setCardBrands(strArr, str);
            b bVar = this.b;
            if (bVar != null) {
                bVar.a(this.e);
            }
        }
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        cVar.a = this.e;
        cVar.b = this.c;
        return cVar;
    }

    public void setCardBrands(String[] strArr, String str) {
        this.e = str;
        h hVar = (h) this.a.getAdapter();
        this.d = hVar;
        if (hVar == null) {
            h hVarA = a(strArr);
            this.d = hVarA;
            this.a.setAdapter(hVarA);
        } else {
            hVar.a(strArr);
        }
        this.d.a(str);
        this.d.notifyDataSetChanged();
        this.c = strArr;
    }

    public void setListener(b bVar) {
        this.b = bVar;
    }

    public void setSelectedBrand(String str) {
        this.e = str;
        this.d.a(str);
    }

    public void show() {
        String[] strArr;
        if (this.f || (strArr = this.c) == null || strArr.length == 0) {
            return;
        }
        if (strArr.length == 1 && TextUtils.equals(strArr[0], this.e)) {
            return;
        }
        int height = getHeight();
        int dimension = (int) getResources().getDimension(R.dimen.card_brand_selection_layout_height);
        setVisibility(4);
        d.a(this, height, dimension);
        this.f = true;
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f$0.a();
            }
        }, 200L);
    }

    public void updateCardBrands(String str) {
        if (this.d != null) {
            int i = 0;
            for (String str2 : this.c) {
                if (str2.equals(str)) {
                    this.d.notifyItemChanged(i);
                }
                i++;
            }
        }
    }

    public CardBrandSelectionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = false;
        LayoutInflater.from(context).inflate(R.layout.opp_layout_card_brand_selection, (ViewGroup) this, true);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.card_brands_recycler_view);
        this.a = recyclerView;
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
    }

    public void hide(boolean z) {
        final int height = getHeight();
        if (!this.f || height == 0) {
            this.f = false;
            return;
        }
        this.f = false;
        if (z) {
            d.a(getContext(), this);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f$0.a(height);
                }
            }, 200L);
        } else {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.height = 0;
            setLayoutParams(layoutParams);
        }
    }

    public void a(int i) {
        setVisibility(4);
        d.a(this, i, 0);
    }

    private h a(String[] strArr) {
        h hVar = new h(getContext(), strArr);
        hVar.a(new h.a() {
            @Override
            public final void a(String str) {
                this.f$0.a(str);
            }
        });
        return hVar;
    }

    public void a(String str) {
        this.e = str;
        b bVar = this.b;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public CardBrandSelectionLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet);
    }

    public CardBrandSelectionLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, attributeSet);
    }
}
