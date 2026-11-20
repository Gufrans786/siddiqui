package sa.lg.android.locate.autobid;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public final class AutoBidLoginActivity extends Activity {
    private static final int ACCENT = Color.rgb(209, 32, 73);
    private static final int DARK = Color.rgb(55, 14, 29);
    private static final int INK = Color.rgb(36, 46, 61);
    private static final int MUTED = Color.rgb(103, 112, 126);
    private static final int BORDER = Color.rgb(220, 224, 230);
    private static final String SESSION_EXPIRY = "authenticated_expiry";
    private static final Handler EXPIRY_HANDLER = new Handler(Looper.getMainLooper());
    private static Runnable expiryTask;
    private static boolean unlocked;

    public static boolean guard(Activity activity) {
        if (unlocked) {
            return false;
        }
        long expiry = activity.getSharedPreferences("mgs_offline_login", MODE_PRIVATE).getLong(SESSION_EXPIRY, 0);
        if (expiry > System.currentTimeMillis()) {
            unlocked = true;
            scheduleExpiry(activity.getApplicationContext(), expiry);
            return false;
        }
        if (expiry > 0) {
            activity.getSharedPreferences("mgs_offline_login", MODE_PRIVATE).edit().remove(SESSION_EXPIRY).apply();
        }
        Intent login = new Intent(activity, AutoBidLoginActivity.class);
        login.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        activity.startActivity(login);
        activity.finish();
        return true;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        if (restoreSession()) {
            return;
        }
        getWindow().setStatusBarColor(DARK);
        getWindow().setNavigationBarColor(Color.WHITE);
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        }

        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setFitsSystemWindows(true);
        GradientDrawable background = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[]{DARK, Color.rgb(101, 20, 46), DARK});
        scroll.setBackground(background);
        setContentView(scroll);

        LinearLayout center = new LinearLayout(this);
        center.setOrientation(LinearLayout.VERTICAL);
        center.setGravity(Gravity.CENTER);
        center.setPadding(dp(22), dp(24), dp(22), dp(24));
        scroll.addView(center, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(20), dp(20), dp(20), dp(20));
        card.setBackground(rounded(Color.WHITE, 24));
        int cardWidth = Math.min(getResources().getDisplayMetrics().widthPixels - dp(44), dp(480));
        center.addView(card, new LinearLayout.LayoutParams(cardWidth, ViewGroup.LayoutParams.WRAP_CONTENT));

        FrameLayout logoFrame = new FrameLayout(this);
        GradientDrawable goldRing = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[]{Color.rgb(255, 241, 170), Color.rgb(213, 151, 36), Color.rgb(255, 221, 112)});
        goldRing.setShape(GradientDrawable.OVAL);
        logoFrame.setBackground(goldRing);
        logoFrame.setElevation(dp(3));

        ImageView logo = new ImageView(this);
        int logoResource = getResources().getIdentifier("mgs_pro_logo", "drawable", getPackageName());
        logo.setImageResource(logoResource);
        logo.setScaleType(ImageView.ScaleType.CENTER_CROP);
        GradientDrawable logoBackground = new GradientDrawable();
        logoBackground.setShape(GradientDrawable.OVAL);
        logoBackground.setColor(Color.BLACK);
        logo.setBackground(logoBackground);
        logo.setClipToOutline(true);
        FrameLayout.LayoutParams imageParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        imageParams.setMargins(dp(3), dp(3), dp(3), dp(3));
        logoFrame.addView(logo, imageParams);

        LinearLayout.LayoutParams logoParams = new LinearLayout.LayoutParams(dp(78), dp(78));
        logoParams.gravity = Gravity.CENTER_HORIZONTAL;
        card.addView(logoFrame, logoParams);

        TextView title = text("MGS Auto", 24, INK, true);
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, dp(10), 0, 0);
        card.addView(title);
        TextView description = text("Sign in with your offline credentials\nto continue to Locate Go", 12, MUTED, false);
        description.setGravity(Gravity.CENTER);
        description.setPadding(0, dp(6), 0, dp(14));
        card.addView(description);

        final String deviceUserId = OfflineLicense.userId(this);
        card.addView(text("Your User ID", 13, INK, true));
        LinearLayout userRow = new LinearLayout(this);
        userRow.setOrientation(LinearLayout.HORIZONTAL);
        userRow.setGravity(Gravity.CENTER_VERTICAL);
        userRow.setBackground(outlined(Color.rgb(250, 250, 252), BORDER, 13));
        TextView userId = text(deviceUserId, 16, INK, true);
        userId.setGravity(Gravity.CENTER_VERTICAL);
        userId.setPadding(dp(14), 0, dp(6), 0);
        userRow.addView(userId, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1));
        Button copy = button("Copy", Color.TRANSPARENT, ACCENT, true);
        LinearLayout.LayoutParams copyParams = new LinearLayout.LayoutParams(dp(82), dp(38));
        copyParams.rightMargin = dp(4);
        userRow.addView(copy, copyParams);
        card.addView(userRow, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(48)));
        TextView userHelp = text("Share this ID to get a password for this phone", 11, MUTED, false);
        userHelp.setPadding(0, dp(6), 0, 0);
        card.addView(userHelp);

        TextView passwordLabel = text("Password", 13, INK, true);
        passwordLabel.setPadding(0, dp(10), 0, 0);
        card.addView(passwordLabel);
        final EditText password = input("Enter device password", true);
        card.addView(password, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(48)));

        final TextView error = text("", 13, ACCENT, true);
        error.setPadding(0, dp(8), 0, 0);
        error.setVisibility(View.GONE);
        card.addView(error);

        Button login = button("Login", ACCENT, Color.WHITE, false);
        LinearLayout.LayoutParams loginParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(48));
        loginParams.topMargin = dp(16);
        card.addView(login, loginParams);

        Button buy = button("Buy on Telegram  •  @Gufran3729", Color.TRANSPARENT, ACCENT, true);
        LinearLayout.LayoutParams buyParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(46));
        buyParams.topMargin = dp(10);
        card.addView(buy, buyParams);

        login.setOnClickListener(view -> {
            String pass = password.getText().toString();
            if (pass.trim().isEmpty()) {
                showError(error, "Enter the password for this phone");
                return;
            }
            long expiry = OfflineLicense.validExpiry(deviceUserId, pass);
            if (expiry < 0) {
                showError(error, "Invalid password for this phone");
                password.selectAll();
                return;
            }
            if (expiry == 0) {
                showError(error, "Password expired. Contact @Gufran3729");
                password.selectAll();
                return;
            }
            getSharedPreferences("mgs_offline_login", MODE_PRIVATE).edit().putLong(SESSION_EXPIRY, expiry).commit();
            unlocked = true;
            scheduleExpiry(getApplicationContext(), expiry);
            openMainActivity();
        });
        copy.setOnClickListener(view -> {
            android.content.ClipboardManager clipboard = (android.content.ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
            clipboard.setPrimaryClip(android.content.ClipData.newPlainText("MGS User ID", deviceUserId));
            Toast.makeText(this, "User ID copied", Toast.LENGTH_SHORT).show();
        });
        buy.setOnClickListener(view -> openTelegram());
        password.setOnEditorActionListener((view, actionId, event) -> {
            if (actionId == android.view.inputmethod.EditorInfo.IME_ACTION_DONE) {
                login.performClick();
                return true;
            }
            return false;
        });
    }

    private boolean restoreSession() {
        long expiry = getSharedPreferences("mgs_offline_login", MODE_PRIVATE).getLong(SESSION_EXPIRY, 0);
        if (expiry > System.currentTimeMillis()) {
            unlocked = true;
            scheduleExpiry(getApplicationContext(), expiry);
            openMainActivity();
            return true;
        }
        if (expiry > 0) {
            getSharedPreferences("mgs_offline_login", MODE_PRIVATE).edit().remove(SESSION_EXPIRY).apply();
        }
        return false;
    }

    private void openMainActivity() {
        Intent main = new Intent();
        main.setClassName(this, "sa.lg.android.locate.MainActivity");
        main.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        startActivity(main);
        finish();
        overridePendingTransition(0, 0);
    }

    private static void scheduleExpiry(android.content.Context application, long expiry) {
        if (expiryTask != null) {
            EXPIRY_HANDLER.removeCallbacks(expiryTask);
        }
        expiryTask = () -> {
            unlocked = false;
            application.getSharedPreferences("mgs_offline_login", MODE_PRIVATE).edit().remove(SESSION_EXPIRY).apply();
            AutoBidService.stop(application);
            android.util.Log.i("AUTOBID", "License expired; closing application");
            System.exit(0);
        };
        EXPIRY_HANDLER.postDelayed(expiryTask, expiry - System.currentTimeMillis());
    }

    private void openTelegram() {
        try {
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("https://t.me/Gufran3729")));
        } catch (ActivityNotFoundException error) {
            Toast.makeText(this, "Open Telegram: @Gufran3729", Toast.LENGTH_LONG).show();
        }
    }

    private static void showError(TextView error, String message) {
        error.setText(message);
        error.setVisibility(View.VISIBLE);
    }

    private EditText input(String hint, boolean password) {
        EditText input = new EditText(this);
        input.setTextSize(16);
        input.setTextColor(INK);
        input.setHintTextColor(MUTED);
        input.setHint(hint);
        input.setSingleLine(true);
        input.setPadding(dp(16), 0, dp(16), 0);
        input.setBackground(outlined(Color.rgb(250, 250, 252), BORDER, 13));
        input.setInputType(password
                ? InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD
                : InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        input.setImeOptions(password ? android.view.inputmethod.EditorInfo.IME_ACTION_DONE : android.view.inputmethod.EditorInfo.IME_ACTION_NEXT);
        return input;
    }

    private Button button(String value, int background, int foreground, boolean outline) {
        Button button = new Button(this);
        button.setText(value);
        button.setTextSize(14);
        button.setTextColor(foreground);
        button.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        button.setAllCaps(false);
        button.setGravity(Gravity.CENTER);
        button.setPadding(dp(8), 0, dp(8), 0);
        button.setBackground(outline ? outlined(background, ACCENT, 14) : rounded(background, 14));
        return button;
    }

    private TextView text(String value, int size, int color, boolean bold) {
        TextView text = new TextView(this);
        text.setText(value);
        text.setTextSize(size);
        text.setTextColor(color);
        text.setTypeface(Typeface.DEFAULT, bold ? Typeface.BOLD : Typeface.NORMAL);
        return text;
    }

    private GradientDrawable rounded(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(radius));
        return drawable;
    }

    private GradientDrawable outlined(int color, int border, int radius) {
        GradientDrawable drawable = rounded(color, radius);
        drawable.setStroke(dp(1), border);
        return drawable;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
