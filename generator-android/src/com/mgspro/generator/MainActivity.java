package com.mgspro.generator;

import android.app.Activity;
import android.content.ClipboardManager;
import android.content.ClipData;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ArrayAdapter;

import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class MainActivity extends Activity {
    private static final String GENERATOR_KEY = "MGS-AUTO-Gufran3729-device-license-v1";
    private static final String ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
    private static final int ACCENT = Color.rgb(209, 32, 73);
    private static final int DARK = Color.rgb(55, 14, 29);
    private static final int INK = Color.rgb(36, 46, 61);
    private static final int MUTED = Color.rgb(103, 112, 126);
    private static final int BORDER = Color.rgb(220, 224, 230);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.setFitsSystemWindows(true);
        scroll.setBackground(new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[]{DARK, Color.rgb(101, 20, 46), DARK}));
        setContentView(scroll);

        LinearLayout center = new LinearLayout(this);
        center.setOrientation(LinearLayout.VERTICAL);
        center.setGravity(Gravity.CENTER);
        center.setPadding(dp(22), dp(24), dp(22), dp(24));
        scroll.addView(center, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(22), dp(22), dp(22), dp(22));
        card.setBackground(rounded(Color.WHITE, 24));
        center.addView(card, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        ImageView logo = new ImageView(this);
        logo.setImageResource(R.drawable.mgs_pro_logo);
        LinearLayout.LayoutParams logoParams = new LinearLayout.LayoutParams(dp(92), dp(88));
        logoParams.gravity = Gravity.CENTER_HORIZONTAL;
        card.addView(logo, logoParams);

        TextView title = text("MGS PRO", 26, INK, true);
        title.setGravity(Gravity.CENTER);
        title.setPadding(0, dp(10), 0, 0);
        card.addView(title);
        TextView subtitle = text("Offline Password Generator", 15, ACCENT, true);
        subtitle.setGravity(Gravity.CENTER);
        card.addView(subtitle);
        TextView description = text("Create a separate password for each phone", 12, MUTED, false);
        description.setGravity(Gravity.CENTER);
        description.setPadding(0, dp(8), 0, dp(14));
        card.addView(description);

        TextView steps = text("1. Copy the User ID from MGS Auto\n2. Paste it below and generate a password\n3. Use that password on the same phone", 12, INK, false);
        steps.setPadding(dp(14), dp(12), dp(14), dp(12));
        steps.setBackground(rounded(Color.rgb(247, 248, 250), 13));
        card.addView(steps);

        TextView inputLabel = text("Customer User ID", 13, INK, true);
        inputLabel.setPadding(0, dp(18), 0, 0);
        card.addView(inputLabel);
        final EditText userId = new EditText(this);
        userId.setTextSize(16);
        userId.setTextColor(INK);
        userId.setHintTextColor(MUTED);
        userId.setHint("MGS-XXXX-XXXX");
        userId.setSingleLine(true);
        userId.setPadding(dp(16), 0, dp(16), 0);
        userId.setBackground(outlined(Color.rgb(250, 250, 252), BORDER, 13));
        userId.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_CHARACTERS | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        card.addView(userId, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(50)));

        TextView validityLabel = text("Validity period", 13, INK, true);
        validityLabel.setPadding(0, dp(14), 0, 0);
        card.addView(validityLabel);
        final Spinner validity = new Spinner(this);
        ArrayAdapter<String> durations = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, new String[]{"30 days", "60 days"});
        durations.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        validity.setAdapter(durations);
        validity.setBackground(outlined(Color.rgb(250, 250, 252), BORDER, 13));
        card.addView(validity, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(50)));

        final TextView status = text("", 13, ACCENT, true);
        status.setGravity(Gravity.CENTER);
        status.setPadding(0, dp(8), 0, 0);
        card.addView(status);

        Button generate = button("Generate device password", ACCENT, Color.WHITE, false);
        LinearLayout.LayoutParams generateParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(48));
        generateParams.topMargin = dp(8);
        card.addView(generate, generateParams);

        TextView resultLabel = text("GENERATED PASSWORD", 11, MUTED, true);
        resultLabel.setGravity(Gravity.CENTER);
        resultLabel.setPadding(0, dp(20), 0, 0);
        card.addView(resultLabel);
        final TextView result = text("—", 20, ACCENT, true);
        result.setGravity(Gravity.CENTER);
        result.setPadding(0, dp(8), 0, dp(8));
        card.addView(result);
        final Button copy = button("Copy password", Color.TRANSPARENT, ACCENT, true);
        card.addView(copy, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(46)));

        generate.setOnClickListener(view -> {
            String id = userId.getText().toString().trim().toUpperCase(Locale.US).replace(" ", "");
            if (!id.matches("MGS-[A-HJ-NP-Z2-9]{4}-[A-HJ-NP-Z2-9]{4}")) {
                result.setText("—");
                status.setText("Enter a valid User ID, for example MGS-ABCD-EFGH");
                return;
            }
            int days = validity.getSelectedItemPosition() == 1 ? 60 : 30;
            String expiry = expiryDate(days);
            String password = "MGS" + days + "-" + expiry + "-" + passwordFor(id, days, expiry);
            result.setText(password);
            status.setText(id + "\nExpires: " + expiryLabel(expiry));
        });
        copy.setOnClickListener(view -> {
            String password = result.getText().toString();
            if (!password.matches("MGS(30|60)-[0-9]{8}-[A-Z0-9]{10}")) {
                status.setText("Generate a password first");
                return;
            }
            ClipboardManager clipboard = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
            clipboard.setPrimaryClip(ClipData.newPlainText("MGS device password", password));
            Toast.makeText(this, "Password copied", Toast.LENGTH_SHORT).show();
        });
        userId.setOnEditorActionListener((view, actionId, event) -> {
            if (actionId == android.view.inputmethod.EditorInfo.IME_ACTION_DONE) {
                generate.performClick();
                return true;
            }
            return false;
        });
    }

    private static String passwordFor(String userId, int days, String expiry) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(GENERATOR_KEY.getBytes(StandardCharsets.UTF_8), "HmacSHA256"));
            String signedValue = userId + ":" + days + ":" + expiry;
            return base32(mac.doFinal(signedValue.getBytes(StandardCharsets.UTF_8)), 10);
        } catch (GeneralSecurityException error) {
            throw new IllegalStateException(error);
        }
    }

    private static String expiryDate(int days) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.add(Calendar.DAY_OF_YEAR, days);
        return new SimpleDateFormat("yyyyMMdd", Locale.US).format(calendar.getTime());
    }

    private static String expiryLabel(String expiry) {
        try {
            SimpleDateFormat parser = new SimpleDateFormat("yyyyMMdd", Locale.US);
            parser.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date date = parser.parse(expiry);
            SimpleDateFormat display = new SimpleDateFormat("dd MMM yyyy", Locale.US);
            display.setTimeZone(TimeZone.getTimeZone("UTC"));
            return display.format(date) + ", 11:59 PM UTC";
        } catch (Exception error) {
            return expiry;
        }
    }

    private static String base32(byte[] data, int length) {
        StringBuilder result = new StringBuilder(length);
        int buffer = 0;
        int bits = 0;
        int index = 0;
        while (result.length() < length) {
            if (bits < 5) {
                buffer = (buffer << 8) | (data[index++] & 0xff);
                bits += 8;
            }
            result.append(ALPHABET.charAt((buffer >> (bits - 5)) & 31));
            bits -= 5;
        }
        return result.toString();
    }

    private Button button(String value, int background, int foreground, boolean outline) {
        Button button = new Button(this);
        button.setText(value);
        button.setTextSize(14);
        button.setTextColor(foreground);
        button.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        button.setAllCaps(false);
        button.setGravity(Gravity.CENTER);
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
