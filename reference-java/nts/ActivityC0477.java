package nts;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import ch.qos.logback.classic.Level;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.nsoftware.ipworks3ds.sdk.R;
import com.nsoftware.ipworks3ds.sdk.core.ClientMultiSelectChallengeListener;
import com.nsoftware.ipworks3ds.sdk.core.ClientOutOfBandChallengeListener;
import com.nsoftware.ipworks3ds.sdk.core.ClientSingleSelectorChallengeListener;
import com.nsoftware.ipworks3ds.sdk.core.SDKToolbarLayout;
import com.nsoftware.ipworks3ds.sdk.customization.LabelCustomization;
import com.nsoftware.ipworks3ds.sdk.customization.UiCustomization;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import okhttp3.internal.ws.WebSocketProtocol;

public class ActivityC0477 extends AppCompatActivity {

    public static LinearLayout.LayoutParams f2720 = new LinearLayout.LayoutParams(-2, -2);

    public static int f2721 = Level.TRACE_INT;

    public static final Map<String, Bitmap> f2722 = new HashMap();

    public static final String f2723 = System.getProperty(C0558.m5449(378, 14, 64));

    public ProgressDialogC0491 f2727;

    public boolean f2726 = true;

    public Timer f2724 = null;

    public final Handler f2725 = new HandlerC0482(this);

    public class ViewOnClickListenerC0478 implements View.OnClickListener {

        public final Drawable f2728;

        public final Drawable f2730;

        public final int f2731;

        public final TextView f2732;

        public final TextView f2733;

        public ViewOnClickListenerC0478(TextView textView, TextView textView2, Drawable drawable, int i, Drawable drawable2) {
            this.f2733 = textView;
            this.f2732 = textView2;
            this.f2730 = drawable;
            this.f2731 = i;
            this.f2728 = drawable2;
        }

        @Override
        public void onClick(View view) {
            if (this.f2733.getVisibility() == 0) {
                ActivityC0477.this.m5155(this.f2732, this.f2730, this.f2731);
                this.f2733.setVisibility(8);
            } else if (this.f2733.getVisibility() == 8) {
                ActivityC0477.this.m5155(this.f2732, this.f2728, this.f2731);
                this.f2733.setVisibility(0);
            }
        }
    }

    public class C0479 extends Thread {

        public final String f2735;

        public final AppCompatActivity f2736;

        public final boolean f2737;

        public final C0594 f2738;

        public C0479(C0594 c0594, boolean z, String str, AppCompatActivity appCompatActivity) {
            this.f2738 = c0594;
            this.f2737 = z;
            this.f2735 = str;
            this.f2736 = appCompatActivity;
        }

        @Override
        public void run() {
            try {
                boolean z = EnumC0457.OOB == C0555.m5442();
                try {
                    if (z) {
                        this.f2738.m5584(true);
                    } else if (this.f2737) {
                        this.f2738.m5586(C0558.m5449(114, 21, 38));
                    } else {
                        C0594 c0594 = this.f2738;
                        String str = this.f2735;
                        C0600 c0600 = c0594.f3298;
                        if (c0600 != null) {
                            c0600.m5601(str);
                        }
                    }
                    try {
                        if (!ActivityC0477.m5149(ActivityC0477.this.f2725)) {
                            this.f2736.finish();
                            if (this.f2737) {
                                try {
                                    this.f2738.m5586(C0558.m5449(135, 20, 112));
                                } catch (Exception unused) {
                                }
                            }
                            this.f2738.m5584(false);
                            return;
                        }
                        if (this.f2737) {
                            try {
                                this.f2738.m5586(C0558.m5449(135, 20, 112));
                            } catch (Exception unused2) {
                            }
                        }
                        this.f2738.m5584(false);
                        ActivityC0477.m5146(ActivityC0477.this);
                        C0600 c0601 = this.f2738.f3298;
                        if (c0601 == null ? true : c0601.f3316.f2466) {
                            ActivityC0477 activityC0477 = ActivityC0477.this;
                            String strM5585 = this.f2738.m5585();
                            C0600 c0602 = this.f2738.f3298;
                            activityC0477.m5161(strM5585, c0602 == null ? "" : c0602.f3316.f2476.m4571());
                        } else {
                            Intent intentM5474 = C0558.m5474(this.f2736);
                            if (z) {
                                intentM5474.putExtra(C0558.m5449(ModuleDescriptor.MODULE_VERSION, 21, 82), true);
                            }
                            this.f2736.startActivityForResult(intentM5474, 1);
                        }
                        this.f2736.finish();
                    } catch (Throwable th) {
                        if (this.f2737) {
                            try {
                                this.f2738.m5586(C0558.m5449(135, 20, 112));
                            } catch (Exception unused3) {
                            }
                        }
                        this.f2738.m5584(false);
                        throw th;
                    }
                } catch (C0369 e) {
                    C0273.f1383.m3993(e);
                    ActivityC0477.m5146(ActivityC0477.this);
                }
            } catch (Exception e2) {
                C0273.f1383.m3988().runtimeError(new C0250(C0558.m5449(SyslogConstants.LOG_LOCAL6, 4, 89), C0558.m5480(e2)));
            }
        }
    }

