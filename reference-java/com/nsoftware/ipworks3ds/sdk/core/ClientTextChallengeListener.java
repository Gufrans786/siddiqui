package com.nsoftware.ipworks3ds.sdk.core;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.nsoftware.ipworks3ds.sdk.R;
import nts.ActivityC0477;

public class ClientTextChallengeListener extends ActivityC0477 {

    public class ViewOnClickListenerC0064 implements View.OnClickListener {

        public AppCompatActivity f33;

        public ViewOnClickListenerC0064(AppCompatActivity appCompatActivity) {
            this.f33 = appCompatActivity;
        }

        @Override
        public void onClick(View view) {
            ClientTextChallengeListener.this.m5159(ClientTextChallengeListener.this.m1175().getText().toString(), this.f33);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m5157(this, this, new ViewOnClickListenerC0064(this));
    }

    public EditText m1175() {
        return (EditText) ((LinearLayout) findViewById(R.id.challengeDataLayout)).getChildAt(0);
    }
}
