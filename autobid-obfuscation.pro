-renamesourcefileattribute "L"
-allowaccessmodification
-keep public class sa.lg.android.locate.autobid.AppLocationOverride {
    public *;
}
-keepattributes *Annotation*
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep public class sa.lg.android.locate.autobid.AutoBidController {
    public static void install(android.app.Activity);
    public static boolean handleVolumeUp(android.app.Activity, android.view.KeyEvent);
    public static boolean handleVolumeDown(android.app.Activity, android.view.KeyEvent);
}
-keep public class sa.lg.android.locate.autobid.AutoBidLoginActivity {
    public static boolean guard(android.app.Activity);
}
-keepclassmembers public class sa.lg.android.locate.autobid.AutoBidLoginActivity {
    public <init>();
    protected void onCreate(android.os.Bundle);
}
-keep public class sa.lg.android.locate.autobid.AutoBidService {
    public static void start(android.content.Context);
    public static void stop(android.content.Context);
    public static void onOrderPayload(android.content.Context, java.lang.String);
}
-keepclassmembers public class sa.lg.android.locate.autobid.AutoBidService {
    public <init>();
    public void onCreate();
    public int onStartCommand(android.content.Intent, int, int);
    public void onDestroy();
    public android.os.IBinder onBind(android.content.Intent);
}
-keep public class sa.lg.android.locate.autobid.AutoBidRuntime {
    public static void initialize(android.content.Context);
    public static void onOrderBinary(java.lang.Object);
    public static void onOrderPayload(java.lang.Object);
    public static void capture(java.lang.Object, java.lang.Object);
}
