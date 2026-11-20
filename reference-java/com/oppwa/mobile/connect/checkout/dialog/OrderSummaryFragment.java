package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.oppwa.mobile.connect.R;
import java.util.LinkedHashMap;

public class OrderSummaryFragment extends BaseFragment {
    private LayoutInflater d;
    private OrderSummary e;
    private String f;

    private View a(String str, String str2) {
        LinearLayout linearLayout = (LinearLayout) this.d.inflate(R.layout.opp_item_order_details, (ViewGroup) null);
        TextView textView = (TextView) linearLayout.findViewById(R.id.order_item_title);
        TextView textView2 = (TextView) linearLayout.findViewById(R.id.order_item_amount);
        textView.setText(str);
        textView2.setText(str2);
        return linearLayout;
    }

    private void b(View view) {
        ((TextView) view.findViewById(R.id.total_amount_value)).setText(f0.a(this.e.getOrderTotal().doubleValue(), this.f));
        LinkedHashMap<String, Double> orderItems = this.e.getOrderItems();
        if (orderItems.isEmpty()) {
            view.findViewById(R.id.total_amount_divider).setVisibility(8);
            return;
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.order_details_layout);
        for (String str : orderItems.keySet()) {
            Double d = orderItems.get(str);
            if (d != null) {
                linearLayout.addView(a(str, f0.a(d.doubleValue(), this.f)));
            }
        }
    }

    private void c(View view) throws Throwable {
        ((TextView) view.findViewById(R.id.card_description)).setText(this.e.getPaymentDetails());
        ((ImageView) view.findViewById(R.id.brand_logo)).setImageBitmap(ImageLoader.a(getContext()).c(this.e.getPaymentBrand()));
    }

    private void d(View view) {
        Button button = (Button) view.findViewById(R.id.payment_button);
        button.setText(R.string.checkout_layout_text_pay);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.f(view2);
            }
        });
    }

    private void e(View view) {
        if (TextUtils.isEmpty(this.e.getShippingInfo())) {
            view.findViewById(R.id.shipping_address_layout).setVisibility(8);
        } else {
            ((TextView) view.findViewById(R.id.shipping_address)).setText(this.e.getShippingInfo());
        }
    }

    public void f(View view) {
        getParentFragmentManager().setFragmentResult(OrderSummaryFragment.class.getName(), new Bundle());
    }

    public static OrderSummaryFragment newInstance(OrderSummary orderSummary, String str) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CheckoutActivity.EXTRA_ORDER_SUMMARY, orderSummary);
        bundle.putString("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CURRENCY", str);
        OrderSummaryFragment orderSummaryFragment = new OrderSummaryFragment();
        orderSummaryFragment.setArguments(bundle);
        return orderSummaryFragment;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = (OrderSummary) arguments.getParcelable(CheckoutActivity.EXTRA_ORDER_SUMMARY);
            this.f = arguments.getString("com.oppwa.mobile.connect.checkout.dialog.EXTRA_CURRENCY");
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.d = layoutInflater;
        return layoutInflater.inflate(R.layout.opp_fragment_order_summary, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) throws Throwable {
        super.onViewCreated(view, bundle);
        this.a.setText(R.string.checkout_order_review);
        c(view);
        e(view);
        b(view);
        d(view);
    }
}
