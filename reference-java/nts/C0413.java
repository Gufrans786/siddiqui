package nts;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.autofill.HintConstants;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.facebook.imageutils.JfifUtil;
import com.google.api.FieldBehaviorProto;
import com.google.logging.type.LogSeverity;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0413 {

    public final String f2131;

    public ArrayList<String> f2132;

    public final String f2133;

    public final C0400 f2134;

    public Context f2135;

    public C0413(Context context, C0400 c0400, String str, String str2) {
        this.f2135 = context;
        this.f2134 = c0400;
        this.f2133 = str;
        this.f2131 = str2;
    }

    public static String m4650(Context context, String str) {
        return Settings.System.getString(context.getContentResolver(), str);
    }

    public final void m4661(List<C0428> list) {
        int i;
        int i2;
        WindowManager windowManager = (WindowManager) this.f2135.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (windowManager != null) {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        PackageManager packageManager = this.f2135.getPackageManager();
        boolean zM4651 = Build.VERSION.SDK_INT >= 31 ? m4651(this.f2135, C0558.m5455(26, 36, 89)) : m4651(this.f2135, "android.permission.BLUETOOTH");
        BluetoothManager bluetoothManager = zM4651 ? (BluetoothManager) this.f2135.getSystemService("bluetooth") : null;
        BluetoothAdapter adapter = bluetoothManager == null ? null : bluetoothManager.getAdapter();
        m4668(list, "DV", C0558.m5455(62, 3, 79), 0);
        m4667(list, C0558.m5455(65, 4, 36), C0558.m5455(69, 7, 113));
        m4667(list, C0558.m5455(76, 4, 23), Build.MODEL);
        m4667(list, C0558.m5455(80, 4, 28), m4656());
        m4667(list, C0558.m5455(84, 4, 18), Build.VERSION.RELEASE);
        m4667(list, C0558.m5455(88, 4, 6), Locale.getDefault().getLanguage() + CoreConstants.DASH_CHAR + Locale.getDefault().getCountry());
        m4667(list, C0558.m5455(92, 4, 29), TimeZone.getDefault().getDisplayName(Locale.ENGLISH));
        String strM4657 = m4657(this.f2135);
        if (strM4657 == null) {
            m4663(list, C0558.m5455(96, 4, 55), C0558.m5455(100, 4, 125));
        } else {
            m4667(list, C0558.m5455(104, 4, 26), strM4657);
        }
        m4667(list, C0558.m5455(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 4, 73), displayMetrics.widthPixels + "x" + displayMetrics.heightPixels);
        if (adapter != null) {
            m4667(list, C0558.m5455(112, 4, 36), adapter.getName());
        } else {
            m4663(list, C0558.m5455(116, 4, 10), zM4651 ? C0558.m5455(SyslogConstants.LOG_CLOCK, 4, 73) : C0558.m5455(124, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY));
        }
        m4667(list, C0558.m5455(128, 4, 121), m4659(true));
        m4663(list, C0558.m5455(132, 4, 0), C0558.m5455(SyslogConstants.LOG_LOCAL1, 4, 88));
        m4663(list, C0558.m5455(CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, 4, 21), C0558.m5455(144, 4, 117));
        m4667(list, C0558.m5455(CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 4, 78), this.f2135.getPackageName());
        m4667(list, C0558.m5455(SyslogConstants.LOG_LOCAL3, 4, 116), this.f2133);
        m4667(list, C0558.m5455(156, 4, 40), this.f2131);
        TelephonyManager telephonyManager = (TelephonyManager) this.f2135.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager == null || !m4651(this.f2135, "android.permission.READ_PHONE_STATE")) {
            if (telephonyManager == null) {
                i = 368;
                i2 = 25;
            } else {
                i = 372;
                i2 = 54;
            }
            String strM5455 = C0558.m5455(i, 4, i2);
            m4663(list, C0558.m5455(376, 4, 76), strM5455);
            m4663(list, C0558.m5455(380, 4, 33), strM5455);
            m4663(list, C0558.m5455(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, 4, 10), strM5455);
            m4663(list, C0558.m5455(388, 4, 70), strM5455);
            m4663(list, C0558.m5455(392, 4, 50), strM5455);
            m4663(list, C0558.m5455(396, 4, 101), strM5455);
            m4663(list, C0558.m5455(400, 4, 34), strM5455);
            m4663(list, C0558.m5455(404, 4, 72), strM5455);
            m4663(list, C0558.m5455(TSLocationManager.LOCATION_ERROR_TIMEOUT, 4, 70), strM5455);
            m4663(list, C0558.m5455(412, 4, 87), strM5455);
            m4663(list, C0558.m5455(TypedValues.CycleType.TYPE_PATH_ROTATE, 4, 19), strM5455);
            m4663(list, C0558.m5455(TypedValues.CycleType.TYPE_EASING, 4, 87), strM5455);
            m4663(list, C0558.m5455(TypedValues.CycleType.TYPE_WAVE_OFFSET, 4, 49), strM5455);
            m4663(list, C0558.m5455(428, 4, 79), strM5455);
            m4663(list, C0558.m5455(432, 4, 41), strM5455);
            m4663(list, C0558.m5455(436, 4, 19), strM5455);
            m4663(list, C0558.m5455(440, 4, 52), strM5455);
            m4663(list, C0558.m5455(444, 4, 101), strM5455);
            m4663(list, C0558.m5455(448, 4, 63), strM5455);
            m4663(list, C0558.m5455(452, 4, 65), strM5455);
            m4663(list, C0558.m5455(456, 4, 52), strM5455);
            m4663(list, C0558.m5455(460, 4, 31), strM5455);
            m4663(list, C0558.m5455(464, 4, WebSocketProtocol.PAYLOAD_SHORT), strM5455);
            m4663(list, C0558.m5455(468, 4, 122), strM5455);
            m4663(list, C0558.m5455(472, 4, 99), strM5455);
            m4663(list, C0558.m5455(476, 4, 122), strM5455);
            m4663(list, C0558.m5455(480, 4, 82), strM5455);
        } else {
            int phoneType = telephonyManager.getPhoneType();
            boolean z = phoneType == 1;
            if (Build.VERSION.SDK_INT >= 29) {
                m4663(list, C0558.m5455(SyslogConstants.LOG_LOCAL4, 4, 61), C0558.m5455(164, 4, 21));
                m4663(list, C0558.m5455(SyslogConstants.LOG_LOCAL5, 4, 53), C0558.m5455(172, 4, 42));
                m4663(list, C0558.m5455(SyslogConstants.LOG_LOCAL6, 4, 123), C0558.m5455(RotationOptions.ROTATE_180, 4, 118));
                m4663(list, C0558.m5455(SyslogConstants.LOG_LOCAL7, 4, 44), C0558.m5455(188, 4, 42));
            } else {
                m4667(list, C0558.m5455(192, 4, 9), telephonyManager.getDeviceId());
                m4667(list, C0558.m5455(196, 4, 18), telephonyManager.getSubscriberId());
                m4667(list, C0558.m5455(200, 4, 68), telephonyManager.getDeviceSoftwareVersion());
                m4667(list, C0558.m5455(204, 4, 14), telephonyManager.getSimSerialNumber());
            }
            if (z) {
                m4667(list, C0558.m5455(JfifUtil.MARKER_RST0, 4, 39), telephonyManager.getGroupIdLevel1());
            } else {
                m4663(list, C0558.m5455(212, 4, 88), C0558.m5455(JfifUtil.MARKER_SOI, 4, 23));
            }
            String line1Number = telephonyManager.getLine1Number();
            if (Build.VERSION.SDK_INT < 29 && (line1Number == null || line1Number.length() == 0)) {
                line1Number = telephonyManager.getSubscriberId();
            }
            m4667(list, C0558.m5455(220, 4, 111), line1Number);
            m4667(list, C0558.m5455(224, 4, 58), telephonyManager.getMmsUAProfUrl());
            m4667(list, C0558.m5455(228, 4, 23), telephonyManager.getMmsUserAgent());
            m4667(list, C0558.m5455(232, 4, 39), telephonyManager.getNetworkCountryIso());
            m4667(list, C0558.m5455(236, 4, 74), telephonyManager.getNetworkOperator());
            m4667(list, C0558.m5455(240, 4, 93), telephonyManager.getNetworkOperatorName());
            m4666(list, C0558.m5455(244, 4, 102), telephonyManager.getNetworkType());
            m4666(list, C0558.m5455(248, 4, 58), telephonyManager.getPhoneCount());
            m4666(list, C0558.m5455(260, 4, 10), phoneType);
            m4667(list, C0558.m5455(264, 4, 22), telephonyManager.getSimCountryIso());
            m4667(list, C0558.m5455(268, 4, 88), telephonyManager.getSimOperator());
            m4667(list, C0558.m5455(272, 4, 0), telephonyManager.getSimOperatorName());
            m4666(list, C0558.m5455(276, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), telephonyManager.getSimState());
            m4667(list, C0558.m5455(280, 4, 26), telephonyManager.getVoiceMailAlphaTag());
            m4667(list, C0558.m5455(284, 4, 33), telephonyManager.getVoiceMailNumber());
            m4671(list, C0558.m5455(288, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), telephonyManager.hasIccCard());
            m4671(list, C0558.m5455(292, 4, 72), telephonyManager.isHearingAidCompatibilitySupported());
            m4671(list, C0558.m5455(304, 4, 98), telephonyManager.isNetworkRoaming());
            m4671(list, C0558.m5455(308, 4, 76), telephonyManager.isSmsCapable());
            if (Build.VERSION.SDK_INT >= 28) {
                TelecomManager telecomManager = (TelecomManager) this.f2135.getSystemService("telecom");
                if (telecomManager == null) {
                    m4663(list, C0558.m5455(320, 4, 32), C0558.m5455(324, 4, 31));
                } else {
                    m4671(list, C0558.m5455(328, 4, 1), telecomManager.isTtySupported());
                }
            } else {
                m4671(list, C0558.m5455(332, 4, 13), telephonyManager.isTtyModeSupported());
            }
            m4671(list, C0558.m5455(344, 4, 61), telephonyManager.isVoiceCapable());
            m4671(list, C0558.m5455(356, 4, 90), telephonyManager.isWorldPhone());
        }
        WifiManager wifiManager = (WifiManager) this.f2135.getApplicationContext().getSystemService("wifi");
        WifiInfo connectionInfo = (wifiManager == null || !m4651(this.f2135, "android.permission.ACCESS_WIFI_STATE")) ? null : wifiManager.getConnectionInfo();
        if (connectionInfo != null) {
            m4667(list, C0558.m5455(484, 4, 74), connectionInfo.getMacAddress().toUpperCase());
            m4667(list, C0558.m5455(488, 4, 123), connectionInfo.getBSSID());
            m4667(list, C0558.m5455(492, 4, 91), connectionInfo.getSSID());
            m4666(list, C0558.m5455(496, 4, 89), connectionInfo.getNetworkId());
        } else {
            m4663(list, C0558.m5455(500, 4, 33), C0558.m5455(TypedValues.PositionType.TYPE_PERCENT_HEIGHT, 4, 52));
            m4663(list, C0558.m5455(TypedValues.PositionType.TYPE_CURVE_FIT, 4, 82), C0558.m5455(512, 4, 102));
            m4663(list, C0558.m5455(516, 4, 113), C0558.m5455(520, 4, 30));
            m4663(list, C0558.m5455(524, 4, 93), C0558.m5455(528, 4, 50));
        }
        if (connectionInfo != null) {
            m4671(list, C0558.m5455(532, 4, 111), wifiManager.is5GHzBandSupported());
            m4671(list, C0558.m5455(536, 4, 114), wifiManager.isDeviceToApRttSupported());
            m4671(list, C0558.m5455(540, 4, 96), wifiManager.isEnhancedPowerReportingSupported());
            m4671(list, C0558.m5455(544, 4, 3), wifiManager.isP2pSupported());
            m4671(list, C0558.m5455(548, 4, 10), wifiManager.isPreferredNetworkOffloadSupported());
            m4671(list, C0558.m5455(552, 4, 85), wifiManager.isScanAlwaysAvailable());
            m4671(list, C0558.m5455(556, 4, 79), wifiManager.isTdlsSupported());
        } else {
            m4663(list, C0558.m5455(560, 4, 97), C0558.m5455(564, 4, 101));
            m4663(list, C0558.m5455(568, 4, 127), C0558.m5455(572, 4, 105));
            m4663(list, C0558.m5455(576, 4, 83), C0558.m5455(580, 4, 123));
            m4663(list, C0558.m5455(584, 4, 1), C0558.m5455(588, 4, 73));
            m4663(list, C0558.m5455(592, 4, 2), C0558.m5455(596, 4, 77));
            m4663(list, C0558.m5455(600, 4, 66), C0558.m5455(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, 4, 35));
            m4663(list, C0558.m5455(TypedValues.MotionType.TYPE_DRAW_PATH, 4, 39), C0558.m5455(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 4, 98));
        }
        if (adapter != null) {
            m4667(list, C0558.m5455(616, 4, 48), adapter.getAddress());
            Iterator<BluetoothDevice> it = adapter.getBondedDevices().iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                arrayList.add(it.next().getAddress());
            }
            m4670(list, C0558.m5455(620, 4, 55), arrayList);
            m4671(list, C0558.m5455(624, 4, 100), adapter.isEnabled());
        } else {
            m4663(list, C0558.m5455(628, 4, 36), C0558.m5455(632, 4, 54));
            m4663(list, C0558.m5455(636, 4, WebSocketProtocol.PAYLOAD_SHORT), C0558.m5455(640, 4, 34));
            m4663(list, C0558.m5455(644, 4, 99), C0558.m5455(648, 4, 82));
        }
        m4667(list, C0558.m5455(652, 4, 28), Build.BOARD);
        m4667(list, C0558.m5455(656, 4, 74), Build.BOOTLOADER);
        m4667(list, C0558.m5455(660, 4, 123), Build.BRAND);
        m4667(list, C0558.m5455(664, 4, 94), Build.DEVICE);
        m4667(list, C0558.m5455(668, 4, 5), Build.DISPLAY);
        m4667(list, C0558.m5455(672, 4, 113), Build.FINGERPRINT);
        m4667(list, C0558.m5455(676, 4, 22), Build.HARDWARE);
        m4667(list, C0558.m5455(680, 4, 70), Build.ID);
        m4667(list, C0558.m5455(684, 4, 58), Build.MANUFACTURER);
        m4667(list, C0558.m5455(688, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), Build.PRODUCT);
        m4667(list, C0558.m5455(692, 4, 118), Build.getRadioVersion());
        m4667(list, C0558.m5455(696, 4, 96), Build.SERIAL);
        if (connectionInfo != null) {
            m4667(list, C0558.m5455(700, 4, 116), Arrays.toString(Build.SUPPORTED_32_BIT_ABIS));
            m4667(list, C0558.m5455(TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 4, 56), Arrays.toString(Build.SUPPORTED_64_BIT_ABIS));
        } else {
            m4663(list, C0558.m5455(708, 4, 33), C0558.m5455(712, 4, 91));
            m4663(list, C0558.m5455(716, 4, 75), C0558.m5455(720, 4, 28));
        }
        m4667(list, C0558.m5455(724, 4, 125), Build.TAGS);
        m4665(list, C0558.m5455(728, 4, 21), Build.TIME);
        m4667(list, C0558.m5455(732, 4, RNMBXStyleValue.InterpolationModeIdentity), Build.TYPE);
        m4667(list, C0558.m5455(736, 4, 45), Build.USER);
        m4667(list, C0558.m5455(740, 4, 96), Build.VERSION.CODENAME);
        m4667(list, C0558.m5455(744, 4, 27), Build.VERSION.INCREMENTAL);
        m4666(list, C0558.m5455(748, 4, 113), Build.VERSION.PREVIEW_SDK_INT);
        m4667(list, C0558.m5455(752, 4, 96), Build.VERSION.SECURITY_PATCH);
        m4667(list, C0558.m5455(756, 4, 83), m4650(this.f2135, "dtmf_tone_type"));
        m4671(list, C0558.m5455(760, 4, 74), m4655(this.f2135, "vibrate_when_ringing"));
        m4666(list, C0558.m5455(796, 4, 74), Build.VERSION.SDK_INT);
        m4671(list, C0558.m5455(LogSeverity.EMERGENCY_VALUE, 4, 84), m4654(this.f2135));
        m4667(list, C0558.m5455(804, 4, 7), m4658(this.f2135, "accessibility_enabled"));
        if (Build.VERSION.SDK_INT >= 26) {
            m4663(list, C0558.m5455(808, 4, 123), C0558.m5455(812, 4, 77));
        } else {
            m4667(list, C0558.m5455(816, 4, 28), m4658(this.f2135, "speak_password"));
        }
        m4667(list, C0558.m5455(820, 4, 82), m4658(this.f2135, "allowed_geolocation_origins"));
        m4667(list, C0558.m5455(824, 4, 29), m4658(this.f2135, "android_id"));
        m4667(list, C0558.m5455(828, 4, 118), m4658(this.f2135, "data_roaming"));
        m4667(list, C0558.m5455(832, 4, 93), m4658(this.f2135, "default_input_method"));
        m4667(list, C0558.m5455(836, 4, 76), m4658(this.f2135, "device_provisioned"));
        m4667(list, C0558.m5455(840, 4, 83), m4658(this.f2135, "enabled_accessibility_services"));
        m4667(list, C0558.m5455(844, 4, 81), m4658(this.f2135, "enabled_input_methods"));
        m4667(list, C0558.m5455(848, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), m4658(this.f2135, "input_method_selector_visibility"));
        m4667(list, C0558.m5455(852, 4, 52), m4658(this.f2135, "install_non_market_apps"));
        m4664(list);
        m4662(list);
        m4660(list);
        m4667(list, C0558.m5455(856, 4, 36), m4658(this.f2135, "tts_default_pitch"));
        m4667(list, C0558.m5455(860, 4, 123), m4658(this.f2135, "tts_default_rate"));
        m4667(list, C0558.m5455(864, 4, 19), m4658(this.f2135, "tts_default_synth"));
        m4667(list, C0558.m5455(868, 4, 111), m4658(this.f2135, "tts_enabled_plugins"));
        m4671(list, C0558.m5455(872, 4, 51), m4655(this.f2135, "adb_enabled"));
        m4667(list, C0558.m5455(876, 4, 65), m4650(this.f2135, "airplane_mode_radios"));
        m4671(list, C0558.m5455(880, 4, 82), m4655(this.f2135, "always_finish_activities"));
        m4665(list, C0558.m5455(884, 4, 107), m4652(this.f2135, "animator_duration_scale"));
        m4671(list, C0558.m5455(888, 4, 112), m4655(this.f2135, "auto_time"));
        m4671(list, C0558.m5455(892, 4, 26), m4655(this.f2135, "auto_time_zone"));
        m4671(list, C0558.m5455(896, 4, 18), m4655(this.f2135, "development_settings_enabled"));
        m4667(list, C0558.m5455(900, 4, 29), m4650(this.f2135, "http_proxy"));
        m4667(list, C0558.m5455(TypedValues.Custom.TYPE_BOOLEAN, 4, 11), m4650(this.f2135, "network_preference"));
        m4666(list, C0558.m5455(908, 4, 85), m4653(this.f2135, "stay_on_while_plugged_in"));
        m4665(list, C0558.m5455(912, 4, 3), m4652(this.f2135, "transition_animation_scale"));
        m4671(list, C0558.m5455(916, 4, 18), m4655(this.f2135, "usb_mass_storage_enabled"));
        m4667(list, C0558.m5455(920, 4, 104), m4650(this.f2135, "use_google_mail"));
        m4671(list, C0558.m5455(924, 4, 9), m4655(this.f2135, "wait_for_debugger"));
        m4671(list, C0558.m5455(928, 4, 94), m4655(this.f2135, "wifi_networks_available_notification_on"));
        m4671(list, C0558.m5455(932, 4, 123), m4655(this.f2135, "accelerometer_rotation"));
        m4671(list, C0558.m5455(936, 4, 68), m4655(this.f2135, "bluetooth_discoverability"));
        m4666(list, C0558.m5455(940, 4, 54), m4653(this.f2135, "bluetooth_discoverability_timeout"));
        m4667(list, C0558.m5455(944, 4, 0), m4650(this.f2135, "date_format"));
        m4671(list, C0558.m5455(948, 4, 107), m4655(this.f2135, "dtmf_tone"));
        m4667(list, C0558.m5455(952, 4, 57), m4650(this.f2135, "end_button_behavior"));
        m4665(list, C0558.m5455(956, 4, 56), m4652(this.f2135, "font_scale"));
        m4671(list, C0558.m5455(960, 4, 87), m4655(this.f2135, "haptic_feedback_enabled"));
        m4667(list, C0558.m5455(964, 4, 65), m4650(this.f2135, "mode_ringer_streams_affected"));
        m4667(list, C0558.m5455(968, 4, 124), m4650(this.f2135, "notification_sound"));
        m4667(list, C0558.m5455(972, 4, 105), m4650(this.f2135, "mute_streams_affected"));
        m4667(list, C0558.m5455(976, 4, 16), m4650(this.f2135, "ringtone"));
        m4666(list, C0558.m5455(980, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), m4653(this.f2135, "screen_brightness"));
        m4671(list, C0558.m5455(984, 4, 64), m4655(this.f2135, "screen_brightness_mode"));
        m4666(list, C0558.m5455(988, 4, 96), m4653(this.f2135, "screen_off_timeout"));
        m4671(list, C0558.m5455(992, 4, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), m4655(this.f2135, "sound_effects_enabled"));
        m4671(list, C0558.m5455(996, 4, 117), m4655(this.f2135, "auto_caps"));
        m4671(list, C0558.m5455(1000, 4, 54), m4655(this.f2135, "auto_punctuate"));
        m4671(list, C0558.m5455(1004, 4, WebSocketProtocol.PAYLOAD_SHORT), m4655(this.f2135, "auto_replace"));
        m4671(list, C0558.m5455(PointerIconCompat.TYPE_TEXT, 4, 28), m4655(this.f2135, "show_password"));
        m4667(list, C0558.m5455(PointerIconCompat.TYPE_NO_DROP, 4, 92), m4650(this.f2135, "time_12_24"));
        m4667(list, C0558.m5455(PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, 4, 71), m4650(this.f2135, "user_rotation"));
        m4671(list, C0558.m5455(PointerIconCompat.TYPE_GRAB, 4, 71), m4655(this.f2135, "vibrate_on"));
        m4671(list, C0558.m5455(1024, 4, 81), packageManager.isSafeMode());
        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
        ArrayList arrayList2 = new ArrayList();
        if (installedApplications.size() > 0) {
            Iterator<ApplicationInfo> it2 = installedApplications.iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().packageName);
            }
        }
        m4670(list, C0558.m5455(1028, 4, 81), arrayList2);
        m4667(list, C0558.m5455(1032, 4, 27), packageManager.getInstallerPackageName(this.f2135.getPackageName()));
        m4666(list, C0558.m5455(1036, 4, 100), packageManager.getSystemAvailableFeatures().length);
        String[] systemSharedLibraryNames = packageManager.getSystemSharedLibraryNames();
        m4666(list, C0558.m5455(1040, 4, 4), systemSharedLibraryNames == null ? 0 : systemSharedLibraryNames.length);
        m4667(list, C0558.m5455(1044, 4, 41), Environment.getExternalStorageState());
        m4666(list, C0558.m5455(1048, 4, 121), Locale.getAvailableLocales().length);
        m4665(list, C0558.m5455(FieldBehaviorProto.FIELD_BEHAVIOR_FIELD_NUMBER, 4, 22), displayMetrics.density);
        m4666(list, C0558.m5455(1056, 4, 34), displayMetrics.densityDpi);
        m4665(list, C0558.m5455(1060, 4, 113), displayMetrics.scaledDensity);
        m4665(list, C0558.m5455(1064, 4, 80), displayMetrics.xdpi);
        m4665(list, C0558.m5455(1068, 4, 83), displayMetrics.ydpi);
        m4665(list, C0558.m5455(1072, 4, 119), new StatFs(Environment.getRootDirectory().getAbsolutePath()).getTotalBytes());
    }

    public final void m4663(List<C0428> list, String str, String str2) {
        m4669(list, str, str2, false, 2);
    }

    public final void m4665(List<C0428> list, String str, float f) {
        m4669(list, str, String.valueOf(f), false, 1);
    }

    public static boolean m4651(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }

    public final void m4671(List<C0428> list, String str, boolean z) {
        m4669(list, str, String.valueOf(z), false, 1);
    }

    public final void m4666(List<C0428> list, String str, int i) {
        m4669(list, str, String.valueOf(i), false, 1);
    }

    public final void m4667(List<C0428> list, String str, String str2) {
        m4669(list, str, str2, false, 1);
    }

    public final void m4662(List<C0428> list) {
        String strValueOf;
        try {
            strValueOf = String.valueOf(Settings.Secure.getInt(this.f2135.getContentResolver(), "skip_first_use_hints"));
        } catch (Settings.SettingNotFoundException unused) {
            strValueOf = null;
        }
        m4669(list, C0558.m5455(1096, 4, 55), strValueOf, false, 1);
    }

    public final void m4668(List<C0428> list, String str, String str2, int i) {
        m4669(list, str, str2, false, i);
    }

    public final void m4664(List<C0428> list) {
        String strValueOf;
        if (Build.VERSION.SDK_INT >= 28) {
            strValueOf = String.valueOf(((LocationManager) this.f2135.getSystemService("location")).isLocationEnabled());
        } else {
            try {
                strValueOf = String.valueOf(Settings.Secure.getInt(this.f2135.getContentResolver(), "location_mode"));
            } catch (Settings.SettingNotFoundException unused) {
                strValueOf = null;
            }
        }
        m4669(list, C0558.m5455(1084, 4, 102), strValueOf, false, 1);
    }

    public final void m4660(List<C0428> list) {
        m4669(list, C0558.m5455(1136, 4, 7), C0558.m5455(1140, 4, 93), false, 2);
    }

    public static float m4652(Context context, String str) {
        return Settings.System.getFloat(context.getContentResolver(), str, 0.0f);
    }

    public static boolean m4654(Context context) {
        int i;
        try {
            i = Settings.Secure.getInt(context.getContentResolver(), "accessibility_display_inversion_enabled");
        } catch (Settings.SettingNotFoundException unused) {
            try {
                i = Settings.System.getInt(context.getContentResolver(), C0558.m5455(1226, 13, 92), 0);
            } catch (Exception unused2) {
                i = 0;
            }
        }
        return i != 0;
    }

    public static boolean m4655(Context context, String str) {
        return Settings.System.getInt(context.getContentResolver(), str, 0) != 0;
    }

    public static String m4659(boolean z) {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String hostAddress = inetAddress.getHostAddress();
                        boolean z2 = hostAddress.indexOf(58) < 0;
                        if (z) {
                            if (z2) {
                                return hostAddress;
                            }
                        } else if (!z2) {
                            int iIndexOf = hostAddress.indexOf(37);
                            return iIndexOf < 0 ? hostAddress.toUpperCase() : hostAddress.substring(0, iIndexOf).toUpperCase();
                        }
                    }
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public final void m4669(List<C0428> list, String str, String str2, boolean z, int i) {
        ArrayList<String> arrayList;
        if (i == 1 && (arrayList = this.f2132) != null && arrayList.contains(str.toLowerCase())) {
            list.add(new C0428(str, C0558.m5455(1076, 4, 56), 2, 2));
        } else if (i == 1 && (str2 == null || str2.length() == 0)) {
            m4669(list, str, C0558.m5455(1080, 4, 82), false, 2);
        } else {
            list.add(new C0428(str, str2, z ? 1 : 2, i));
        }
    }

    public static String m4657(Context context) {
        Object objInvoke;
        try {
            Class<?> cls = Class.forName(C0558.m5455(1144, 57, 55));
            if (cls != null && (objInvoke = cls.getMethod(C0558.m5455(1201, 20, 86), Context.class).invoke(null, context)) != null) {
                return (String) objInvoke.getClass().getDeclaredMethod(C0558.m5455(1221, 5, 122), new Class[0]).invoke(objInvoke, new Object[0]);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String m4656() {
        Field[] fields = Build.VERSION_CODES.class.getFields();
        String strM5455 = C0558.m5455(1239, 7, 113);
        for (Field field : fields) {
            try {
                if (Build.VERSION.SDK_INT == field.getInt(Build.VERSION_CODES.class)) {
                    strM5455 = field.getName();
                }
            } catch (Exception unused) {
            }
        }
        return strM5455;
    }

    public static String m4658(Context context, String str) {
        return Settings.Secure.getString(context.getContentResolver(), str);
    }

    public final void m4670(List<C0428> list, String str, List<String> list2) {
        String strM5880;
        if (list2 == null || list2.size() == 0) {
            strM5880 = null;
        } else {
            Iterator<String> it = list2.iterator();
            String strM5881 = "[";
            while (it.hasNext()) {
                String next = it.next();
                if (next == null || next.length() == 0) {
                    next = C0558.m5455(1246, 4, 51);
                }
                if (strM5881.length() > 1) {
                    strM5881 = C0663.m5880(strM5881, ",");
                }
                strM5881 = strM5881 + "\"" + next + "\"";
            }
            strM5880 = C0663.m5880(strM5881, "]");
        }
        m4669(list, str, strM5880, true, 1);
    }

    public static int m4653(Context context, String str) {
        return Settings.System.getInt(context.getContentResolver(), str, 0);
    }
}
