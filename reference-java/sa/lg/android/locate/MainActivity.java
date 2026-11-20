package sa.lg.android.locate;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.facebook.react.ReactActivity;
import com.facebook.react.ReactActivityDelegate;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactActivityDelegate;
import kotlin.Metadata;
import org.devio.rn.splashscreen.SplashScreen;
import sa.lg.android.locate.autobid.AutoBidController;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\"\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0014R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lsa/lg/android/locate/MainActivity;", "Lcom/facebook/react/ReactActivity;", "<init>", "()V", "mReactInstanceManager", "Lcom/facebook/react/ReactInstanceManager;", "getMainComponentName", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "createReactActivityDelegate", "Lcom/facebook/react/ReactActivityDelegate;", "LGo-v4.1.0(68)-(231026_2115)_productionRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MainActivity extends ReactActivity {
    private ReactInstanceManager mReactInstanceManager;

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zHandleVolumeUp = AutoBidController.handleVolumeUp(this, keyEvent);
        return !zHandleVolumeUp ? zHandleVolumeUp : super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.facebook.react.ReactActivity
    protected String getMainComponentName() {
        return "locate_go";
    }

    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(null);
        SplashScreen.show(this);
        this.mReactInstanceManager = getReactNativeHost().getReactInstanceManager();
        AutoBidController.install(this);
    }

    @Override // com.facebook.react.ReactActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        try {
            ReactInstanceManager reactInstanceManager = this.mReactInstanceManager;
            if (reactInstanceManager != null) {
                reactInstanceManager.onActivityResult(this, requestCode, resultCode, data);
            }
        } catch (RuntimeException unused) {
        }
    }

    @Override // com.facebook.react.ReactActivity
    protected ReactActivityDelegate createReactActivityDelegate() {
        return new DefaultReactActivityDelegate(this, getMainComponentName(), DefaultNewArchitectureEntryPoint.getFabricEnabled());
    }
}