    public class C0480 implements CompoundButton.OnCheckedChangeListener {

        public final C0594 f2739;

        public C0480(ActivityC0477 activityC0477, C0594 c0594) {
            this.f2739 = c0594;
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            try {
                C0600 c0600 = this.f2739.f3298;
                if (c0600 != null) {
                    c0600.m5607(z);
                }
            } catch (C0369 e) {
                e.printStackTrace();
            }
        }
    }

    public class RunnableC0481 implements Runnable {

        public final AppCompatActivity f2741;

        public RunnableC0481(AppCompatActivity appCompatActivity) {
            this.f2741 = appCompatActivity;
        }

        @Override
        public void run() {
            ActivityC0477.this.m5156(this.f2741);
        }
    }

    public static class HandlerC0482 extends Handler {

        public WeakReference<ActivityC0477> f2742;

        public HandlerC0482(ActivityC0477 activityC0477) {
            this.f2742 = new WeakReference<>(activityC0477);
        }

        @Override
        public void handleMessage(Message message) {
            ActivityC0477 activityC0477;
            ProgressDialogC0491 progressDialogC0491;
            super.handleMessage(message);
            WeakReference<ActivityC0477> weakReference = this.f2742;
            if (weakReference == null || (progressDialogC0491 = (activityC0477 = weakReference.get()).f2727) == null) {
                return;
            }
            if (progressDialogC0491.isShowing()) {
                try {
                    activityC0477.f2727.dismiss();
                } catch (Exception unused) {
                }
            }
            activityC0477.f2727 = null;
        }
    }

    public class C0483 extends Thread {

        public final AppCompatActivity f2744;

        public C0483(AppCompatActivity appCompatActivity) {
            this.f2744 = appCompatActivity;
        }

        @Override
        public void run() {
            try {
                try {
                    C0273.f1383.m3986().m5586(C0558.m5449(RotationOptions.ROTATE_180, 33, 94));
                    if (ActivityC0477.m5149(ActivityC0477.this.f2725)) {
                        C0273.f1383.m3988().cancelled();
                        ActivityC0477.m5146(ActivityC0477.this);
                        this.f2744.finish();
                    } else {
                        C0273.f1383.m3987(C0558.m5449(213, 50, 67));
                        ActivityC0477.m5146(ActivityC0477.this);
                        this.f2744.finish();
                    }
                } catch (C0369 e) {
                    C0273.f1383.m3993(e);
                    ActivityC0477.m5146(ActivityC0477.this);
                    this.f2744.finish();
                }
            } catch (Throwable th) {
                ActivityC0477.m5146(ActivityC0477.this);
                this.f2744.finish();
                throw th;
            }
        }
    }

    public class ViewOnClickListenerC0484 implements View.OnClickListener {

        public final Drawable f2745;

        public final Drawable f2747;

        public final int f2748;

        public final TextView f2749;

        public final TextView f2750;

        public ViewOnClickListenerC0484(TextView textView, TextView textView2, Drawable drawable, int i, Drawable drawable2) {
            this.f2750 = textView;
            this.f2749 = textView2;
            this.f2747 = drawable;
            this.f2748 = i;
            this.f2745 = drawable2;
        }

        @Override
        public void onClick(View view) {
            if (this.f2750.getVisibility() == 0) {
                ActivityC0477.this.m5155(this.f2749, this.f2747, this.f2748);
                this.f2750.setVisibility(8);
            } else if (this.f2750.getVisibility() == 8) {
                ActivityC0477.this.m5155(this.f2749, this.f2745, this.f2748);
                this.f2750.setVisibility(0);
            }
        }
    }

