package com.facebook.react;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import com.BV.LinearGradient.LinearGradientPackage;
import com.dylanvann.fastimage.FastImageViewPackage;
import com.facebook.react.shell.MainPackageConfig;
import com.facebook.react.shell.MainReactPackage;
import com.horcrux.svg.SvgPackage;
import com.johnsonsu.rnsoundplayer.RNSoundPlayerPackage;
import com.learnium.RNDeviceInfo.RNDeviceInfo;
import com.lugg.RNCConfig.RNCConfigPackage;
import com.microsoft.codepush.react.CodePush;
import com.mrousavy.mmkv.MmkvPackage;
import com.oblador.vectoricons.VectorIconsPackage;
import com.reactcommunity.rndatetimepicker.RNDateTimePickerPackage;
import com.reactnative.ivpusic.imagepicker.PickerPackage;
import com.reactnativecommunity.clipboard.ClipboardPackage;
import com.reactnativecommunity.netinfo.NetInfoPackage;
import com.reactnativecommunity.webview.RNCWebViewPackage;
import com.reactnativekeyboardcontroller.KeyboardControllerPackage;
import com.reactnativepagerview.PagerViewPackage;
import com.rnamazonpaymentservicesdk.RnAmazonPaymentServiceSdkPackage;
import com.rnmapbox.rnmbx.RNMBXPackage;
import com.swmansion.gesturehandler.RNGestureHandlerPackage;
import com.swmansion.reanimated.ReanimatedPackage;
import com.swmansion.rnscreens.RNScreensPackage;
import com.swmansion.worklets.WorkletsPackage;
import com.th3rdwave.safeareacontext.SafeAreaContextPackage;
import com.transistorsoft.rnbackgroundfetch.RNBackgroundFetchPackage;
import com.transistorsoft.rnbackgroundgeolocation.RNBackgroundGeolocation;
import com.zegocloud.zimkitrn.ZimkitRnPackage;
import im.zego.RNZimReactnativeSdkPackage;
import im.zego.zpns_reactnative_sdk.RCTZegoZPNsPackage;
import io.invertase.firebase.analytics.ReactNativeFirebaseAnalyticsPackage;
import io.invertase.firebase.app.ReactNativeFirebaseAppPackage;
import io.invertase.firebase.config.ReactNativeFirebaseConfigPackage;
import io.invertase.firebase.crashlytics.ReactNativeFirebaseCrashlyticsPackage;
import io.invertase.firebase.firestore.ReactNativeFirebaseFirestorePackage;
import io.invertase.firebase.messaging.ReactNativeFirebaseMessagingPackage;
import io.invertase.notifee.NotifeePackage;
import java.util.ArrayList;
import java.util.Arrays;
import org.devio.rn.splashscreen.SplashScreenReactPackage;
import org.reactnative.maskedview.RNCMaskedViewPackage;

public class PackageList {
    private Application application;
    private MainPackageConfig mConfig;
    private ReactNativeHost reactNativeHost;

    public PackageList(ReactNativeHost reactNativeHost) {
        this(reactNativeHost, (MainPackageConfig) null);
    }

    public PackageList(Application application) {
        this(application, (MainPackageConfig) null);
    }

    public PackageList(ReactNativeHost reactNativeHost, MainPackageConfig mainPackageConfig) {
        this.reactNativeHost = reactNativeHost;
        this.mConfig = mainPackageConfig;
    }

    public PackageList(Application application, MainPackageConfig mainPackageConfig) {
        this.reactNativeHost = null;
        this.application = application;
        this.mConfig = mainPackageConfig;
    }

    private ReactNativeHost getReactNativeHost() {
        return this.reactNativeHost;
    }

    private Resources getResources() {
        return getApplication().getResources();
    }

    private Application getApplication() {
        ReactNativeHost reactNativeHost = this.reactNativeHost;
        return reactNativeHost == null ? this.application : reactNativeHost.getApplication();
    }

    private Context getApplicationContext() {
        return getApplication().getApplicationContext();
    }

    public ArrayList<ReactPackage> getPackages() {
        return new ArrayList<>(Arrays.asList(new MainReactPackage(this.mConfig), new FastImageViewPackage(), new NotifeePackage(), new ClipboardPackage(), new RNDateTimePickerPackage(), new RNCMaskedViewPackage(), new NetInfoPackage(), new ReactNativeFirebaseAnalyticsPackage(), new ReactNativeFirebaseAppPackage(), new ReactNativeFirebaseCrashlyticsPackage(), new ReactNativeFirebaseFirestorePackage(), new ReactNativeFirebaseMessagingPackage(), new ReactNativeFirebaseConfigPackage(), CodePush.getInstance(getResources().getString(sa.lg.android.locate.R.string.CodePushDeploymentKey), getApplicationContext(), false), new RNMBXPackage(), new ZimkitRnPackage(), new RNBackgroundFetchPackage(), new RNBackgroundGeolocation(), new RNCConfigPackage(), new RNDeviceInfo(), new RNGestureHandlerPackage(), new PickerPackage(), new KeyboardControllerPackage(), new LinearGradientPackage(), new MmkvPackage(), new PagerViewPackage(), new ReanimatedPackage(), new SafeAreaContextPackage(), new RNScreensPackage(), new RNSoundPlayerPackage(), new SplashScreenReactPackage(), new SvgPackage(), new VectorIconsPackage(), new RNCWebViewPackage(), new WorkletsPackage(), new RnAmazonPaymentServiceSdkPackage(), new RNZimReactnativeSdkPackage(), new RCTZegoZPNsPackage()));
    }
}
