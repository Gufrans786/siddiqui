package com.nsoftware.ipworks3ds.sdk.core;

import android.os.Bundle;
import android.view.View;
import java.io.Serializable;
import nts.ActivityC0477;
import nts.C0273;
import nts.C0369;
import nts.C0558;
import nts.C0594;

public class ClientOutOfBandChallengeListener extends ActivityC0477 implements View.OnClickListener {

    public boolean f28;

    @Override
    public void onClick(View view) {
        m5159("", this);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Serializable serializableExtra = getIntent().getSerializableExtra(C0558.m5481("&=\u001f)??;&\"\"\u00036,/\u0003!15\u001c,+", 0, 21, 90));
        if (serializableExtra != null) {
            this.f28 = ((Boolean) serializableExtra).booleanValue();
        }
        if (this.f28) {
            return;
        }
        m5157(this, this, this);
    }

    @Override
    public void onResume() {
        String strM5605;
        super.onResume();
        if (this.f28) {
            m5157(this, this, this);
            C0594 c0594M3986 = C0273.f1383.m3986();
            c0594M3986.m5582();
            try {
                strM5605 = c0594M3986.f3298.m5605(C0558.m5461(171, 15, 61));
            } catch (C0369 unused) {
                strM5605 = "";
            }
            if (!C0558.m5461(186, 5, 111).equals(strM5605) && C0558.m5461(191, 5, 0).equals(strM5605)) {
                m5159("", this);
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        this.f28 = true;
    }

    public boolean m1171() {
        return this.f28;
    }
}