    public class ViewOnClickListenerC0485 implements View.OnClickListener {

        public final AppCompatActivity f2752;

        public ViewOnClickListenerC0485(AppCompatActivity appCompatActivity) {
            this.f2752 = appCompatActivity;
        }

        @Override
        public void onClick(View view) {
            ActivityC0477.this.m5151(this.f2752);
        }
    }

    public class C0486 extends TimerTask {

        public final C0594 f2754;

        public final AppCompatActivity f2755;

        public C0486(AppCompatActivity appCompatActivity, C0594 c0594) {
            this.f2755 = appCompatActivity;
            this.f2754 = c0594;
        }

        @Override
        public void run() {
            ActivityC0477.this.m5158(this.f2755, this.f2754);
        }
    }

    public class ViewOnClickListenerC0487 implements View.OnClickListener {

        public final AppCompatActivity f2757;

        public ViewOnClickListenerC0487(AppCompatActivity appCompatActivity) {
            this.f2757 = appCompatActivity;
        }

        @Override
        public void onClick(View view) {
            ActivityC0477.this.m5156(this.f2757);
        }
    }

    @Override
    public void onBackPressed() {
        m5156((AppCompatActivity) this);
    }

    @Override
    public void onDestroy() {
        Timer timer = this.f2724;
        if (timer != null) {
            timer.cancel();
            this.f2724 = null;
        }
        super.onDestroy();
    }

