package sa.lg.android.locate.autobid;

import android.Manifest;
import android.app.Activity;
import android.app.Dialog;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.View;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Locale;

public final class AutoBidController {
    private static final int ACCENT = Color.rgb(209, 32, 73);
    private static final int INK = Color.rgb(36, 46, 61);
    private static final int MUTED = Color.rgb(103, 112, 126);
    private static final int SURFACE = Color.rgb(247, 248, 250);
    private static final int SUCCESS = Color.rgb(22, 139, 87);

    private AutoBidController() {
    }

    public static void install(final Activity activity) {
        AutoBidRuntime.initialize(activity);
        AutoBidPreferences preferences = new AutoBidPreferences(activity);
        if (preferences.anyModeEnabled()) {
            updateWorker(activity, preferences);
        }
        new Handler(Looper.getMainLooper()).postDelayed(() -> {
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                show(activity);
            }
        }, 1500);
    }

    public static boolean handleVolumeUp(Activity activity, android.view.KeyEvent event) {
        if (event.getKeyCode() == android.view.KeyEvent.KEYCODE_VOLUME_UP
                && event.getAction() == android.view.KeyEvent.ACTION_DOWN
                && event.getRepeatCount() == 0) {
            show(activity);
            return true;
        }
        return false;
    }

    public static boolean handleVolumeDown(Activity activity, android.view.KeyEvent event) {
        if (event.getKeyCode() == android.view.KeyEvent.KEYCODE_VOLUME_DOWN
                && event.getAction() == android.view.KeyEvent.ACTION_DOWN
                && event.getRepeatCount() == 0) {
            showHistory(activity);
            return true;
        }
        return false;
    }

    public static void showHistory(final Activity activity) {
        AutoBidRuntime.initialize(activity);
        final AutoBidPreferences preferences = new AutoBidPreferences(activity);
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setBackground(rounded(activity, Color.WHITE, 22));
        dialog.setContentView(content);

        LinearLayout header = new LinearLayout(activity);
        header.setOrientation(LinearLayout.VERTICAL);
        header.setPadding(dp(activity, 20), dp(activity, 18), dp(activity, 20), dp(activity, 18));
        header.setBackground(rounded(activity, ACCENT, 22));
        header.addView(text(activity, "Order history", 24, Color.WHITE, true));
        header.addView(text(activity, "Accepted, rejected and skipped orders • Volume Down", 12, Color.rgb(255, 224, 233), false));
        content.addView(header);

        LinearLayout body = new LinearLayout(activity);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(dp(activity, 16), dp(activity, 14), dp(activity, 16), dp(activity, 16));
        content.addView(body);
        LinearLayout historyCard = card(activity, SURFACE);
        historyCard.addView(text(activity, "Pickup and dropoff distances are included with each result", 11, MUTED, false));
        final TextView historyLog = text(activity, historyText(preferences), 13, INK, false);
        historyLog.setPadding(0, dp(activity, 10), 0, dp(activity, 10));
        historyLog.setMaxLines(18);
        historyCard.addView(historyLog);
        body.addView(historyCard);

        LinearLayout actions = new LinearLayout(activity);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        Button clear = button(activity, "Clear history", Color.WHITE, ACCENT, true);
        Button close = button(activity, "Close", ACCENT, Color.WHITE, false);
        actions.addView(clear, new LinearLayout.LayoutParams(0, dp(activity, 50), 1));
        actions.addView(close, new LinearLayout.LayoutParams(0, dp(activity, 50), 1));
        body.addView(actions);

        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable updater = new Runnable() {
            @Override
            public void run() {
                historyLog.setText(historyText(preferences));
                handler.postDelayed(this, 1500);
            }
        };
        handler.post(updater);
        clear.setOnClickListener(view -> {
            preferences.clearHistory();
            historyLog.setText(historyText(preferences));
            Toast.makeText(activity, "Order history cleared", Toast.LENGTH_SHORT).show();
        });
        close.setOnClickListener(view -> dialog.dismiss());
        dialog.setOnDismissListener(ignored -> handler.removeCallbacks(updater));
        dialog.show();
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            window.setDimAmount(0.58f);
            window.setLayout((int) (activity.getResources().getDisplayMetrics().widthPixels * 0.90), (int) (activity.getResources().getDisplayMetrics().heightPixels * 0.68));
        }
    }

    private static String historyText(AutoBidPreferences preferences) {
        StringBuilder result = new StringBuilder();
        for (String line : preferences.activityLog().split("\\n")) {
            String value = line.toLowerCase(Locale.US);
            if (value.contains("accepted") || value.contains("rejected") || value.contains("skipped") || value.contains("accept failed") || value.contains("reject failed") || value.contains(" far ")) {
                result.append(line).append('\n');
            }
        }
        return result.length() == 0 ? "No order decisions yet" : result.toString().trim();
    }

    public static void show(final Activity activity) {
        AutoBidRuntime.initialize(activity);
        final AutoBidPreferences preferences = new AutoBidPreferences(activity);
        final Dialog dialog = new Dialog(activity);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);

        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
        content.setTextDirection(View.TEXT_DIRECTION_LTR);
        content.setBackground(rounded(activity, Color.WHITE, 18));
        content.setClipToOutline(true);
        content.setElevation(dp(activity, 12));
        content.setFocusableInTouchMode(true);
        dialog.setContentView(content);

        LinearLayout header = new LinearLayout(activity);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 12));
        LinearLayout heading = new LinearLayout(activity);
        heading.setOrientation(LinearLayout.VERTICAL);
        heading.addView(text(activity, "MGS Auto", 20, INK, true));
        final TextView status = text(activity, preferences.status(), 11,
                preferences.anyModeEnabled() ? SUCCESS : MUTED, false);
        status.setPadding(0, dp(activity, 3), 0, 0);
        status.setMaxLines(2);
        heading.addView(status);
        header.addView(heading, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        TextView shortcut = text(activity, "VOL +", 10, ACCENT, true);
        shortcut.setPadding(dp(activity, 9), dp(activity, 5), dp(activity, 9), dp(activity, 5));
        shortcut.setBackground(rounded(activity, Color.rgb(255, 238, 243), 8));
        header.addView(shortcut);
        content.addView(header);
        View divider = new View(activity);
        divider.setBackgroundColor(Color.rgb(231, 234, 240));
        content.addView(divider, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 1)));

        ScrollView scrollView = new ScrollView(activity);
        scrollView.setVerticalScrollBarEnabled(false);
        scrollView.setBackgroundColor(SURFACE);
        content.addView(scrollView, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1));
        LinearLayout body = new LinearLayout(activity);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(dp(activity, 10), dp(activity, 10), dp(activity, 10), dp(activity, 2));
        scrollView.addView(body);

        LinearLayout locationCard = card(activity, Color.WHITE);
        final LocationPickerCard locationPicker = new LocationPickerCard(activity, preferences);
        locationCard.addView(locationPicker);
        body.addView(locationCard);

        LinearLayout priceCard = card(activity, Color.WHITE);
        final Switch price = modeRow(activity, priceCard, "Price filter", "Accept orders within your SAR range");
        final EditText minPrice = input(activity, "Minimum SAR", true);
        final EditText maxPrice = input(activity, "Maximum SAR", true);
        priceCard.addView(rangeRow(activity, minPrice, maxPrice));
        body.addView(priceCard);

        LinearLayout distanceCard = card(activity, Color.WHITE);
        final Switch distance = modeRow(activity, distanceCard, "Distance filter", "Choose pickup and/or dropoff points");
        final EditText minPickup = input(activity, "Pickup min km", true);
        final EditText maxPickup = input(activity, "Pickup max km", true);
        distanceCard.addView(rangeRow(activity, minPickup, maxPickup));
        final EditText minDropoff = input(activity, "Dropoff min km", true);
        final EditText maxDropoff = input(activity, "Dropoff max km", true);
        distanceCard.addView(rangeRow(activity, minDropoff, maxDropoff));
        LinearLayout targets = new LinearLayout(activity);
        targets.setOrientation(LinearLayout.HORIZONTAL);
        final android.widget.CheckBox pickup = new android.widget.CheckBox(activity);
        pickup.setText("Pickup / restaurant");
        pickup.setTextColor(INK);
        pickup.setTextSize(11);
        pickup.setBackground(outlined(activity));
        pickup.setPadding(dp(activity, 5), dp(activity, 3), dp(activity, 5), dp(activity, 3));
        final android.widget.CheckBox dropoff = new android.widget.CheckBox(activity);
        dropoff.setText("Dropoff / customer");
        dropoff.setTextColor(INK);
        dropoff.setTextSize(11);
        dropoff.setBackground(outlined(activity));
        dropoff.setPadding(dp(activity, 5), dp(activity, 3), dp(activity, 5), dp(activity, 3));
        targets.addView(pickup, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        targets.addView(dropoff, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        distanceCard.addView(targets);
        TextView targetNote = text(activity, "Every selected point must be inside its own min/max range.", 11, MUTED, false);
        distanceCard.addView(targetNote);
        body.addView(distanceCard);

        LinearLayout rejectCard = card(activity, Color.rgb(255, 244, 246));
        final Switch rejectFar = modeRow(activity, rejectCard, "Reject far orders", "Reject beyond the selected maximum");
        TextView rejectNote = text(activity, "Orders with unknown location are never rejected.", 11, MUTED, false);
        rejectNote.setPadding(0, dp(activity, 4), 0, 0);
        rejectCard.addView(rejectNote);
        body.addView(rejectCard);

        price.setChecked(preferences.priceEnabled());
        distance.setChecked(preferences.distanceEnabled());
        rejectFar.setChecked(preferences.rejectFar());
        pickup.setChecked(preferences.pickupEnabled());
        dropoff.setChecked(preferences.dropoffEnabled());
        minPrice.setText(number(preferences.minPrice()));
        maxPrice.setText(number(preferences.maxPrice()));
        minPickup.setText(preferences.pickupMinDistanceText());
        maxPickup.setText(preferences.pickupMaxDistanceText());
        minDropoff.setText(preferences.dropoffMinDistanceText());
        maxDropoff.setText(preferences.dropoffMaxDistanceText());

        LinearLayout actions = new LinearLayout(activity);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setPadding(dp(activity, 12), dp(activity, 10), dp(activity, 12), dp(activity, 12));
        Button close = button(activity, "Close", Color.WHITE, INK, true);
        Button apply = button(activity, "Save & apply", ACCENT, Color.WHITE, false);
        LinearLayout.LayoutParams closeParams = new LinearLayout.LayoutParams(0, dp(activity, 42), 1);
        closeParams.setMargins(0, 0, dp(activity, 8), 0);
        actions.addView(close, closeParams);
        actions.addView(apply, new LinearLayout.LayoutParams(0, dp(activity, 42), 2));
        content.addView(actions);

        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable statusUpdater = new Runnable() {
            @Override
            public void run() {
                status.setText(preferences.status());
                status.setTextColor(preferences.anyModeEnabled() ? SUCCESS : MUTED);
                handler.postDelayed(this, 1500);
            }
        };
        handler.post(statusUpdater);

        android.widget.CompoundButton.OnCheckedChangeListener listener = (view, checked) -> {
            save(activity, preferences, price, distance, rejectFar, pickup, dropoff, minPrice, maxPrice, minPickup, maxPickup, minDropoff, maxDropoff);
            if (checked && (view == distance || view == rejectFar) && !hasLocation(activity)) {
                activity.requestPermissions(new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 41);
            }
            updateWorker(activity, preferences);
        };
        price.setOnCheckedChangeListener(listener);
        distance.setOnCheckedChangeListener(listener);
        rejectFar.setOnCheckedChangeListener(listener);
        pickup.setOnCheckedChangeListener((view, checked) -> save(activity, preferences, price, distance, rejectFar, pickup, dropoff, minPrice, maxPrice, minPickup, maxPickup, minDropoff, maxDropoff));
        dropoff.setOnCheckedChangeListener((view, checked) -> save(activity, preferences, price, distance, rejectFar, pickup, dropoff, minPrice, maxPrice, minPickup, maxPickup, minDropoff, maxDropoff));
        close.setOnClickListener(view -> dialog.dismiss());
        apply.setOnClickListener(view -> {
            save(activity, preferences, price, distance, rejectFar, pickup, dropoff, minPrice, maxPrice, minPickup, maxPickup, minDropoff, maxDropoff);
            updateWorker(activity, preferences);
            dialog.dismiss();
        });
        dialog.setOnDismissListener(ignored -> {
            handler.removeCallbacks(statusUpdater);
            locationPicker.destroy();
            save(activity, preferences, price, distance, rejectFar, pickup, dropoff, minPrice, maxPrice, minPickup, maxPickup, minDropoff, maxDropoff);
        });
        dialog.show();
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            window.setDimAmount(0.58f);
            int dialogWidth = Math.min((int) (activity.getResources().getDisplayMetrics().widthPixels * 0.90), dp(activity, 420));
            int dialogHeight = Math.min((int) (activity.getResources().getDisplayMetrics().heightPixels * 0.76), dp(activity, 620));
            window.setLayout(dialogWidth, dialogHeight);
            window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        }
    }

    private static void updateWorker(Activity activity, AutoBidPreferences preferences) {
        if (!preferences.anyModeEnabled()) {
            AutoBidService.stop(activity);
            return;
        }
        if (preferences.token().isEmpty() || preferences.driverId().isEmpty()) {
            Toast.makeText(activity, "Bearer token and driver ID are required", Toast.LENGTH_LONG).show();
            return;
        }
        if ((preferences.distanceEnabled() || preferences.rejectFar()) && !hasLocation(activity)) {
            return;
        }
        AutoBidService.start(activity);
    }

    private static void save(Activity activity, AutoBidPreferences preferences, Switch price, Switch distance, Switch rejectFar, android.widget.CheckBox pickup, android.widget.CheckBox dropoff, EditText minPrice, EditText maxPrice, EditText minPickup, EditText maxPickup, EditText minDropoff, EditText maxDropoff) {
        preferences.saveModes(preferences.allOrders(), price.isChecked(), distance.isChecked());
        preferences.saveRejectFar(rejectFar.isChecked());
        preferences.saveDistanceTargets(pickup.isChecked() || !dropoff.isChecked(), dropoff.isChecked());
        preferences.savePrice(numberValue(minPrice, 0), numberValue(maxPrice, 1000));
        preferences.saveDistanceRanges(numberText(minPickup, "0"), numberText(maxPickup, "5"), numberText(minDropoff, "0"), numberText(maxDropoff, "5"));
        AutoBidRuntime.initialize(activity);
    }

    private static LinearLayout card(Activity activity, int color) {
        LinearLayout card = new LinearLayout(activity);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(activity, 12), dp(activity, 10), dp(activity, 12), dp(activity, 10));
        GradientDrawable surface = rounded(activity, color, 12);
        surface.setStroke(dp(activity, 1), Color.rgb(230, 233, 239));
        card.setBackground(surface);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(0, 0, 0, dp(activity, 8));
        card.setLayoutParams(params);
        return card;
    }

    private static Switch modeRow(Activity activity, LinearLayout card, String title, String subtitle) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout labels = new LinearLayout(activity);
        labels.setOrientation(LinearLayout.VERTICAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        labels.addView(text(activity, title, 14, INK, true));
        labels.addView(text(activity, subtitle, 11, MUTED, false));
        row.addView(labels, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1));
        Switch toggle = new Switch(activity);
        int[][] states = new int[][]{new int[]{android.R.attr.state_checked}, new int[]{}};
        toggle.setThumbTintList(new ColorStateList(states, new int[]{ACCENT, Color.rgb(166, 174, 187)}));
        toggle.setTrackTintList(new ColorStateList(states, new int[]{Color.rgb(250, 200, 214), Color.rgb(223, 227, 234)}));
        toggle.setContentDescription(title);
        toggle.setPadding(dp(activity, 8), 0, 0, 0);
        row.addView(toggle);
        card.addView(row);
        return toggle;
    }

    private static LinearLayout rangeRow(Activity activity, EditText first, EditText second) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams left = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
        left.setMargins(0, dp(activity, 5), dp(activity, 5), 0);
        LinearLayout.LayoutParams right = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1);
        right.setMargins(dp(activity, 5), dp(activity, 5), 0, 0);
        row.addView(labelledInput(activity, first), left);
        row.addView(labelledInput(activity, second), right);
        return row;
    }

    private static LinearLayout labelledInput(Activity activity, EditText input) {
        LinearLayout wrapper = new LinearLayout(activity);
        wrapper.setOrientation(LinearLayout.VERTICAL);
        wrapper.addView(text(activity, input.getHint().toString(), 11, MUTED, false));
        wrapper.addView(input, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 38)));
        return wrapper;
    }

    private static EditText input(Activity activity, String hint, boolean decimal) {
        EditText input = new EditText(activity);
        input.setHint(hint);
        input.setHintTextColor(MUTED);
        input.setTextColor(INK);
        input.setTextSize(13);
        input.setTextLocale(Locale.ENGLISH);
        input.setTextDirection(View.TEXT_DIRECTION_LTR);
        input.setSingleLine(true);
        input.setInputType(decimal ? InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_DECIMAL : InputType.TYPE_CLASS_TEXT);
        input.setBackground(outlined(activity));
        input.setPadding(dp(activity, 9), dp(activity, 4), dp(activity, 9), dp(activity, 4));
        return input;
    }

    private static TextView text(Activity activity, String value, int size, int color, boolean bold) {
        TextView view = new TextView(activity);
        view.setText(value);
        view.setTextSize(size);
        view.setTextLocale(Locale.ENGLISH);
        view.setTextColor(color);
        if (bold) {
            view.setTypeface(Typeface.DEFAULT_BOLD);
        }
        return view;
    }

    private static Button button(Activity activity, String label, int background, int foreground, boolean outline) {
        Button button = new Button(activity);
        button.setText(label);
        button.setTextColor(foreground);
        button.setTextSize(13);
        button.setAllCaps(false);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setTypeface(Typeface.DEFAULT_BOLD);
        GradientDrawable drawable = rounded(activity, background, 12);
        if (outline) {
            drawable.setStroke(dp(activity, 1), Color.rgb(220, 224, 230));
        }
        button.setBackground(drawable);
        return button;
    }

    private static GradientDrawable rounded(Activity activity, int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(activity, radius));
        return drawable;
    }

    private static GradientDrawable outlined(Activity activity) {
        GradientDrawable drawable = rounded(activity, Color.WHITE, 8);
        drawable.setStroke(dp(activity, 1), Color.rgb(217, 223, 232));
        return drawable;
    }

    private static boolean hasLocation(Activity activity) {
        return activity.checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED
                || activity.checkSelfPermission(Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_GRANTED;
    }

    private static double numberValue(EditText input, double fallback) {
        try {
            return Double.parseDouble(input.getText().toString().trim());
        } catch (NumberFormatException ignored) {
            return fallback;
        }
    }

    private static String numberText(EditText input, String fallback) {
        String value = input.getText().toString().trim();
        try {
            Double.parseDouble(value);
            return value;
        } catch (NumberFormatException ignored) {
            return fallback;
        }
    }

    private static String number(double value) {
        if (value == Math.rint(value)) {
            return String.valueOf((long) value);
        }
        return String.format(Locale.US, "%.2f", value);
    }

    private static int dp(Activity activity, int value) {
        return Math.round(value * activity.getResources().getDisplayMetrics().density);
    }
}
