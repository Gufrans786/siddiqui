package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import com.facebook.imageutils.JfifUtil;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.util.Vector;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0531 {

    public Vector f3101 = new Vector();

    public int f3100 = 0;

    public C0531() {
        m5405();
    }

    public C0654 m5404(int i) {
        return (C0654) this.f3101.get(i);
    }

    public void m5405() {
        this.f3100 = 0;
        this.f3101.clear();
        this.f3101.add(new C0654("", ""));
        this.f3101.add(new C0654(C0164.m3496(0, 10, 13), ""));
        this.f3101.add(new C0654(C0164.m3496(10, 7, 55), C0164.m3496(17, 3, 95)));
        this.f3101.add(new C0654(C0164.m3496(20, 7, 81), C0164.m3496(27, 4, 32)));
        this.f3101.add(new C0654(C0164.m3496(31, 5, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR), "/"));
        this.f3101.add(new C0654(C0164.m3496(36, 5, 68), C0164.m3496(41, 11, 10)));
        this.f3101.add(new C0654(C0164.m3496(52, 7, 84), C0164.m3496(59, 4, 33)));
        this.f3101.add(new C0654(C0164.m3496(63, 7, 29), C0164.m3496(70, 5, 115)));
        this.f3101.add(new C0654(C0164.m3496(75, 7, 114), C0164.m3496(82, 3, 86)));
        this.f3101.add(new C0654(C0164.m3496(85, 7, 12), C0164.m3496(92, 3, 0)));
        this.f3101.add(new C0654(C0164.m3496(95, 7, 19), C0164.m3496(102, 3, 90)));
        this.f3101.add(new C0654(C0164.m3496(105, 7, 88), C0164.m3496(112, 3, 45)));
        this.f3101.add(new C0654(C0164.m3496(115, 7, 63), C0164.m3496(122, 3, 53)));
        this.f3101.add(new C0654(C0164.m3496(125, 7, 73), C0164.m3496(132, 3, 113)));
        this.f3101.add(new C0654(C0164.m3496(135, 7, 80), C0164.m3496(CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 3, 60)));
        this.f3101.add(new C0654(C0164.m3496(CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 14, 49), ""));
        this.f3101.add(new C0654(C0164.m3496(159, 15, 111), C0164.m3496(174, 13, 42)));
        this.f3101.add(new C0654(C0164.m3496(187, 15, 5), ""));
        this.f3101.add(new C0654(C0164.m3496(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, 13, 55), ""));
        this.f3101.add(new C0654(C0164.m3496(JfifUtil.MARKER_RST7, 6, 90), ""));
        this.f3101.add(new C0654(C0164.m3496(221, 27, 47), ""));
        this.f3101.add(new C0654(C0164.m3496(248, 3, 37), ""));
        this.f3101.add(new C0654(C0164.m3496(251, 5, 45), ""));
        this.f3101.add(new C0654(C0164.m3496(256, 13, 1), ""));
        this.f3101.add(new C0654(C0164.m3496(269, 13, 85), ""));
        this.f3101.add(new C0654(C0164.m3496(282, 19, 36), ""));
        this.f3101.add(new C0654(C0164.m3496(301, 16, 67), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.AttributesType.TYPE_EASING, 16, 5), ""));
        this.f3101.add(new C0654(C0164.m3496(333, 14, 52), ""));
        this.f3101.add(new C0654(C0164.m3496(347, 16, 127), ""));
        this.f3101.add(new C0654(C0164.m3496(363, 13, 124), ""));
        this.f3101.add(new C0654(C0164.m3496(376, 12, 50), ""));
        this.f3101.add(new C0654(C0164.m3496(388, 6, 83), ""));
        this.f3101.add(new C0654(C0164.m3496(394, 4, 115), ""));
        this.f3101.add(new C0654(C0164.m3496(398, 4, 90), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.CycleType.TYPE_VISIBILITY, 6, 4), ""));
        this.f3101.add(new C0654(C0164.m3496(TSLocationManager.LOCATION_ERROR_TIMEOUT, 7, 56), ""));
        this.f3101.add(new C0654(C0164.m3496(415, 4, 73), ""));
        this.f3101.add(new C0654(C0164.m3496(419, 4, 24), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.CycleType.TYPE_WAVE_PERIOD, 8, 64), ""));
        this.f3101.add(new C0654(C0164.m3496(431, 17, 42), ""));
        this.f3101.add(new C0654(C0164.m3496(448, 13, 111), ""));
        this.f3101.add(new C0654(C0164.m3496(461, 8, 53), ""));
        this.f3101.add(new C0654(C0164.m3496(469, 19, 107), ""));
        this.f3101.add(new C0654(C0164.m3496(488, 13, 96), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.PositionType.TYPE_TRANSITION_EASING, 4, 28), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.PositionType.TYPE_SIZE_PERCENT, 8, 48), ""));
        this.f3101.add(new C0654(C0164.m3496(InputDeviceCompat.SOURCE_DPAD, 12, 107), ""));
        this.f3101.add(new C0654(C0164.m3496(525, 18, 87), ""));
        this.f3101.add(new C0654(C0164.m3496(543, 19, 37), ""));
        this.f3101.add(new C0654(C0164.m3496(562, 5, 15), ""));
        this.f3101.add(new C0654(C0164.m3496(567, 7, 31), ""));
        this.f3101.add(new C0654(C0164.m3496(574, 7, 23), ""));
        this.f3101.add(new C0654(C0164.m3496(581, 11, 78), ""));
        this.f3101.add(new C0654(C0164.m3496(592, 6, 33), ""));
        this.f3101.add(new C0654(C0164.m3496(598, 10, 12), ""));
        this.f3101.add(new C0654(C0164.m3496(TypedValues.MotionType.TYPE_DRAW_PATH, 25, 11), ""));
        this.f3101.add(new C0654(C0164.m3496(633, 17, 83), ""));
        this.f3101.add(new C0654(C0164.m3496(650, 10, 47), ""));
        this.f3101.add(new C0654(C0164.m3496(660, 4, 13), ""));
        this.f3101.add(new C0654(C0164.m3496(664, 3, 29), ""));
        this.f3101.add(new C0654(C0164.m3496(667, 16, 67), ""));
    }

    public void m5406(int i) {
        while (this.f3100 > i) {
            C0654 c0654 = (C0654) this.f3101.get(this.f3101.size() - 1);
            this.f3101.remove(c0654);
            this.f3100 -= (c0654.f3641.length() + c0654.f3642.length()) + 32;
        }
    }

    public void m5407(String str, String str2) {
        this.f3101.add(62, new C0654(str, str2));
        this.f3100 = str2.length() + str.length() + 32 + this.f3100;
    }
}
