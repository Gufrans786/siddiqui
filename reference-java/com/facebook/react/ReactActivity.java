package com.facebook.react;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.react.modules.core.DefaultHardwareBackBtnHandler;
import com.facebook.react.modules.core.PermissionAwareActivity;
import com.facebook.react.modules.core.PermissionListener;
import com.facebook.react.util.AndroidVersion;

public abstract class ReactActivity extends AppCompatActivity implements DefaultHardwareBackBtnHandler, PermissionAwareActivity {
    private final OnBackPressedCallback mBackPressedCallback = new OnBackPressedCallback(true) {
        @Override
        public void handleOnBackPressed() {
            setEnabled(false);
            ReactActivity.this.onBackPressed();
            setEnabled(true);
        }
    };
    private final ReactActivityDelegate mDelegate = createReactActivityDelegate();

    protected String getMainComponentName() {
        return null;
    }

    protected ReactActivity() {
    }

    protected ReactActivityDelegate createReactActivityDelegate() {
        return new ReactActivityDelegate(this, getMainComponentName());
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDelegate.onCreate(bundle);
        if (AndroidVersion.isAtLeastTargetSdk36(this)) {
            getOnBackPressedDispatcher().addCallback(this, this.mBackPressedCallback);
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.mDelegate.onPause();
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.mDelegate.onResume();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mDelegate.onDestroy();
    }

    public ReactDelegate getReactDelegate() {
        return this.mDelegate.getReactDelegate();
    }

    public ReactActivityDelegate getReactActivityDelegate() {
        return this.mDelegate;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.mDelegate.onActivityResult(i, i2, intent);
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mDelegate.onKeyDown(i, keyEvent) || super.onKeyDown(i, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.mDelegate.onKeyUp(i, keyEvent) || super.onKeyUp(i, keyEvent);
    }

    @Override
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return this.mDelegate.onKeyLongPress(i, keyEvent) || super.onKeyLongPress(i, keyEvent);
    }

    @Override
    public void onBackPressed() {
        if (this.mDelegate.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void invokeDefaultOnBackPressed() {
        this.mBackPressedCallback.setEnabled(false);
        super.onBackPressed();
    }

    @Override
    public void onNewIntent(Intent intent) {
        if (this.mDelegate.onNewIntent(intent)) {
            return;
        }
        super.onNewIntent(intent);
    }

    @Override
    public void onUserLeaveHint() {
        super.onUserLeaveHint();
        this.mDelegate.onUserLeaveHint();
    }

    @Override
    public void requestPermissions(String[] strArr, int i, PermissionListener permissionListener) {
        this.mDelegate.requestPermissions(strArr, i, permissionListener);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        this.mDelegate.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.mDelegate.onWindowFocusChanged(z);
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mDelegate.onConfigurationChanged(configuration);
    }

    protected final ReactNativeHost getReactNativeHost() {
        return this.mDelegate.getReactNativeHost();
    }

    protected ReactHost getReactHost() {
        return this.mDelegate.getReactHost();
    }

    protected final ReactInstanceManager getReactInstanceManager() {
        return this.mDelegate.getReactInstanceManager();
    }

    protected final void loadApp(String str) {
        this.mDelegate.loadApp(str);
    }
}
