package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.memory.BitmapCounterConfig;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.internal.ViewUtils;
import com.google.logging.type.LogSeverity;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.math.BigInteger;
import okhttp3.internal.ws.WebSocketProtocol;

public abstract class AbstractC0453 {

    public static final String[] f2568;

    public static final int[] f2569;

    public static String f2570 = C0128.m3226(0, 32, 94) + C0128.m3226(32, 32, 99) + C0128.m3226(64, 32, 58) + C0128.m3226(96, 32, 86) + C0128.m3226(128, 32, 13) + C0128.m3226(SyslogConstants.LOG_LOCAL4, 32, 121) + C0128.m3226(192, 32, 2) + C0128.m3226(224, 32, 0);

    public static final String f2571;

    public static String f2572;

    public static final String f2573;

    public static final String f2574;

    public static final String[] f2575;

    public static String f2576;

    public static final String f2577;

    public static String f2578;

    public static final String f2579;

    public static final int[] f2580;

    public static String f2581;

    public static final String f2582;

    public static final String f2583;

    public static String f2584;

    public int f2588;

    public BigInteger f2592 = null;

    public BigInteger f2590 = null;

    public BigInteger f2587 = null;

    public BigInteger f2589 = null;

    public BigInteger f2585 = null;

    public BigInteger f2586 = null;

    public int f2591 = 0;

    public static class C0454 extends AbstractC0453 {
        @Override
        public byte[] mo3450() {
            return this.f2586.toByteArray();
        }

        @Override
        public void mo3455(BigInteger bigInteger) {
            this.f2585 = bigInteger;
        }

        @Override
        public void mo3459(BigInteger bigInteger) {
            this.f2586 = bigInteger;
        }

        @Override
        public void mo3456() {
            this.f2589 = this.f2585.modPow(this.f2587, this.f2592);
        }
    }

    public static class C0455 extends AbstractC0453 {
        @Override
        public byte[] mo3450() {
            return this.f2585.toByteArray();
        }

        @Override
        public void mo3455(BigInteger bigInteger) {
            this.f2586 = bigInteger;
        }

        @Override
        public void mo3459(BigInteger bigInteger) {
            this.f2585 = bigInteger;
        }

        @Override
        public void mo3456() {
            this.f2589 = this.f2586.modPow(this.f2587, this.f2592);
        }
    }