    @Override
    public void onPause() {
        Context context;
        if (this.f2726 && (context = C0273.f1383.f1395) != null) {
            String string = context.getResources().getString(R.string.app_moved_to_background);
            if (string.length() > 0) {
                Toast.makeText(this, string, 1).show();
            }
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        m5158(this, C0273.f1383.m3986());
    }

    public final void m5150(AppCompatActivity appCompatActivity) {
        ProgressDialogC0491 progressDialogC0491 = new ProgressDialogC0491(appCompatActivity);
        progressDialogC0491.m5180(1);
        this.f2727 = progressDialogC0491;
        progressDialogC0491.show();
    }

    public void m5151(AppCompatActivity appCompatActivity) {
        m5160((String) null, appCompatActivity, true);
    }

    public void m5152(AppCompatActivity appCompatActivity) {
        SDKToolbarLayout.getCancelButton().setOnClickListener(new ViewOnClickListenerC0487(appCompatActivity));
    }

    public void m5154(AppCompatActivity appCompatActivity, C0594 c0594) {
        if (this.f2724 == null) {
            Timer timer = new Timer();
            this.f2724 = timer;
            timer.schedule(new C0486(appCompatActivity, c0594), 1000 * ((long) c0594.m5581()), 1000L);
        }
    }

    public void m5157(AppCompatActivity appCompatActivity, Context context, View.OnClickListener onClickListener) {
        int i;
        int height;
        int width;
        int height2;
        TextView textView;
        TextView textView2;
        String str;
        Drawable drawable;
        Drawable drawable2;
        Integer numM5472;
        try {
            C0594 c0594M3986 = C0273.f1383.m3986();
            EnumC0457 enumC0457M5442 = C0555.m5442();
            if (enumC0457M5442 == EnumC0457.HTML) {
                return;
            }
            C0273 c0273 = C0273.f1383;
            if (c0273.f1393 == null) {
                c0273.f1393 = new UiCustomization();
            }
            UiCustomization uiCustomization = c0273.f1393;
            LabelCustomization labelCustomization = uiCustomization.getLabelCustomization();
            appCompatActivity.getWindow().setFlags(8192, 8192);
            appCompatActivity.setContentView(R.layout.activity_nsoftwaresdk_listener);
            C0558.m5490(appCompatActivity.getWindow(), appCompatActivity.getIntent());
            m5152(appCompatActivity);
            String background = uiCustomization.getBackground();
            if (background != null && (numM5472 = C0558.m5472(background)) != null) {
                appCompatActivity.findViewById(R.id.checkoutView).setBackgroundColor(numM5472.intValue());
            }
            String strM5580 = c0594M3986.m5580();
            ImageView imageView = (ImageView) appCompatActivity.findViewById(R.id.psImage);
            if (strM5580.length() > 0) {
                new AsyncTaskC0608(imageView, f2722).execute(strM5580);
            }
            String strM5576 = c0594M3986.m5576();
            ImageView imageView2 = (ImageView) appCompatActivity.findViewById(R.id.issuerImage);
            if (strM5576.length() > 0) {
                new AsyncTaskC0608(imageView2, f2722).execute(strM5576);
            }
            LinearLayout linearLayout = (LinearLayout) appCompatActivity.findViewById(R.id.challengeLayout);
            TextView textView3 = (TextView) linearLayout.findViewById(R.id.infoHeader);
            C0600 c0600 = c0594M3986.f3298;
            textView3.setText(c0600 == null ? "" : c0600.f3316.f2398.m4571());
            UiCustomization.LabelType labelType = UiCustomization.LabelType.INFO_HEADER;
            C0558.m5491(textView3, C0558.m5479(labelCustomization, labelType), labelCustomization.getBackgroundColor(UiCustomization.LabelType.INFO_HEADER), C0558.m5462(labelCustomization, labelType), C0558.m5447(labelCustomization, labelType), labelCustomization.getHeadingTextAlignment(), labelCustomization.getPadding(UiCustomization.LabelType.INFO_HEADER));
            LinearLayout linearLayout2 = (LinearLayout) appCompatActivity.findViewById(R.id.infoTextLayout);
            TextView textView4 = (TextView) linearLayout2.findViewById(R.id.infoText);
            C0600 c0601 = c0594M3986.f3298;
            textView4.setText(m5145(c0601 == null ? "" : c0601.f3316.f2479.m4571()));
            C0558.m5493(labelCustomization, textView4, UiCustomization.LabelType.INFO_TEXT);
            C0600 c0602 = c0594M3986.f3298;
            if (!(c0602 == null ? "" : c0602.f3316.f2517.m4571()).equals("Y")) {
                linearLayout2.removeView((ImageView) appCompatActivity.findViewById(R.id.warningImage));
            }
            TextView textView5 = (TextView) linearLayout.findViewById(R.id.infoLabel);
            C0600 c0603 = c0594M3986.f3298;
            String strM4571 = c0603 == null ? "" : c0603.f3316.f2416.m4571();
            if (strM4571 != null && strM4571.length() != 0) {
                textView5.setText(strM4571.replace("\\n", f2723));
                C0558.m5493(labelCustomization, textView5, UiCustomization.LabelType.INFO_LABEL);
            } else {
                linearLayout.removeView(textView5);
            }
            LinearLayout linearLayout3 = (LinearLayout) appCompatActivity.findViewById(R.id.challengeDataLayout);
            int i2 = 20;
            if (enumC0457M5442 == EnumC0457.TEXT) {
                EditText editText = new EditText(context);
                editText.setText("");
                editText.setMaxLines(1);
                editText.setSingleLine();
                editText.setPadding(20, editText.getPaddingTop(), editText.getPaddingRight(), editText.getPaddingBottom());
                editText.setBackground(ContextCompat.getDrawable(context, R.drawable.edittext_background));
                editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                C0558.m5494(uiCustomization.getTextBoxCustomization(), editText);
                linearLayout3.addView(editText);
                i = 20;
            } else if (enumC0457M5442 == EnumC0457.SINGLE_SELECT) {
                ClientSingleSelectorChallengeListener clientSingleSelectorChallengeListener = (ClientSingleSelectorChallengeListener) appCompatActivity;
                C0600 c0604 = c0594M3986.f3298;
                clientSingleSelectorChallengeListener.m1173(c0604 == null ? null : c0604.m5596());
                String[] strArrM1172 = clientSingleSelectorChallengeListener.m1172();
                if (strArrM1172 != null) {
                    RadioGroup radioGroup = new RadioGroup(context);
                    radioGroup.setLayoutParams(f2720);
                    Integer numM5473 = C0558.m5472(labelCustomization.getBackgroundColor(UiCustomization.LabelType.SELECTION_LIST));
                    if (numM5473 != null) {
                        linearLayout3.setBackgroundColor(numM5473.intValue());
                    }
                    int i3 = 0;
                    while (i3 < strArrM1172.length) {
                        String str2 = strArrM1172[i3];
                        int i4 = i2;
                        RadioButton radioButton = new RadioButton(context);
                        radioButton.setLayoutParams(f2720);
                        radioButton.setText(str2);
                        radioButton.setId(f2721 + i3);
                        C0558.m5493(labelCustomization, radioButton, UiCustomization.LabelType.SELECTION_LIST);
                        radioGroup.addView(radioButton);
                        i3++;
                        i2 = i4;
                    }
                    i = i2;
                    linearLayout3.addView(radioGroup);
                } else {
                    throw new RuntimeException(C0558.m5449(0, 55, WebSocketProtocol.PAYLOAD_SHORT));
                }
            } else {
                i = 20;
                if (enumC0457M5442 == EnumC0457.MULTI_SELECT) {
                    ClientMultiSelectChallengeListener clientMultiSelectChallengeListener = (ClientMultiSelectChallengeListener) appCompatActivity;
                    C0600 c0605 = c0594M3986.f3298;
                    clientMultiSelectChallengeListener.m1169(c0605 == null ? null : c0605.m5596());
                    String[] strArrM1168 = clientMultiSelectChallengeListener.m1168();
                    if (strArrM1168 != null) {
                        CheckBox[] checkBoxArr = new CheckBox[strArrM1168.length];
                        for (int i5 = 0; i5 < strArrM1168.length; i5++) {
                            CheckBox checkBox = new CheckBox(context);
                            checkBoxArr[i5] = checkBox;
                            checkBox.setLayoutParams(f2720);
                            checkBoxArr[i5].setText(strArrM1168[i5]);
                            C0558.m5493(labelCustomization, checkBoxArr[i5], UiCustomization.LabelType.SELECTION_LIST);
                            linearLayout3.addView(checkBoxArr[i5]);
                        }
                        Integer numM5474 = C0558.m5472(labelCustomization.getBackgroundColor(UiCustomization.LabelType.SELECTION_LIST));
                        if (numM5474 != null) {
                            linearLayout3.setBackgroundColor(numM5474.intValue());
                        }
                    } else {
                        throw new RuntimeException(C0558.m5449(55, 55, 1));
                    }
                } else if (enumC0457M5442 == EnumC0457.OOB && ((ClientOutOfBandChallengeListener) appCompatActivity).m1171() && c0594M3986.m5577().length() > 0) {
                    textView4.setText(m5145(c0594M3986.m5577()));
                    if (linearLayout2.findViewById(R.id.warningImage) != null) {
                        linearLayout2.removeView((ImageView) appCompatActivity.findViewById(R.id.warningImage));
                    }
                }
            }
            Button button = (Button) linearLayout.findViewById(R.id.submit);
            if (enumC0457M5442 == EnumC0457.OOB) {
                C0600 c0606 = c0594M3986.f3298;
                button.setText(c0606 == null ? "" : c0606.f3316.f2318.m4571());
                C0558.m5492(uiCustomization.getButtonCustomization(UiCustomization.ButtonType.CONTINUE), button);
            } else {
                C0600 c0607 = c0594M3986.f3298;
                button.setText(c0607 == null ? "" : c0607.f3316.f2342.m4571());
                C0558.m5492(uiCustomization.getButtonCustomization(UiCustomization.ButtonType.SUBMIT), button);
            }
            button.setOnClickListener(onClickListener);
            Button button2 = (Button) linearLayout.findViewById(R.id.resend);
            C0600 c0608 = c0594M3986.f3298;
            String strM4572 = c0608 == null ? "" : c0608.f3316.f2522.m4571();
            if (enumC0457M5442 == EnumC0457.TEXT && strM4572.length() > 0) {
                button2.setText(strM4572);
                Display defaultDisplay = getWindowManager().getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                if (point.x > point.y) {
                    ((ViewGroup.MarginLayoutParams) button2.getLayoutParams()).leftMargin += 20;
                    ((ViewGroup.MarginLayoutParams) button.getLayoutParams()).rightMargin += 20;
                }
            } else {
                ((LinearLayout) appCompatActivity.findViewById(R.id.content_submit_buttons)).removeView(button2);
            }
            button2.setOnClickListener(new ViewOnClickListenerC0485(appCompatActivity));
            C0558.m5492(uiCustomization.getButtonCustomization(UiCustomization.ButtonType.RESEND), button2);
            CheckBox checkBox2 = (CheckBox) linearLayout.findViewById(R.id.addWhitelist);
            if (c0594M3986.m5578().length() > 0) {
                checkBox2.setText(c0594M3986.m5578());
                checkBox2.setOnCheckedChangeListener(new C0480(this, c0594M3986));
                C0558.m5493(labelCustomization, checkBox2, UiCustomization.LabelType.WHITELIST);
            } else {
                linearLayout.removeView(checkBox2);
            }
            LinearLayout linearLayout4 = (LinearLayout) appCompatActivity.findViewById(R.id.whyInfoLayout);
            TextView textView6 = (TextView) linearLayout4.findViewById(R.id.whyInfoLabel);
            TextView textView7 = (TextView) linearLayout4.findViewById(R.id.whyInfoText);
            int informationZoneIconPosition = uiCustomization.getInformationZoneIconPosition();
            Drawable drawable3 = context.getResources().getDrawable(R.drawable.ipworks3ds_collapse_section_indicator);
            Drawable drawable4 = context.getResources().getDrawable(R.drawable.ipworks3ds_expand_section_indicator);
            int i6 = 30;
            if (drawable3 instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable3).getBitmap();
                width = bitmap.getWidth();
                height = bitmap.getHeight();
            } else {
                height = 30;
                width = 30;
            }
            if (drawable4 instanceof BitmapDrawable) {
                Bitmap bitmap2 = ((BitmapDrawable) drawable4).getBitmap();
                int width2 = bitmap2.getWidth();
                height2 = bitmap2.getHeight();
                i6 = width2;
            } else {
                height2 = 30;
            }
            drawable3.setBounds(0, 0, width, height);
            drawable4.setBounds(0, 0, i6, height2);
            if (c0594M3986.m5579().length() > 0) {
                m5155(textView6, drawable3, informationZoneIconPosition);
                textView6.setText(c0594M3986.m5579());
                str = "";
                drawable = drawable4;
                drawable2 = drawable3;
                textView2 = textView7;
                textView = textView6;
                textView.setOnClickListener(new ViewOnClickListenerC0484(textView7, textView6, drawable2, informationZoneIconPosition, drawable));
                C0600 c0609 = c0594M3986.f3298;
                textView2.setText(m5145(c0609 == null ? str : c0609.f3316.f2364.m4571()));
                textView2.setVisibility(8);
            } else {
                textView = textView6;
                textView2 = textView7;
                str = "";
                drawable = drawable4;
                drawable2 = drawable3;
                linearLayout4.removeView(textView);
                linearLayout4.removeView(textView2);
            }
            TextView textView8 = (TextView) linearLayout4.findViewById(R.id.expandableInfoLabel);
            TextView textView9 = (TextView) linearLayout4.findViewById(R.id.expandableInfoText);
            if (c0594M3986.m5575().length() > 0) {
                m5155(textView8, drawable2, informationZoneIconPosition);
                textView8.setText(c0594M3986.m5575());
                textView8.setOnClickListener(new ViewOnClickListenerC0478(textView9, textView8, drawable2, informationZoneIconPosition, drawable));
                C0600 c06010 = c0594M3986.f3298;
                textView9.setText(m5145(c06010 == null ? str : c06010.f3316.f2457.m4571()));
                textView9.setVisibility(8);
                textView.setGravity(16);
                textView8.setGravity(16);
                int i7 = i;
                textView.setCompoundDrawablePadding(i7);
                textView8.setCompoundDrawablePadding(i7);
            } else {
                linearLayout4.removeView(textView8);
                linearLayout4.removeView(textView9);
            }
            C0558.m5493(labelCustomization, textView, UiCustomization.LabelType.WHY_INFO);
            C0558.m5493(labelCustomization, textView2, UiCustomization.LabelType.WHY_INFO_TEXT);
            C0558.m5493(labelCustomization, textView8, UiCustomization.LabelType.EXPANDABLE_INFO);
            C0558.m5493(labelCustomization, textView9, UiCustomization.LabelType.EXPANDABLE_INFO_TEXT);
            appCompatActivity.getWindow().setSoftInputMode(2);
            m5154(appCompatActivity, c0594M3986);
        } catch (Exception e) {
            C0273.f1383.m3988().runtimeError(new C0250(C0558.m5449(110, 4, 1), C0558.m5480(e)));
        }
    }

