package nts;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nsoftware.ipworks3ds.sdk.R;

public class ProgressDialogC0491 extends ProgressDialog {

    public boolean f2791;

    public boolean f2792;

    public boolean f2793;

    public Activity f2794;

    public boolean f2795;

    public boolean f2796;

    public int f2797;

    public String f2798;

    public long f2799;

    public ProgressDialogC0491(Activity activity) {
        super(activity);
        this.f2797 = 0;
        this.f2793 = false;
        this.f2796 = true;
        this.f2791 = false;
        this.f2792 = false;
        this.f2795 = true;
        this.f2798 = null;
        this.f2794 = activity;
        setCancelable(false);
        setProgressStyle(0);
        setIndeterminate(true);
    }

    @Override
    public void dismiss() {
        if (this.f2795) {
            this.f2793 = false;
            if (this.f2797 > 0) {
                while (System.currentTimeMillis() - this.f2799 < this.f2797) {
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            this.f2799 = 0L;
            super.dismiss();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        int intExtra;
        int identifier;
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().setGravity(17);
        if (!this.f2796) {
            getWindow().clearFlags(2);
        }
        if (this.f2791) {
            setContentView(R.layout.nsoftware_prograss_bar_areq);
            ConstraintLayout constraintLayout = (ConstraintLayout) getWindow().findViewById(R.id.white_box);
            if (!this.f2792) {
                constraintLayout.setBackgroundColor(0);
            }
            if (this.f2798 != null) {
                String str = C0558.m5449(392, 14, 35) + this.f2798.toLowerCase();
                Context context = C0273.f1383.f1395;
                identifier = context.getResources().getIdentifier(str, C0558.m5449(406, 8, 86), context.getPackageName());
            } else {
                identifier = 0;
            }
            ImageView imageView = (ImageView) getWindow().findViewById(R.id.ds_logo);
            if (identifier > 0) {
                imageView.setImageResource(identifier);
            } else {
                constraintLayout.removeView(imageView);
            }
        } else {
            setContentView(R.layout.nsoftware_prograss_bar_creq);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.progressBar);
        if (progressBar != null) {
            Integer numM5472 = C0558.m5472(C0273.f1383.f1389.f2087);
            if (numM5472 != null) {
                intExtra = numM5472.intValue();
            } else {
                Activity activity = this.f2794;
                TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new TypedValue().data, new int[]{R.attr.colorPrimary});
                int color = typedArrayObtainStyledAttributes.getColor(0, 0);
                typedArrayObtainStyledAttributes.recycle();
                Intent intent = activity.getIntent();
                intExtra = intent != null ? intent.getIntExtra(C0558.m5449(418, 12, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), color) : color;
            }
            progressBar.setIndeterminateTintList(ColorStateList.valueOf(intExtra));
        }
    }

    @Override
    public void show() {
        if (!this.f2795 || this.f2793) {
            return;
        }
        this.f2793 = true;
        this.f2799 = System.currentTimeMillis();
        super.show();
    }

    public void m5180(int i) {
        if (C0273.f1383.f1389.f2078) {
            this.f2797 = i * 1000;
        }
    }
}
