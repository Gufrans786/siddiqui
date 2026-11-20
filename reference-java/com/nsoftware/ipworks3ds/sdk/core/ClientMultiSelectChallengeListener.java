package com.nsoftware.ipworks3ds.sdk.core;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.nsoftware.ipworks3ds.sdk.R;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import nts.ActivityC0477;
import nts.C0231;
import nts.C0499;
import nts.C0558;
import nts.C0663;

public class ClientMultiSelectChallengeListener extends ActivityC0477 {

    public C0499 f25;

    public class ViewOnClickListenerC0062 implements View.OnClickListener {

        public AppCompatActivity f27;

        public ViewOnClickListenerC0062(AppCompatActivity appCompatActivity) {
            this.f27 = appCompatActivity;
        }

        @Override
        public void onClick(View view) {
            LinearLayout linearLayout = (LinearLayout) ClientMultiSelectChallengeListener.this.findViewById(R.id.challengeDataLayout);
            int childCount = linearLayout.getChildCount();
            String[] strArrM1170 = ClientMultiSelectChallengeListener.this.m1170();
            String string = "";
            int i = 0;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = linearLayout.getChildAt(i2);
                if (childAt instanceof CheckBox) {
                    if (((CheckBox) childAt).isChecked()) {
                        if (string.length() > 0) {
                            string = C0663.m5880(string, ",");
                        }
                        if (strArrM1170.length <= i) {
                            throw new SDKRuntimeException(C0558.m5481("\u001b=&0:>0u)>4<=+99b*.%#?j", 0, 23, 69));
                        }
                        string = C0663.m5891(string).append(strArrM1170[i]).toString();
                    }
                    i++;
                }
            }
            ClientMultiSelectChallengeListener.this.m5159(string, this.f27);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m5157(this, this, new ViewOnClickListenerC0062(this));
    }

    public String[] m1168() {
        C0499 c0499 = this.f25;
        return c0499 == null ? new String[0] : c0499.f2815;
    }

    public void m1169(C0231 c0231) {
        this.f25 = new C0499(c0231);
    }

    public String[] m1170() {
        C0499 c0499 = this.f25;
        return c0499 == null ? new String[0] : c0499.f2816;
    }
}