    static {
        String str = C0128.m3226(256, 32, 18) + C0128.m3226(288, 32, 11) + C0128.m3226(320, 32, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR) + C0128.m3226(352, 32, 86) + C0128.m3226(BitmapCounterConfig.DEFAULT_MAX_BITMAP_COUNT, 32, 4) + C0128.m3226(TypedValues.CycleType.TYPE_PATH_ROTATE, 32, 4) + C0128.m3226(448, 32, 18) + C0128.m3226(480, 32, 34) + C0128.m3226(512, 32, 94) + C0128.m3226(544, 32, 31) + C0128.m3226(576, 32, 79) + C0128.m3226(TypedValues.MotionType.TYPE_DRAW_PATH, 32, 69) + C0128.m3226(640, 32, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY) + C0128.m3226(672, 32, 92) + C0128.m3226(TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 32, 2) + C0128.m3226(736, 32, 30);
        f2571 = str;
        f2574 = C0128.m3226(ViewUtils.EDGE_TO_EDGE_FLAGS, 32, 5) + C0128.m3226(LogSeverity.EMERGENCY_VALUE, 32, 58) + C0128.m3226(832, 32, 57) + C0128.m3226(864, 32, 4);
        String str2 = C0128.m3226(896, 110, 1) + C0128.m3226(PointerIconCompat.TYPE_CELL, 110, 11) + C0128.m3226(1116, 110, 35) + C0128.m3226(1226, 54, 52);
        f2579 = str2;
        String str3 = C0128.m3226(1280, 110, 70) + C0128.m3226(1390, 110, 39) + C0128.m3226(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 110, 4) + C0128.m3226(1610, 110, 91) + C0128.m3226(1720, 110, 72) + C0128.m3226(1830, 110, 57) + C0128.m3226(1940, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 52);
        f2582 = str3;
        String str4 = C0128.m3226(2048, 110, SyslogConstants.LOG_CLOCK) + C0128.m3226(2158, 110, 92) + C0128.m3226(2268, 110, 0) + C0128.m3226(2378, 110, 2) + C0128.m3226(2488, 110, 11) + C0128.m3226(2598, 110, 118) + C0128.m3226(2708, 110, 53) + C0128.m3226(2818, 110, 75) + C0128.m3226(2928, 110, 56) + C0128.m3226(3038, 34, 65);
        f2573 = str4;
        String str5 = C0128.m3226(3072, 110, 56) + C0128.m3226(3182, 110, 107) + C0128.m3226(3292, 110, 110) + C0128.m3226(3402, 110, 10) + C0128.m3226(3512, 110, 78) + C0128.m3226(3622, 110, 62) + C0128.m3226(3732, 110, 98) + C0128.m3226(3842, 110, 12) + C0128.m3226(3952, 110, 31) + C0128.m3226(4062, 110, 97) + C0128.m3226(4172, 110, 38) + C0128.m3226(4282, 110, 66) + C0128.m3226(4392, 110, 96) + C0128.m3226(4502, 106, WebSocketProtocol.PAYLOAD_SHORT);
        f2577 = str5;
        String str6 = C0128.m3226(4608, 110, 3) + C0128.m3226(4718, 110, 66) + C0128.m3226(4828, 110, 25) + C0128.m3226(4938, 110, 31) + C0128.m3226(5048, 110, 25) + C0128.m3226(5158, 110, 83) + C0128.m3226(5268, 110, 38) + C0128.m3226(5378, 110, 116) + C0128.m3226(5488, 110, 67) + C0128.m3226(5598, 110, 69) + C0128.m3226(5708, 110, 23) + C0128.m3226(5818, 110, 61) + C0128.m3226(5928, 110, 41) + C0128.m3226(6038, 110, 93) + C0128.m3226(6148, 110, 12) + C0128.m3226(6258, 110, 54) + C0128.m3226(6368, 110, 60) + C0128.m3226(6478, 110, 1) + C0128.m3226(6588, 68, 46);
        f2583 = str6;
        f2572 = C0128.m3226(6656, 48, 123) + C0128.m3226(6704, 48, 95) + C0128.m3226(6752, 48, 49) + C0128.m3226(6800, 48, 32) + C0128.m3226(6848, 48, 26) + C0128.m3226(6896, 48, 102) + C0128.m3226(6944, 48, 73) + C0128.m3226(6992, 48, 125) + C0128.m3226(7040, 48, 1) + C0128.m3226(7088, 48, 69) + C0128.m3226(7136, 32, 6);
        f2584 = C0128.m3226(7168, 48, 18) + C0128.m3226(7216, 48, 14) + C0128.m3226(7264, 48, 60) + C0128.m3226(7312, 48, 112) + C0128.m3226(7360, 48, 50) + C0128.m3226(7408, 48, 37) + C0128.m3226(7456, 48, 59) + C0128.m3226(7504, 48, WebSocketProtocol.PAYLOAD_SHORT) + C0128.m3226(7552, 48, 0) + C0128.m3226(7600, 48, 45) + C0128.m3226(7648, 48, 40) + C0128.m3226(7696, 48, 101) + C0128.m3226(7744, 48, 118) + C0128.m3226(7792, 48, 92) + C0128.m3226(7840, 48, 28) + C0128.m3226(7888, 48, 27);
        f2581 = C0128.m3226(7936, 48, 8) + C0128.m3226(7984, 48, 0) + C0128.m3226(8032, 48, 115) + C0128.m3226(8080, 48, 5) + C0128.m3226(8128, 48, 60) + C0128.m3226(8176, 48, 34) + C0128.m3226(8224, 48, 48) + C0128.m3226(8272, 48, 77) + C0128.m3226(8320, 48, 55) + C0128.m3226(8368, 48, 105) + C0128.m3226(8416, 48, 2) + C0128.m3226(8464, 48, 72) + C0128.m3226(8512, 48, 21) + C0128.m3226(8560, 48, 57) + C0128.m3226(8608, 48, 1) + C0128.m3226(8656, 48, 72) + C0128.m3226(8704, 48, 123) + C0128.m3226(8752, 48, 114) + C0128.m3226(8800, 48, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY) + C0128.m3226(8848, 48, 92) + C0128.m3226(8896, 48, 83) + C0128.m3226(8944, 16, 64);
        f2576 = C0128.m3226(8960, 48, 62) + C0128.m3226(9008, 48, 57) + C0128.m3226(9056, 48, 8) + C0128.m3226(9104, 48, 80) + C0128.m3226(9152, 48, 29) + C0128.m3226(9200, 48, 24) + C0128.m3226(9248, 48, 119) + C0128.m3226(9296, 48, 51) + C0128.m3226(9344, 48, 96) + C0128.m3226(9392, 48, 55) + C0128.m3226(9440, 48, 28) + C0128.m3226(9488, 48, 105) + C0128.m3226(9536, 48, 98) + C0128.m3226(9584, 48, 47) + C0128.m3226(9632, 48, 4) + C0128.m3226(9680, 48, 29) + C0128.m3226(9728, 48, 3) + C0128.m3226(9776, 48, 36) + C0128.m3226(9824, 48, 26) + C0128.m3226(9872, 48, 69) + C0128.m3226(9920, 48, 72) + C0128.m3226(9968, 48, 7) + C0128.m3226(10016, 48, 75) + C0128.m3226(10064, 48, 84) + C0128.m3226(10112, 48, 74) + C0128.m3226(10160, 48, 48) + C0128.m3226(10208, 48, 58) + C0128.m3226(10256, 48, 32) + C0128.m3226(10304, 48, 92) + C0128.m3226(10352, 48, 92) + C0128.m3226(10400, 48, 65) + C0128.m3226(10448, 48, 11);
        String str7 = C0128.m3226(10496, 48, 61) + C0128.m3226(10544, 48, 105) + C0128.m3226(10592, 48, 111) + C0128.m3226(10640, 48, 76) + C0128.m3226(10688, 48, 17) + C0128.m3226(10736, 48, 60) + C0128.m3226(10784, 48, 35) + C0128.m3226(10832, 48, 92) + C0128.m3226(10880, 48, 96) + C0128.m3226(10928, 48, 27) + C0128.m3226(10976, 48, 115) + C0128.m3226(11024, 48, 80) + C0128.m3226(11072, 48, 41) + C0128.m3226(11120, 48, 53) + C0128.m3226(11168, 48, 0) + C0128.m3226(11216, 48, 13) + C0128.m3226(11264, 48, 10) + C0128.m3226(11312, 48, 21) + C0128.m3226(11360, 48, 86) + C0128.m3226(11408, 48, 42) + C0128.m3226(11456, 48, 24) + C0128.m3226(11504, 48, 83) + C0128.m3226(11552, 48, 22) + C0128.m3226(11600, 48, 14) + C0128.m3226(11648, 48, 47) + C0128.m3226(11696, 48, 8) + C0128.m3226(11744, 48, 15) + C0128.m3226(11792, 48, 60) + C0128.m3226(11840, 48, 68) + C0128.m3226(11888, 48, 95) + C0128.m3226(11936, 48, 6) + C0128.m3226(11984, 48, 20) + C0128.m3226(12032, 48, 91) + C0128.m3226(12080, 48, 54) + C0128.m3226(12128, 48, 94) + C0128.m3226(12176, 48, 77) + C0128.m3226(12224, 48, 70) + C0128.m3226(12272, 48, 2) + C0128.m3226(12320, 48, 10) + C0128.m3226(12368, 48, 58) + C0128.m3226(12416, 48, 72) + C0128.m3226(12464, 48, RNMBXStyleValue.InterpolationModeIdentity) + C0128.m3226(12512, 32, 54);
        f2578 = str7;
        f2569 = new int[]{1024, 1536, 2048, 3072, 4096, 6144, 8192};
        f2575 = new String[]{f2570, str2, str, str3, str4, str5, str6};
        f2580 = new int[]{2048, 3072, 4096, 6144, 8192};
        f2568 = new String[]{f2572, f2584, f2581, f2576, str7};
    }

