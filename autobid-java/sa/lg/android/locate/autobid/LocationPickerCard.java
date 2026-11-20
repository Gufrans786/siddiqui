package sa.lg.android.locate.autobid;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Locale;

/** Manual app location in the Volume Up card. */
public final class LocationPickerCard extends LinearLayout {
    private static final int ACCENT = Color.rgb(209, 32, 73);
    private static final int INK = Color.rgb(36, 46, 61);
    private static final int MUTED = Color.rgb(103, 112, 126);
    private static final String ASSET_HOST = "appassets.androidplatform.net";
    private static final String ASSET_PREFIX = "/assets/location-picker/";
    private static final String PAGE = "https://" + ASSET_HOST + ASSET_PREFIX + "index.html";

    private final Activity activity;
    private final AutoBidPreferences preferences;
    private final TextView savedLocation;
    private final Button choose;
    private final Button clear;
    private WebView editor;
    private boolean destroyed;

    public LocationPickerCard(Activity activity, AutoBidPreferences preferences) {
        super(activity);
        this.activity = activity;
        this.preferences = preferences;
        setOrientation(VERTICAL);
        setLayoutDirection(LAYOUT_DIRECTION_LTR);
        setTextDirection(TEXT_DIRECTION_LTR);

        TextView title = label("Location picker", 14, INK);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        addView(title);
        AppLocationOverride.initialize(activity);
        TextView description = label("Choose the location used by Locate Go.", 11, MUTED);
        description.setPadding(0, dp(3), 0, dp(5));
        addView(description);
        savedLocation = label("", 12, INK);
        savedLocation.setTextIsSelectable(true);
        savedLocation.setPadding(0, 0, 0, dp(8));
        addView(savedLocation);

        LinearLayout actions = new LinearLayout(activity);
        actions.setOrientation(HORIZONTAL);
        choose = action("Choose on map", ACCENT, Color.WHITE);
        clear = action("Use real GPS", Color.WHITE, INK);
        LinearLayout.LayoutParams chooseParams = new LinearLayout.LayoutParams(0, dp(40), 1);
        chooseParams.setMargins(0, 0, dp(7), 0);
        actions.addView(choose, chooseParams);
        actions.addView(clear, new LinearLayout.LayoutParams(0, dp(40), 1));
        addView(actions);
        choose.setOnClickListener(view -> openEditor());
        clear.setOnClickListener(view -> {
            closeEditor();
            preferences.clearPickedLocation();
            AppLocationOverride.selectionChanged(activity);
            refresh();
            Toast.makeText(activity, "Using real GPS; refreshing location", Toast.LENGTH_SHORT).show();
        });
        refresh();
    }

    private void refresh() {
        boolean saved = preferences.hasPickedLocation();
        savedLocation.setText(saved
                ? String.format(Locale.US, "Active location\n%.6f, %.6f", preferences.pickedLatitude(), preferences.pickedLongitude())
                : "Using real GPS location");
        choose.setText(saved ? "Edit on map" : "Choose on map");
        clear.setEnabled(saved);
        clear.setAlpha(saved ? 1f : 0.45f);
    }