    public void m5153(AppCompatActivity appCompatActivity) {
        Button button;
        LinearLayout linearLayout = (LinearLayout) appCompatActivity.findViewById(R.id.challengeLayout);
        if (linearLayout == null) {
            return;
        }
        Button button2 = (Button) linearLayout.findViewById(R.id.submit);
        if (button2 != null) {
            button2.setEnabled(false);
            button2.setClickable(false);
        }
        if (EnumC0457.TEXT != C0555.m5442() || (button = (Button) linearLayout.findViewById(R.id.resend)) == null) {
            return;
        }
        button.setEnabled(false);
        button.setClickable(false);
    }

    public void m5159(String str, AppCompatActivity appCompatActivity) {
        m5160(str, appCompatActivity, false);
    }

    public void m5160(String str, AppCompatActivity appCompatActivity, boolean z) {
        C0594 c0594M3986 = C0273.f1383.m3986();
        this.f2726 = false;
        m5153(appCompatActivity);
        m5150(appCompatActivity);
        new C0479(c0594M3986, z, str, appCompatActivity).start();
    }

    public void m5156(AppCompatActivity appCompatActivity) {
        this.f2726 = false;
        m5150(appCompatActivity);
        new C0483(appCompatActivity).start();
    }

    public final void m5158(AppCompatActivity appCompatActivity, C0594 c0594) {
        ProgressDialogC0491 progressDialogC0491 = this.f2727;
        if ((progressDialogC0491 == null || !progressDialogC0491.isShowing()) && c0594.m5581() <= 0) {
            C0273 c0273 = C0273.f1383;
            String strM5449 = C0558.m5449(263, 54, 83);
            C0594 c0595 = c0273.f1394;
            if (c0595 != null) {
                c0595.m5589(1, strM5449, C0273.f1386);
            }
            appCompatActivity.runOnUiThread(new RunnableC0481(appCompatActivity));
            this.f2724.cancel();
        }
    }

