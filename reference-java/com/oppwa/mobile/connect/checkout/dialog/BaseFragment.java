package com.oppwa.mobile.connect.checkout.dialog;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.oppwa.mobile.connect.R;
import com.oppwa.mobile.connect.exception.PaymentError;
import com.oppwa.mobile.connect.provider.Transaction;

public class BaseFragment extends Fragment {
    protected TextView a;
    protected ImageButton b;
    protected ImageButton c;

    public BaseFragment() {
    }

    public void a(View view) {
        a();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override
    public void onStart() {
        super.onStart();
        TextView textView = this.a;
        if (textView != null) {
            textView.announceForAccessibility(textView.getText());
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.a = (TextView) view.findViewById(R.id.title);
        this.b = (ImageButton) view.findViewById(R.id.back_button);
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.close_button);
        this.c = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.f$0.a(view2);
            }
        });
    }

    public BaseFragment(int i) {
        super(i);
    }

    protected void a(int i) {
        this.a.setText(i);
    }

    protected void a(Transaction transaction) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("TRANSACTION_RESULT_KEY", transaction);
        a(bundle);
    }

    protected void a(Transaction transaction, PaymentError paymentError) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("TRANSACTION_RESULT_KEY", transaction);
        bundle.putParcelable("PAYMENT_ERROR_RESULT_KEY", paymentError);
        a(bundle);
    }

    protected void a() {
        a(new Bundle());
    }

    private void a(Bundle bundle) {
        getParentFragmentManager().setFragmentResult(BaseFragment.class.getName(), bundle);
    }
}