    private void openEditor() {
        if (destroyed || editor != null) {
            return;
        }
        try {
            WebView webView = new WebView(activity) {
                @Override
                public boolean onTouchEvent(MotionEvent event) {
                    if (getParent() != null) {
                        int action = event.getActionMasked();
                        getParent().requestDisallowInterceptTouchEvent(action != MotionEvent.ACTION_UP
                                && action != MotionEvent.ACTION_CANCEL);
                    }
                    return super.onTouchEvent(event);
                }
            };
            editor = webView;
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setGeolocationEnabled(false);
            settings.setDomStorageEnabled(false);
            settings.setMixedContentMode(WebSettings.MIXED_CONTENT_NEVER_ALLOW);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setSupportMultipleWindows(false);
            webView.setBackgroundColor(Color.rgb(247, 248, 250));
            webView.addJavascriptInterface(new NativeBridge(webView), "AndroidLocationPicker");
            webView.setWebViewClient(new WebViewClient() {
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                    return !isLocalAsset(request.getUrl());
                }

                @Override
                public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
                    Uri uri = request.getUrl();
                    if (isLocalAsset(uri)) {
                        String name = uri.getPath().substring(ASSET_PREFIX.length());
                        String type = name.endsWith(".js") ? "application/javascript"
                                : name.endsWith(".css") ? "text/css" : "text/html";
                        try {
                            return new WebResourceResponse(type, "UTF-8", activity.getAssets().open("location-picker/" + name));
                        } catch (IOException ignored) {
                            return blockedResponse();
                        }
                    }
                    // Vector tiles, glyphs and sprites only. All executable code is bundled locally.
                    if ("GET".equals(request.getMethod()) && "https".equals(uri.getScheme())
                            && "tiles.openfreemap.org".equals(uri.getHost())) {
                        return null;
                    }
                    return blockedResponse();
                }
            });
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(352));
            params.setMargins(0, dp(8), 0, 0);
            addView(webView, params);
            choose.setVisibility(GONE);
            clear.setVisibility(GONE);
            String url = PAGE;
            if (preferences.hasPickedLocation()) {
                url += "?lat=" + preferences.pickedLatitude() + "&lng=" + preferences.pickedLongitude()
                        + "&zoom=" + preferences.pickedZoom();
            }
            webView.loadUrl(url);
            webView.post(() -> {
                if (editor == webView) {
                    webView.requestRectangleOnScreen(new Rect(0, 0, webView.getWidth(), webView.getHeight()), false);
                }
            });
        } catch (RuntimeException error) {
            closeEditor();
            Toast.makeText(activity, "Android System WebView is unavailable. Enable or update it to open the map.", Toast.LENGTH_LONG).show();
        }
    }

    private static boolean isLocalAsset(Uri uri) {
        if (!"https".equals(uri.getScheme()) || !ASSET_HOST.equals(uri.getHost())) {
            return false;
        }
        String path = uri.getPath();
        return (ASSET_PREFIX + "index.html").equals(path) || (ASSET_PREFIX + "picker.js").equals(path)
                || (ASSET_PREFIX + "picker.css").equals(path) || (ASSET_PREFIX + "maplibre-worker.js").equals(path);
    }

    private static WebResourceResponse blockedResponse() {
        return new WebResourceResponse("text/plain", "UTF-8", 403, "Blocked",
                Collections.emptyMap(), new ByteArrayInputStream(new byte[0]));
    }

    private void closeEditor() {
        WebView webView = editor;
        editor = null;
        if (webView != null) {
            webView.stopLoading();
            webView.removeJavascriptInterface("AndroidLocationPicker");
            removeView(webView);
            webView.destroy();
        }
        choose.setVisibility(VISIBLE);
        clear.setVisibility(VISIBLE);
    }

    public void destroy() {
        destroyed = true;
        closeEditor();
    }

    public final class NativeBridge {
        private final WebView source;

        NativeBridge(WebView source) {
            this.source = source;
        }

        @JavascriptInterface
        public void save(double latitude, double longitude, double zoom) {
            activity.runOnUiThread(() -> {
                if (destroyed || editor != source || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                if (!preferences.savePickedLocation(latitude, longitude, zoom)) {
                    Toast.makeText(activity, "Enter a valid latitude and longitude", Toast.LENGTH_SHORT).show();
                    return;
                }
                closeEditor();
                AppLocationOverride.selectionChanged(activity);
                refresh();
                Toast.makeText(activity, "Location applied to Locate Go", Toast.LENGTH_SHORT).show();
            });
        }

        @JavascriptInterface
        public void cancel() {
            activity.runOnUiThread(() -> {
                if (!destroyed && editor == source) {
                    closeEditor();
                }
            });
        }
    }

    private TextView label(String value, int size, int color) {
        TextView view = new TextView(activity);
        view.setText(value);
        view.setTextColor(color);
        view.setTextSize(size);
        view.setTextLocale(Locale.ENGLISH);
        return view;
    }

    private Button action(String value, int background, int foreground) {
        Button button = new Button(activity);
        button.setText(value);
        button.setTextSize(12);
        button.setTextLocale(Locale.ENGLISH);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setTextColor(foreground);
        button.setAllCaps(false);
        GradientDrawable shape = new GradientDrawable();
        shape.setColor(background);
        shape.setCornerRadius(dp(10));
        shape.setStroke(dp(1), Color.rgb(220, 224, 230));
        button.setBackground(shape);
        return button;
    }

    private int dp(int value) {
        return Math.round(value * activity.getResources().getDisplayMetrics().density);
    }
}