    public static void m5146(ActivityC0477 activityC0477) {
        activityC0477.f2725.sendEmptyMessage(0);
    }

    public final void m5155(TextView textView, Drawable drawable, int i) {
        if (i == 1) {
            textView.setCompoundDrawables(drawable, null, null, null);
        } else if (i == 0) {
            textView.setCompoundDrawables(null, null, drawable, null);
        } else {
            textView.setCompoundDrawables(null, null, null, null);
        }
    }

    public static boolean m5149(Handler handler) {
        String string;
        String strM5586;
        String string2;
        C0594 c0594M3986 = C0273.f1383.m3986();
        int i = 1;
        try {
            C0600 c0600 = c0594M3986.f3298;
            if (c0600 != null) {
                c0600.m5608();
            }
            return true;
        } catch (C0369 e) {
            C0273.f1383.m3992(C0558.m5480(e));
            if (handler != null) {
                handler.sendEmptyMessage(0);
            }
            C0108 c0108M3988 = C0273.f1383.m3988();
            if (c0108M3988 == null) {
                return false;
            }
            if (e.f1933 > 1000) {
                try {
                    i = Integer.parseInt(c0594M3986.m5586(C0558.m5449(TypedValues.AttributesType.TYPE_EASING, 22, 2)));
                } catch (C0369 unused) {
                }
                if (i <= 0 && e.f1933 == 1402) {
                    c0108M3988.timedout();
                } else {
                    try {
                        string = c0594M3986.m5586(C0558.m5449(339, 9, 41));
                        try {
                            strM5586 = c0594M3986.m5586(C0558.m5449(348, 16, 0));
                            try {
                                string2 = c0594M3986.m5586(C0558.m5449(364, 11, 20));
                            } catch (C0369 unused2) {
                                string2 = "";
                                if (string.length() == 0) {
                                    string = C0663.m5891("").append(e.f1933).toString();
                                    string2 = C0663.m5891(string2).append(C0558.m5480(e)).toString();
                                }
                                c0108M3988.protocolError(new C0533(c0594M3986.m5585(), new C0411(c0594M3986.m5585(), string, strM5586, string2)));
                                return false;
                            }
                        } catch (C0369 unused3) {
                            strM5586 = "";
                        }
                    } catch (C0369 unused4) {
                        string = "";
                        strM5586 = string;
                    }
                    if (string.length() == 0) {
                        string = C0663.m5891("").append(e.f1933).toString();
                        string2 = C0663.m5891(string2).append(C0558.m5480(e)).toString();
                    }
                    c0108M3988.protocolError(new C0533(c0594M3986.m5585(), new C0411(c0594M3986.m5585(), string, strM5586, string2)));
                }
            } else {
                c0108M3988.runtimeError(new C0250(e));
            }
            return false;
        }
    }

    public void m5161(String str, String str2) {
        C0273.f1383.m3988().completed(new C0227(str, str2));
    }

    public static String m5145(String str) {
        return str.replace("\\n", f2723);
    }
}
