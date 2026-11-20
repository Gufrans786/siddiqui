package com.nsoftware.ipworks3ds.sdk.core;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.nsoftware.ipworks3ds.sdk.R;
import com.nsoftware.ipworks3ds.sdk.exception.SDKRuntimeException;
import nts.ActivityC0477;
import nts.C0231;
import nts.C0499;
import nts.C0558;

public class ClientSingleSelectorChallengeListener extends ActivityC0477 {

    public C0499 f29;

    public class ViewOnClickListenerC0063 implements View.OnClickListener {

        public AppCompatActivity f31;

        public ViewOnClickListenerC0063(AppCompatActivity appCompatActivity) {
            this.f31 = appCompatActivity;
        }

        @Override
        public void onClick(View view) {
            String str;
            int checkedRadioButtonId = ((RadioGroup) ((LinearLayout) ClientSingleSelectorChallengeListener.this.findViewById(R.id.challengeDataLayout)).getChildAt(0)).getCheckedRadioButtonId() - ActivityC0477.f2721;
            if (checkedRadioButtonId < 0) {
                str = "";
            } else {
                String[] strArrM1174 = ClientSingleSelectorChallengeListener.this.m1174();
                if (checkedRadioButtonId > strArrM1174.length) {
                    throw new SDKRuntimeException(C0558.m5481("~XCU_[U\u0010L[QYXN\\\\\u0007OK@FZ\u000f", 0, 23, 32));
                }
                str = strArrM1174[checkedRadioButtonId];
            }
            ClientSingleSelectorChallengeListener.this.m5159(str, this.f31);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m5157(this, this, new ViewOnClickListenerC0063(this));
    }

    public String[] m1172() {
        C0499 c0499 = this.f29;
        return c0499 == null ? new String[0] : c0499.f2815;
    }

    public void m1173(C0231 c0231) {
        this.f29 = new C0499(c0231);
    }

    public String[] m1174() {
        C0499 c0499 = this.f29;
        return c0499 == null ? new String[0] : c0499.f2816;
    }
}
