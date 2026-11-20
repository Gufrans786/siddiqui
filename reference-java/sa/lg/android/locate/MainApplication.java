package sa.lg.android.locate;

import android.app.Application;
import android.content.Context;
import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactHost;
import com.facebook.react.ReactNativeApplicationEntryPoint;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.defaults.DefaultReactHost;
import com.facebook.react.defaults.DefaultReactNativeHost;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.lugg.RNCConfig.RNCConfigPackage;
import com.microsoft.codepush.react.CodePush;
import geidea.utils.GeideaPackage;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import nafath.NafathPackage;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lsa/lg/android/locate/MainApplication;", "Landroid/app/Application;", "Lcom/facebook/react/ReactApplication;", "<init>", "()V", "reactNativeHost", "Lcom/facebook/react/ReactNativeHost;", "getReactNativeHost", "()Lcom/facebook/react/ReactNativeHost;", "reactHost", "Lcom/facebook/react/ReactHost;", "getReactHost", "()Lcom/facebook/react/ReactHost;", "onCreate", "", "LGo-v4.1.0(68)-(231026_2115)_productionRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class MainApplication extends Application implements ReactApplication {
    private final ReactNativeHost reactNativeHost = new DefaultReactNativeHost(this) {
        private final boolean isHermesEnabled;
        private final boolean isNewArchEnabled;

        @Override
        public boolean getUseDeveloperSupport() {
            return false;
        }

        {
            super(this);
            this.isNewArchEnabled = true;
            this.isHermesEnabled = true;
        }

        @Override
        protected List<ReactPackage> getPackages() {
            ArrayList<ReactPackage> packages = new PackageList(this).getPackages();
            packages.add(new MaedaPackage());
            packages.add(new GeideaPackage());
            packages.add(new NafathPackage());
            packages.add(new RNCConfigPackage());
            Intrinsics.checkNotNullExpressionValue(packages, "apply(...)");
            return packages;
        }

        @Override
        protected String getJSMainModuleName() {
            return FirebaseAnalytics.Param.INDEX;
        }

        @Override
        protected boolean getIsNewArchEnabled() {
            return this.isNewArchEnabled;
        }

        @Override
        protected boolean getIsHermesEnabled() {
            return this.isHermesEnabled;
        }

        @Override
        protected String getJSBundleFile() {
            String jSBundleFile = CodePush.getJSBundleFile();
            Intrinsics.checkNotNullExpressionValue(jSBundleFile, "getJSBundleFile(...)");
            return jSBundleFile;
        }
    };

    @Override
    public ReactNativeHost getReactNativeHost() {
        return this.reactNativeHost;
    }

    @Override
    public ReactHost getReactHost() {
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return DefaultReactHost.getDefaultReactHost$default(applicationContext, getReactNativeHost(), null, 4, null);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        ReactNativeApplicationEntryPoint.loadReactNative(this);
    }
}