    public static AbstractC0453 m5096() {
        return new C0160();
    }

    public static AbstractC0453 m5097() {
        return new C0454();
    }

    public static AbstractC0453 m5098() {
        return new C0455();
    }

    public abstract byte[] mo3450();

    public byte[] mo3451() {
        return C0308.m4256(this.f2588 / 8, mo3450());
    }

    public byte[] mo3452() throws C0537 {
        if (this.f2589 == null) {
            mo3456();
        }
        return this.f2589.toByteArray();
    }

    public byte[] m5099() {
        return this.f2592.toByteArray();
    }

    public byte[] mo3454() throws C0537 {
        return C0308.m4256(this.f2588 / 8, mo3452());
    }

    public void m5100() throws C0537 {
        mo3457(this.f2588);
    }

    public abstract void mo3455(BigInteger bigInteger);

    public abstract void mo3456();

    public void mo3457(int i) throws C0537 {
        BigInteger bigInteger = new BigInteger(C0308.m4227(i / 8));
        this.f2587 = bigInteger;
        mo3459(this.f2590.modPow(bigInteger, this.f2592));
    }

    public abstract void mo3459(BigInteger bigInteger);

    public void mo3460(byte[] bArr) {
        mo3455(new BigInteger(1, bArr));
    }

    public void m5101(boolean z, int i, boolean z2) throws C0537 {
        if (z2) {
            this.f2591 = i;
            i = C0208.m3682(i);
        }
        this.f2590 = new BigInteger(ExifInterface.GPS_MEASUREMENT_2D, 10);
        if (z) {
            this.f2592 = new BigInteger(f2574, 16);
            this.f2588 = 512;
        } else {
            this.f2592 = new BigInteger(z2 ? f2572 : f2570, 16);
            int i2 = z2 ? 2048 : 1024;
            this.f2588 = i2;
            if (i > i2) {
                int[] iArr = z2 ? f2580 : f2569;
                String[] strArr = z2 ? f2568 : f2575;
                for (int i3 = 1; i3 < iArr.length; i3++) {
                    if (i == iArr[i3]) {
                        this.f2592 = new BigInteger(strArr[i3], 16);
                        this.f2588 = iArr[i3];
                        break;
                    }
                }
            }
        }
        m5100();
    }
}
