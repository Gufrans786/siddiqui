package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.text.HtmlCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.facebook.soloader.Elf64;
import com.google.api.FieldBehaviorProto;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.google.common.base.Ascii;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.yalantis.ucrop.UCrop;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.TimeZone;
import java.util.Vector;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.CharCompanionObject;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;
import sa.lg.android.locate.BuildConfig;

public class C0239 extends C0519 {

    public static final String f851 = C0128.m3240(0, 6, 4);

    public boolean f852;

    public C0387 f853;

    public C0387 f854;

    public InterfaceC0665 f855;

    public C0387 f856;

    public C0387 f857;

    public boolean f858;

    public C0387 f859;

    public int f860;

    public boolean f861;

    public C0387 f862;

    public boolean f863;

    public C0387 f864;

    public int f865;

    public int f866;

    public int f867;

    public C0200 f868;

    public C0387 f869;

    public int f870;

    public Vector f871;

    public C0387 f872;

    public C0387 f873;

    public int f874;

    public C0387 f875;

    public C0387 f876;

    public C0254 f877;

    public C0387 f878;

    public int f879;

    public C0529 f880;

    public int f881;

    public C0387 f882;

    public C0200 f883;

    public C0387 f884;

    public C0387 f885;

    public boolean f886;

    public C0387 f887;

    public C0387 f888;

    public boolean f889;

    public C0200 f890;

    public int f891;

    public C0387 f892;

    public C0239(Object obj, Object obj2) {
        super(obj, obj2);
        this.f853 = new C0387();
        this.f873 = new C0387();
        this.f859 = new C0387();
        this.f864 = new C0387();
        this.f869 = new C0387();
        this.f872 = new C0387();
        this.f856 = new C0387();
        this.f882 = new C0387();
        this.f857 = new C0387();
        this.f862 = new C0387();
        this.f875 = new C0387();
        this.f887 = new C0387();
        this.f888 = new C0387();
        this.f877 = new C0254();
        this.f858 = false;
        this.f874 = 0;
        this.f870 = 0;
        this.f878 = new C0387();
        this.f854 = new C0387();
        this.f881 = 0;
        this.f861 = false;
        this.f852 = false;
        this.f880 = null;
        this.f855 = null;
        this.f885 = new C0387();
        this.f884 = new C0387();
        this.f860 = 88;
        this.f876 = new C0387();
        this.f892 = new C0387();
        this.f865 = -1;
        this.f890 = new C0200();
        this.f883 = new C0200();
        this.f868 = new C0200();
        this.f871 = new Vector();
        if (obj instanceof InterfaceC0665) {
            this.f855 = (InterfaceC0665) obj;
        }
        mo3290(60);
        m5265(88);
        this.f866 = 0;
        this.f879 = -1;
        this.f889 = false;
        this.f886 = false;
        this.f863 = false;
        this.f891 = 0;
        this.f853.m4541();
        this.f882.m4541();
        this.f873.m4541();
        this.f859.m4541();
        this.f864.m4541();
        this.f857.m4541();
        this.f862.m4541();
        this.f875.m4541();
        this.f856.m4541();
        this.f869.m4541();
        this.f887.m4541();
        this.f888.m4541();
        this.f872.m4556((byte) 3);
        this.f872.m4556(Ascii.ETB);
        this.f872.m4556((byte) 17);
        this.f885.m4541();
        this.f878.m4541();
        this.f874 = 0;
        this.f867 = 1;
    }

    public static boolean m3742(byte b, int i) {
        return (b & (1 << (8 - (i + 1)))) != 0;
    }

    public String m3743() {
        return this.f877.f1242.m4571();
    }

    public final String m3744() {
        C0387 c0387 = new C0387();
        for (int i = 0; i < this.f872.m4533(); i++) {
            c0387.m4563(m3719(this.f872.m4546(i)));
            if (i != this.f872.m4533() - 1) {
                c0387.m4563(",");
            }
        }
        return c0387.m4571();
    }

    public final String m3745() {
        int i = this.f865;
        return i >= 0 ? this.f868.m3675(i) : this.f876.m4571();
    }

    public boolean m3746() {
        return this.f861;
    }

    public String m3747() {
        return this.f876.m4571();
    }

    public final void m3748(byte[] bArr) {
        if (this.f852) {
            this.f880.m5355(bArr, bArr.length);
        } else {
            if (bArr == null || bArr.length == 0) {
                return;
            }
            m5273(bArr, 0, bArr.length);
        }
    }

    public final void m3749(boolean z) {
        if (!this.f852) {
            super.m5256(z);
            return;
        }
        C0529 c0529 = this.f880;
        if (c0529.f3078 && z) {
            throw new C0414(104, C0128.m3240(7326, 26, 71));
        }
        c0529.f3078 = z;
        c0529.f3080 = new Hashtable();
        if (z) {
            return;
        }
        c0529.m5354(false);
    }

    public void m3751(boolean z) {
        boolean z2 = this.f861;
        if (z2 && z != z2) {
            this.f856.m4541();
        }
        this.f861 = z;
    }

    public int m3752() {
        return this.f860;
    }

    public void m3753(String str) {
        if (this.f861 && !str.equals(this.f876.m4571())) {
            this.f856.m4541();
        }
        this.f876.m4531(str);
    }

    public void m3755(String str) {
        if (this.f861 && !str.equals(this.f853.m4571())) {
            this.f856.m4541();
        }
        this.f853.m4531(str);
    }

    public int m3756() {
        return this.f2990;
    }

    public void m3758(boolean z) {
        if (this.f2986 == 2) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(6, 45, 88));
        }
        if (this.f861 && this.f852 != z) {
            this.f856.m4541();
        }
        this.f852 = z;
        this.f880 = z ? new C0529(this.f855, this.f1721, this) : null;
    }

    public final void m3759() {
        C0387 c0387 = new C0387();
        m3785(c0387, c0387, false);
        m3731(c0387, this.f856);
    }

    public String m3760() {
        return this.f854.m4571();
    }

    public void m3761() {
        int i = 0;
        C0414 c0414 = null;
        C0414 c0415 = null;
        while (true) {
            try {
                m3774();
                break;
            } catch (C0414 e) {
                if (c0415 == null) {
                    c0415 = e;
                }
                int i2 = i + 1;
                if (i >= this.f881) {
                    c0414 = c0415;
                    break;
                }
                i = i2;
            }
        }
        if (c0414 != null) {
            throw c0414;
        }
    }

    public void mo3762(int i, String str) {
        InterfaceC0665 interfaceC0665 = this.f855;
        if (interfaceC0665 != null) {
            interfaceC0665.m5894(i, str);
        }
    }

    public boolean m3763() {
        return this.f852;
    }

    public void m3765(String str) {
        if (this.f861 && !str.equals(this.f864.m4571())) {
            this.f856.m4541();
        }
        this.f864.m4531(str);
    }

    public byte[] m3766() {
        if (this.f863) {
            this.f869.m4543(C0259.m3906(this.f856.m4554(), false));
        } else {
            this.f869.m4567(this.f856);
        }
        if (this.f861) {
            C0387 c0387 = new C0387();
            m3785(c0387, c0387, false);
            m3731(c0387, this.f856);
        }
        return this.f869.m4554();
    }

    public int m3767() {
        return this.f881;
    }

    public final int m3768() {
        try {
            C0530 c0530 = new C0530(this.f857.m4554());
            c0530.m5378();
            return c0530.m5365(0).m5365(3).m5365(0).m5365(0).m5365(0).m5389();
        } catch (Exception unused) {
            return -1;
        }
    }

    public final void m3769(Exception exc) {
        if (this.f852) {
            this.f880.f3079.m4312(exc);
        } else {
            super.m4312(exc);
        }
    }

    public void m3772(String str) {
        String str2 = this.f2983;
        m5259(str);
        if (!this.f861 || this.f2983.equals(str2)) {
            return;
        }
        this.f856.m4541();
    }

    public final String m3773() {
        int i = this.f865;
        return i >= 0 ? this.f890.m3675(i) : this.f884.m4571();
    }

    public void m3774() {
        int i;
        int i2;
        if (this.f889) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0128.m3240(968, 46, 35));
        }
        if (this.f866 != 0) {
            throw new C0414(950, C0128.m3240(51, 29, 87));
        }
        if (this.f861 && this.f856.m4533() > 0) {
            return;
        }
        this.f875.m4541();
        this.f862.m4541();
        this.f857.m4541();
        this.f856.m4541();
        this.f869.m4541();
        this.f887.m4541();
        this.f888.m4541();
        this.f865 = -1;
        this.f871.clear();
        if (C0259.m3856(this.f2983)) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(80, 16, 69));
        }
        if ((this.f876.m4533() > 0 && this.f884.m4533() == 0) || (this.f876.m4533() == 0 && this.f884.m4533() > 0)) {
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(96, 64, 83));
        }
        StringBuilder sbAppend = new StringBuilder().append(C0128.m3240(SyslogConstants.LOG_LOCAL4, 20, 23));
        int i3 = 3;
        if (this.f852) {
            i = RotationOptions.ROTATE_180;
            i2 = SyslogConstants.LOG_CLOCK;
        } else {
            i = 183;
            i2 = 105;
        }
        mo3781(1, sbAppend.append(C0128.m3240(i, 3, i2)).toString(), C0128.m3240(186, 4, 54));
        int i4 = 7;
        mo3781(1, C0128.m3240(190, 23, 7), C0128.m3240(213, 4, 42));
        mo3781(1, C0128.m3240(JfifUtil.MARKER_EOI, 28, 99) + this.f2983 + ":" + this.f2990 + C0128.m3240(245, 8, 68) + this.f864.m4571() + C0128.m3240(253, 9, 100) + this.f873.m4571(), C0128.m3240(262, 4, 127));
        if (this.f877.f1244.size() > 0) {
            mo3781(1, C0128.m3240(266, 28, 9) + this.f877.f1245 + C0128.m3240(294, 17, 22) + this.f877.f1244.size() + ")", C0128.m3240(311, 4, 49));
        }
        C0387 c0387 = new C0387();
        try {
            if (this.f854.m4533() > 0) {
                m3750(this.f854.m4571());
                mo3781(1, C0128.m3240(315, 64, 69), C0128.m3240(379, 4, 91));
                this.f866 = 2;
                m3749(true);
            } else {
                if (this.f873.m4533() <= 0 || this.f882.m4533() <= 0) {
                    throw new C0414(951, C0128.m3240(383, 17, 90));
                }
                m3783(10, c0387, true);
                m3782(0, C0128.m3240(400, 10, 76), c0387);
                this.f866 = 1;
                m3749(true);
                m3748(c0387.m4554());
            }
            m5631();
            while (true) {
                int i5 = this.f866;
                if (i5 == 8) {
                    this.f866 = 0;
                    this.f875.m4541();
                    m3749(false);
                    mo3781(1, C0128.m3240(442, 23, 78), C0128.m3240(465, 4, 124));
                    return;
                }
                int i6 = 6;
                if (i5 == 2) {
                    if (this.f884.m4533() <= 0) {
                        i6 = i3;
                    }
                    this.f866 = i6;
                    m3783(12, c0387, false);
                    m3782(0, C0128.m3240(410, 11, 94), c0387);
                    m3748(c0387.m4554());
                } else if (i5 == 4) {
                    this.f866 = 8;
                    m3785(c0387, c0387, false);
                    m3731(c0387, this.f856);
                } else if (i5 == 5) {
                    m3783(10, c0387, false);
                    m3782(0, C0128.m3240(421, 10, RNMBXStyleValue.InterpolationModeIdentity), c0387);
                    m3748(c0387.m4554());
                    this.f866 = 1;
                } else if (i5 == i4) {
                    m3749(false);
                    int i7 = this.f865;
                    m5259(i7 >= 0 ? this.f890.m3675(i7) : this.f884.m4571());
                    int i8 = this.f865;
                    m5265(i8 >= 0 ? this.f883.m3670(i8) : this.f860);
                    m3749(true);
                    if (this.f892.m4533() == 0) {
                        this.f892.m4567(this.f882);
                    }
                    C0387 c0388 = this.f882;
                    int i9 = this.f865;
                    c0388.m4531(i9 >= 0 ? this.f868.m3675(i9) : this.f876.m4571());
                    this.f866 = this.f871.size() == 0 ? 3 : 6;
                    m3783(12, c0387, false);
                    m3782(0, C0128.m3240(431, 11, 99), c0387);
                    m3748(c0387.m4554());
                }
                if (this.f852) {
                    this.f880.f3079.mo5626();
                } else {
                    super.mo5626();
                }
                i4 = 7;
                i3 = 3;
            }
        } catch (Throwable th) {
            this.f866 = 0;
            this.f875.m4541();
            m3749(false);
            throw th;
        }
    }

    public void m3775(int i) {
        if (this.f861 && i != this.f2990) {
            this.f856.m4541();
        }
        m5265(i);
    }

    public void m3777(String str) {
        if (this.f861 && !str.equals(this.f884.m4571())) {
            this.f856.m4541();
        }
        this.f884.m4531(str);
    }

    public String m3778() {
        return this.f884.m4571();
    }

    public void m3779(String str) {
        C0387 c0387 = new C0387();
        C0387 c0388 = new C0387();
        c0387.m4567(this.f873);
        c0388.m4567(this.f882);
        C0387 c0389 = new C0387();
        c0389.m4531(str);
        int iM4557 = c0389.m4557('@');
        int iM4558 = c0389.m4557('/');
        if (iM4557 >= 0) {
            this.f873.m4537(c0389.m4554(), iM4557);
            this.f882.m4531(c0389.m4538(iM4557 + 1));
        } else if (iM4558 >= 0) {
            this.f873.m4531(c0389.m4538(iM4558 + 1));
            this.f882.m4537(c0389.m4554(), iM4558);
        } else {
            this.f873.m4567(c0389);
            this.f882.m4541();
        }
        if (this.f861) {
            if (c0387.m4571().equals(this.f873.m4571()) && c0388.m4571().equals(this.f882.m4571())) {
                return;
            }
            this.f856.m4541();
        }
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        int i;
        boolean z;
        byte[] bArrM3865;
        boolean z2;
        byte[] bArr;
        if (c0440.m4813(C0128.m3240(469, 18, 14))) {
            if (c0440.f2269) {
                return this.f886 ? C0128.m3240(487, 4, 62) : C0128.m3240(491, 5, 82);
            }
            this.f886 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3240(496, 15, 17)) || c0440.m4813(C0128.m3240(FrameMetricsAggregator.EVERY_DURATION, 23, 81))) {
            if (c0440.f2269) {
                return m3744();
            }
            String str = c0440.f2271;
            C0387 c0387 = new C0387();
            c0387.m4567(this.f872);
            this.f872.m4541();
            if (str.equals("*")) {
                this.f872.m4556((byte) 3);
                this.f872.m4556(Ascii.ETB);
                this.f872.m4556((byte) 17);
            } else {
                C0387 c0388 = new C0387();
                C0387 c0389 = new C0387();
                c0388.m4531(str);
                int iM4557 = c0388.m4557(',');
                while (true) {
                    if (iM4557 > 0) {
                        c0389.m4537(c0388.m4554(), iM4557);
                        c0388.m4534(iM4557 + 1);
                    } else {
                        c0389.m4537(c0388.m4554(), c0388.m4533());
                    }
                    C0387 c0387M5881 = C0663.m5881(c0389.m4571());
                    if (c0387M5881.m4539(C0128.m3240(2374, 11, 6))) {
                        i = 3;
                    } else {
                        if (c0387M5881.m4539(C0128.m3240(2385, 8, 90))) {
                            i = 23;
                        } else if (c0387M5881.m4539(C0128.m3240(2393, 23, 27))) {
                            i = 17;
                        } else {
                            i = c0387M5881.m4539(C0128.m3240(2416, 23, 67)) ? 18 : -1;
                        }
                        if (i != -1) {
                            C0387 c03810 = new C0387();
                            c03810.m4563(C0128.m3240(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, 25, 35));
                            c03810.m4569(c0389.m4554(), c0389.m4533());
                            throw new C0414(954, c03810.m4571());
                        }
                        this.f872.m4556((byte) i);
                        if (iM4557 == -1) {
                            iM4557 = c0388.m4557(',');
                        } else if (this.f861 && !C0259.m3896(c0387.m4554(), this.f872.m4554())) {
                            this.f856.m4541();
                        }
                    }
                    if (i != -1) {
                        C0387 c03811 = new C0387();
                        c03811.m4563(C0128.m3240(PointerIconCompat.TYPE_HORIZONTAL_DOUBLE_ARROW, 25, 35));
                        c03811.m4569(c0389.m4554(), c0389.m4533());
                        throw new C0414(954, c03811.m4571());
                    }
                    this.f872.m4556((byte) i);
                    if (iM4557 == -1) {
                        iM4557 = c0388.m4557(',');
                    } else if (this.f861) {
                        this.f856.m4541();
                    }
                }
            }
        } else if (c0440.m4813(C0128.m3240(534, 22, 48))) {
            if (c0440.f2269) {
                return this.f889 ? C0128.m3240(556, 4, 56) : C0128.m3240(560, 5, 63);
            }
            this.f889 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3240(565, 9, 61))) {
            if (c0440.f2269) {
                return m5264();
            }
            m5271(c0440.f2271);
        } else if (c0440.m4813(C0128.m3240(574, 9, 85))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(m5269()).toString();
            }
            m5270(c0440.m4805());
        } else if (c0440.m4813(C0128.m3240(583, 8, 101))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f867).toString();
            }
            this.f867 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3240(591, 10, 34))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f891).toString();
            }
            this.f891 = c0440.m4805();
        } else if (c0440.m4813(C0128.m3240(601, 15, 104))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f863).toString();
            }
            this.f863 = c0440.m4809();
        } else if (c0440.m4813(C0128.m3240(616, 11, 38))) {
            if (c0440.f2269) {
                return this.f885.m4571();
            }
            this.f885.m4531(c0440.f2271);
        } else {
            if (c0440.m4813(C0128.m3240(627, 15, 31)) && !c0440.f2269) {
                String[] strArrM3852 = C0259.m3852(c0440.f2271, ",");
                if (strArrM3852.length != 2) {
                    return "";
                }
                int i2 = Integer.parseInt(strArrM3852[0]);
                C0387 c03812 = new C0387();
                C0387 c03813 = new C0387();
                c03812.m4543(C0259.m3899(8, C0259.m3902(strArrM3852[1].trim())));
                m3722(this.f879, i2, this.f888, c03812, c03813);
                return C0259.m3892(C0259.m3874(8, c03813.m4554()));
            }
            if (c0440.m4813(C0128.m3240(642, 18, 26)) || c0440.m4813(C0128.m3240(660, 10, 117))) {
                if (c0440.f2269) {
                    return m3743();
                }
                m3776(c0440.f2271);
                C0254 c0254 = this.f877;
                C0382 c0382 = new C0382(C0671.m5919(c0254.f1242.m4571()));
                c0382.m4496();
                c0254.f1245 = c0382.m4496();
                while (c0382.m4486() > 0) {
                    C0331 c0331 = new C0331();
                    int i3 = c0254.f1245;
                    c0331.f1789 = c0382.m4506();
                    int i4 = c0382.f1970;
                    c0331.f1788 = c0382.m4483();
                    c0331.f1787.m4543(c0382.m4484(c0382.m4483()));
                    for (int i5 = 0; i5 < c0331.f1788; i5++) {
                        c0331.f1784.f715.addElement(C0259.m3882(c0382.m4484(c0382.m4483())));
                    }
                    if (i3 != 1) {
                        c0382.m4506();
                    }
                    c0382.m4506();
                    c0382.m4496();
                    c0331.f1786 = c0382.m4483();
                    short sM4483 = c0382.m4483();
                    c0331.f1785.m5724(c0382.m4484(sM4483), sM4483);
                    if ((c0331.f1789 - c0382.f1970) + i4 >= 4) {
                        c0382.m4506();
                    }
                    c0254.f1244.add(c0331);
                }
                if (this.f885.m4533() == 0) {
                    byte[] bArr2 = new byte[24];
                    C0259.m3871(16L, bArr2, 0, 4);
                    C0259.m3871(62, bArr2, 20, 4);
                    this.f885.m4531(C0259.m3841(bArr2));
                }
                mo3781(3, C0128.m3240(670, 24, 99) + this.f885.m4571(), C0128.m3240(694, 4, 13));
            } else if (c0440.m4813(C0128.m3240(698, 10, 79)) && !c0440.f2269) {
                String str2 = c0440.f2271;
                C0387 c03814 = new C0387();
                C0530 c0530 = new C0530(C0259.m3876(str2));
                c0530.m5378();
                if (c0530.f3084 != 111) {
                    throw new C0414(1, C0128.m3240(1302, 14, 38));
                }
                if (c0530.m5365(0).m5365(0).m5365(0).m5389() != 5) {
                    throw new C0414(1, C0128.m3240(1316, 28, 50));
                }
                if (c0530.m5365(0).m5365(1).m5365(0).m5389() != 15) {
                    throw new C0414(1, C0128.m3240(1344, 32, 82));
                }
                C0387 c03815 = new C0387();
                m3786(c0530.m5365(0).m5365(2).m5365(0), this.f887, c03814, 12, c03815);
                C0530 c0531 = new C0530(c03815.m4554());
                if (c0531.m5392()) {
                    c0531.m5372(1);
                    int i6 = c0531.f3085;
                    bArr = new byte[i6];
                    System.arraycopy(c0531.f3099, 0, bArr, 0, i6);
                    int i7 = c0531.f3083;
                    int i8 = c0531.f3094;
                    c0531.f3083 = i7 - i8;
                    byte[] bArr3 = c0531.f3099;
                    int i9 = c0531.f3083;
                    c0531.f3099 = new byte[i9];
                    System.arraycopy(bArr3, i8, c0531.f3099, 0, i9);
                    c0531.f3094 = 0;
                    c0531.f3085 = c0531.f3094;
                    c0531.f3092 = 0;
                    c0531.f3084 = 0;
                    c0531.f3088 = 0;
                    c0531.f3091 = 0;
                } else {
                    bArr = null;
                }
                C0530 c0532 = new C0530(bArr);
                c0532.m5378();
                C0530 c0530M5377 = c0532.m5365(0).m5377(162);
                C0530 c0530M5378 = c0532.m5365(0).m5377(163);
                if (c0530M5377 != null) {
                    this.f874 = c0530M5377.m5365(0).m5365(0).m5365(0).m5389();
                    this.f878.m4543(c0530M5377.m5365(0).m5365(1).m5365(0).m5373());
                }
                if (c0530M5378 != null) {
                    c0530M5378.m5365(0).m5389();
                }
            } else {
                if (c0440.m4813(C0128.m3240(708, 16, 83)) && !c0440.f2269) {
                    String str3 = c0440.f2271;
                    C0627 c0627 = new C0627();
                    c0627.m5723(C0259.m3876(str3));
                    if (c0627.m5727(0) != '`') {
                        throw new C0414(0, C0128.m3240(1734, 36, 63) + C0259.m3841(new byte[]{(byte) c0627.m5727(0), (byte) c0627.m5727(1)}) + ")");
                    }
                    c0627.m5721(13);
                    C0382 c0383 = new C0382(c0627.m5725());
                    if (c0383.m4485(2) == 0 && c0383.m4485(3) == 0) {
                        C0387 c03816 = this.f878.m4533() > 0 ? this.f878 : this.f862;
                        byte[] bArrM4484 = c0383.m4484(2);
                        byte[] bArrM4485 = c0383.m4484(2);
                        if (bArrM4485[0] != 0 || bArrM4485[1] != 0) {
                            throw new C0414(954, C0128.m3240(1803, 33, 65) + C0259.m3841(bArrM4485) + ").");
                        }
                        byte[] bArrM4486 = c0383.m4484(2);
                        byte b = bArrM4486[0];
                        if (b == 255 && bArrM4486[1] == 255) {
                            z2 = false;
                        } else {
                            if (b != 0 || bArrM4486[1] != 0) {
                                throw new C0414(954, C0128.m3240(1836, 28, 12) + C0259.m3841(bArrM4486) + ").");
                            }
                            z2 = true;
                        }
                        byte[] bArrM4487 = c0383.m4484(2);
                        byte[] bArrM4488 = c0383.m4484(8);
                        byte[] bArrM4489 = c0383.m4484(8);
                        byte[] bArrM44810 = c0383.m4484(c0383.f1971 - c0383.f1970);
                        C0387 c03817 = new C0387();
                        c03817.m4543(bArrM4489);
                        C0387 c03818 = new C0387();
                        C0387 c03819 = new C0387();
                        c03819.m4543(bArrM4488);
                        m3737(c03819, c03816, c03817, false, c03818);
                        C0387 c03820 = new C0387();
                        if (z2) {
                            C0387 c03821 = new C0387();
                            c03821.m4543(bArrM44810);
                            C0387 c03822 = new C0387();
                            c03822.m4543(c03816.m4554());
                            byte[] bArrM4554 = c03816.m4554();
                            for (int i10 = 0; i10 < c03822.m4533(); i10++) {
                                c03822.m4548(i10, (byte) (bArrM4554[i10] ^ 240));
                            }
                            c03817.m4541();
                            c03817.m4559(8, (byte) 0);
                            m3737(c03821, c03822, c03817, false, c03820);
                        } else {
                            c03820.m4543(bArrM44810);
                        }
                        C0387 c03823 = new C0387();
                        C0387 c03824 = new C0387();
                        c03824.m4568(bArrM4484);
                        c03824.m4568(bArrM4485);
                        c03824.m4568(bArrM4486);
                        c03824.m4568(bArrM4487);
                        c03824.m4568(c03820.m4554());
                        C0387 c03825 = new C0387();
                        m3728(C0128.m3240(1864, 3, 61), c03824, c03825);
                        c03817.m4541();
                        c03817.m4559(8, (byte) 0);
                        m3737(c03825, c03816, c03817, true, c03823);
                        if (!C0259.m3896(c03823.m4545(8), bArrM4489)) {
                            throw new C0414(953, C0128.m3240(1867, 22, 105));
                        }
                        byte[] bArrM4555 = c03820.m4554();
                        bArrM3865 = C0259.m3865(bArrM4555, 8, (bArrM4555.length - 8) - bArrM4555[bArrM4555.length - 1]);
                    } else {
                        if (c0383.m4485(2) != 17 || c0383.m4485(3) != 0) {
                            throw new C0414(954, C0128.m3240(1770, 33, 2) + C0259.m3841(c0383.m4518(2, 2)) + ").");
                        }
                        C0387 c03826 = this.f878.m4533() > 0 ? this.f878 : this.f862;
                        byte[] bArrM44811 = c0383.m4484(2);
                        byte[] bArrM44812 = c0383.m4484(2);
                        byte[] bArrM44813 = c0383.m4484(2);
                        byte b2 = bArrM44813[0];
                        if (b2 == 255 && bArrM44813[1] == 255) {
                            z = false;
                        } else {
                            if (b2 != 16 || bArrM44813[1] != 0) {
                                throw new C0414(954, C0128.m3240(1889, 28, 125) + C0259.m3841(bArrM44813) + ").");
                            }
                            z = true;
                        }
                        byte[] bArrM44814 = c0383.m4484(2);
                        byte[] bArrM44815 = c0383.m4484(8);
                        byte[] bArrM44816 = c0383.m4484(8);
                        byte[] bArrM44817 = c0383.m4484(c0383.f1971 - c0383.f1970);
                        C0387 c03827 = new C0387();
                        c03827.m4543(new byte[]{0, 0, 0, 0});
                        new C0387().m4543(new byte[]{102, 111, 114, 116, 121, 98, 105, 116, 115, 0, 0, 0, 0, 0});
                        C0387 c03828 = new C0387();
                        m3729(C0128.m3240(1924, 7, 98), c03826, c03827, c03828);
                        C0387 c03829 = new C0387();
                        c03829.m4543(bArrM44816);
                        C0387 c03830 = new C0387();
                        c03830.m4543(c03828.m4554());
                        boolean z3 = z;
                        m3729(C0128.m3240(1931, 7, 73), c03830, c03829, c03828);
                        C0387 c03831 = new C0387();
                        C0387 c03832 = new C0387();
                        c03832.m4543(bArrM44815);
                        m3738(c03832, c03828, false, c03831);
                        C0387 c03833 = new C0387();
                        if (z3) {
                            C0387 c03834 = new C0387();
                            c03834.m4543(bArrM44817);
                            C0387 c03835 = new C0387();
                            byte[] bArr4 = new byte[16];
                            byte[] bArrM4556 = c03826.m4554();
                            int i11 = 0;
                            for (int i12 = 16; i11 < i12; i12 = 16) {
                                bArr4[i11] = (byte) (bArrM4556[i11] ^ 240);
                                i11++;
                            }
                            C0387 c03836 = new C0387();
                            c03836.m4543(bArr4);
                            m3729(C0128.m3240(1945, 7, 85), c03836, c03827, c03835);
                            C0387 c03837 = new C0387();
                            c03837.m4543(c03835.m4554());
                            C0387 c03838 = new C0387();
                            c03838.m4537(c03831.m4554(), 4);
                            m3729(C0128.m3240(1952, 7, 90), c03837, c03838, c03835);
                            m3738(c03834, c03835, false, c03833);
                        } else {
                            c03833.m4543(bArrM44817);
                        }
                        C0387 c03839 = new C0387();
                        c03839.m4543(new byte[]{115, 105, 103, 110, 97, 116, 117, 114, 101, 107, 101, 121, 0});
                        C0387 c03840 = new C0387();
                        m3729(C0128.m3240(1959, 7, 65), c03826, c03839, c03840);
                        C0387 c03841 = new C0387();
                        c03841.m4568(new byte[]{Ascii.CR, 0, 0, 0});
                        c03841.m4568(bArrM44811);
                        c03841.m4568(bArrM44812);
                        c03841.m4568(bArrM44813);
                        c03841.m4568(bArrM44814);
                        c03841.m4568(c03833.m4554());
                        C0387 c03842 = new C0387();
                        m3728(C0128.m3240(1966, 3, 71), c03841, c03842);
                        C0387 c03843 = new C0387();
                        c03843.m4543(c03842.m4554());
                        m3729(C0128.m3240(1969, 7, 35), c03840, c03843, c03842);
                        if (!C0259.m3896(C0259.m3865(c03842.m4554(), 0, 8), bArrM44816)) {
                            throw new C0414(953, C0128.m3240(1976, 22, 17));
                        }
                        byte[] bArrM4557 = c03833.m4554();
                        bArrM3865 = C0259.m3865(bArrM4557, 8, (bArrM4557.length - 8) - bArrM4557[bArrM4557.length - 1]);
                    }
                    return C0259.m3847(bArrM3865);
                }
                if (c0440.m4813(C0128.m3240(724, 12, 39)) && c0440.f2269) {
                    return C0259.m3847((this.f878.m4533() > 0 ? this.f878 : this.f888).m4554());
                }
                if (c0440.m4813(C0128.m3240(736, 19, 112)) && c0440.f2269) {
                    return C0663.m5887(new StringBuilder(), this.f870, "");
                }
                if (c0440.m4813(C0128.m3240(755, 17, 112)) && c0440.f2269) {
                    return m3768() + "";
                }
                if (c0440.m4813(C0128.m3240(772, 7, 80)) && c0440.f2269) {
                    StringBuilder sb = new StringBuilder();
                    int i13 = this.f874;
                    if (i13 == 0) {
                        i13 = this.f879;
                    }
                    return C0663.m5887(sb, i13, "");
                }
                if (c0440.m4813(C0128.m3240(779, 20, 4))) {
                    if (c0440.f2269) {
                        return this.f854.m4571();
                    }
                    this.f854.m4531(c0440.f2271);
                } else if (c0440.m4813(C0128.m3240(799, 6, 5))) {
                    if (c0440.m4811()) {
                        return m3763() + "";
                    }
                    m3758(c0440.m4809());
                } else if (c0440.m4813(C0128.m3240(805, 10, 29))) {
                    if (c0440.m4811()) {
                        return this.f884.m4571();
                    }
                    this.f884.m4531(c0440.m4808());
                } else if (c0440.m4813(C0128.m3240(815, 10, 12))) {
                    if (c0440.m4811()) {
                        return C0663.m5887(new StringBuilder(), this.f860, "");
                    }
                    this.f860 = c0440.m4805();
                } else if (c0440.m4813(C0128.m3240(825, 8, 23))) {
                    if (c0440.m4811()) {
                        return this.f876.m4571();
                    }
                    this.f876.m4531(c0440.m4808());
                } else if (c0440.m4813(C0128.m3240(833, 20, 44))) {
                    if (c0440.m4811()) {
                        return this.f890.m3672() + "";
                    }
                    this.f890.m3669(c0440.m4805());
                    this.f868.m3669(c0440.m4805());
                    this.f883.m3669(c0440.m4805());
                    for (int i14 = 0; i14 < this.f883.m3672(); i14++) {
                        this.f883.m3673(i14, "88");
                    }
                } else if (c0440.m4813(C0128.m3240(853, 23, 105))) {
                    if (c0440.m4811()) {
                        return this.f890.m3675(c0440.m4812());
                    }
                    this.f890.m3673(c0440.m4812(), c0440.m4808());
                } else if (c0440.m4813(C0128.m3240(876, 23, 16))) {
                    if (c0440.m4811()) {
                        return this.f883.m3675(c0440.m4812());
                    }
                    this.f883.m3673(c0440.m4812(), c0440.m4808());
                } else if (c0440.m4813(C0128.m3240(899, 21, 15))) {
                    if (c0440.m4811()) {
                        return this.f868.m3675(c0440.m4812());
                    }
                    this.f868.m3673(c0440.m4812(), c0440.m4808());
                } else if (c0440.m4813(C0128.m3240(920, 12, 13))) {
                    m3759();
                } else if (c0440.m4813(C0128.m3240(932, 17, 63))) {
                    if (c0440.m4811()) {
                        return m3767() + "";
                    }
                    m3754(c0440.m4805());
                } else {
                    if (!c0440.m4813(C0128.m3240(949, 10, 43))) {
                        return super.mo3151(c0440);
                    }
                    if (c0440.m4811()) {
                        return this.f858 ? C0128.m3240(959, 4, 8) : C0128.m3240(963, 5, 67);
                    }
                    this.f858 = c0440.m4809();
                }
            }
        }
        return "";
    }

    public static String m3714(int i) {
        switch (i) {
            case 1:
                return C0128.m3240(4869, 16, 18);
            case 2:
                return C0128.m3240(4885, 19, 45);
            case 3:
                return C0128.m3240(4904, 16, 47);
            case 4:
                return C0128.m3240(4920, 23, 40);
            case 5:
                return C0128.m3240(4943, 23, 86);
            case 6:
                return C0128.m3240(4966, 27, 83);
            case 7:
                return C0128.m3240(4993, 27, 49);
            case 8:
                return C0128.m3240(5020, 28, 18);
            case 9:
                return C0128.m3240(5048, 16, 95);
            case 10:
                return C0128.m3240(5064, 23, 51);
            case 11:
                return C0128.m3240(5087, 19, 72);
            case 12:
                return C0128.m3240(5106, 14, 42);
            case 13:
                return C0128.m3240(5120, 17, 74);
            case 14:
                return C0128.m3240(5137, 20, 102);
            case 15:
                return C0128.m3240(5157, 22, 41);
            case 16:
                return C0128.m3240(5179, 26, 39);
            case 17:
                return C0128.m3240(5205, 21, 66);
            case 18:
                return C0128.m3240(5226, 22, 86);
            case 19:
                return C0128.m3240(5248, 23, 15);
            case 20:
                return C0128.m3240(5271, 19, 85);
            case 21:
                return C0128.m3240(5290, 21, 21);
            case 22:
                return C0128.m3240(5311, 22, 98);
            case 23:
                return C0128.m3240(5333, 19, 59);
            case 24:
                return C0128.m3240(5352, 22, 54);
            case 25:
                return C0128.m3240(5374, 24, 21);
            case 26:
                return C0128.m3240(5398, 22, 29);
            case 27:
                return C0128.m3240(5420, 26, 98);
            case 28:
                return C0128.m3240(5446, 25, 30);
            case 29:
                return C0128.m3240(5471, 23, 84);
            case 30:
            case 43:
            case 53:
            case 54:
            case 55:
            case 56:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA:
            case 58:
            case 59:
            default:
                return C0128.m3240(6333, 7, 71);
            case 31:
                return C0128.m3240(5494, 24, 56);
            case 32:
                return C0128.m3240(5518, 22, 27);
            case 33:
                return C0128.m3240(5540, 18, 9);
            case 34:
                return C0128.m3240(5558, 17, 67);
            case 35:
                return C0128.m3240(5575, 17, 14);
            case 36:
                return C0128.m3240(5592, 19, 122);
            case 37:
                return C0128.m3240(5611, 15, 85);
            case 38:
                return C0128.m3240(5626, 18, 119);
            case 39:
                return C0128.m3240(5644, 21, 117);
            case 40:
                return C0128.m3240(5665, 19, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
            case 41:
                return C0128.m3240(5684, 19, 112);
            case 42:
                return C0128.m3240(5703, 19, 76);
            case 44:
                return C0128.m3240(5722, 20, 114);
            case 45:
                return C0128.m3240(5742, 16, 95);
            case 46:
                return C0128.m3240(5758, 19, 63);
            case 47:
                return C0128.m3240(5777, 23, 70);
            case 48:
                return C0128.m3240(5800, 17, 37);
            case 49:
                return C0128.m3240(5817, 17, 115);
            case 50:
                return C0128.m3240(5834, 22, 92);
            case 51:
                return C0128.m3240(5856, 24, 96);
            case 52:
                return C0128.m3240(5880, 19, 91);
            case 60:
                return C0128.m3240(5899, 15, 59);
            case LockFreeTaskQueueCore.CLOSED_SHIFT:
                return C0128.m3240(5914, 21, 31);
            case Elf64.Ehdr.E_SHSTRNDX:
                return C0128.m3240(5935, 28, 32);
            case HtmlCompat.FROM_HTML_MODE_COMPACT:
                return C0128.m3240(5963, 25, 3);
            case 64:
                return C0128.m3240(5988, 21, 115);
            case 65:
                return C0128.m3240(6009, 20, 86);
            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                return C0128.m3240(6029, 28, 117);
            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                return C0128.m3240(6057, 17, 85);
            case BuildConfig.VERSION_CODE:
                return C0128.m3240(6074, 19, 95);
            case UCrop.REQUEST_CROP:
                return C0128.m3240(6093, 32, 85);
            case CoreConstants.OOS_RESET_FREQUENCY:
                return C0128.m3240(6125, 31, 96);
            case 71:
                return C0128.m3240(6156, 27, 116);
            case SyslogConstants.LOG_CRON:
                return C0128.m3240(6183, 27, 88);
            case 73:
                return C0128.m3240(6210, 33, 80);
            case 74:
                return C0128.m3240(6243, 37, 72);
            case 75:
                return C0128.m3240(6280, 28, 4);
            case Base64.mimeLineLength:
                return C0128.m3240(6308, 25, 51);
        }
    }

    public static String m3719(int i) {
        if (i == 3) {
            return C0128.m3240(2302, 11, 43);
        }
        if (i == 23) {
            return C0128.m3240(2313, 8, 60);
        }
        if (i == 17) {
            return C0128.m3240(2321, 23, 56);
        }
        if (i != 18) {
            return C0128.m3240(2367, 7, 119);
        }
        return C0128.m3240(2344, 23, 22);
    }

    public final void m3750(String str) throws C0414 {
        int i;
        C0290 c0290;
        char c;
        C0382 c0382 = new C0382(C0671.m5919(str));
        short sM4483 = c0382.m4483();
        int i2 = 0;
        if (sM4483 == 1284) {
            int iM4483 = c0382.m4483();
            if (iM4483 >= 0) {
                while (true) {
                    i = 1;
                    if (iM4483 <= 0) {
                        break;
                    }
                    short sM4484 = c0382.m4483();
                    short sM4485 = c0382.m4483();
                    if (sM4484 == 1) {
                        c0382.m4506();
                        c0382.m4506();
                    }
                    iM4483 -= sM4485 + 4;
                }
                m3780(c0382);
                Vector vector = new Vector();
                while (c0382.m4486() > 0) {
                    C0290 c0291 = new C0290();
                    try {
                        c0291.f1511 = m3780(c0382);
                    } catch (Exception unused) {
                    }
                    try {
                        c0291.f1503 = m3780(c0382);
                    } catch (Exception unused2) {
                    }
                    c0291.f1504 = c0382.m4483();
                    c0291.f1507 = c0382.m4484(c0382.m4506());
                    c0291.f1516 = ((long) c0382.m4506()) * 1000;
                    c0291.f1505 = ((long) c0382.m4506()) * 1000;
                    c0291.f1506 = ((long) c0382.m4506()) * 1000;
                    c0291.f1510 = ((long) c0382.m4506()) * 1000;
                    c0291.f1509 = c0382.m4496() != 0;
                    c0291.f1512 = c0382.m4506();
                    int iM4506 = c0382.m4506();
                    if (iM4506 > 0) {
                        for (int i3 = 0; i3 < iM4506; i3++) {
                            int i4 = c0382.f1970;
                            c0382.m4483();
                            int iM4507 = c0382.m4506();
                            if (iM4507 != 4 && iM4507 != 16) {
                                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(7304, 22, 70));
                            }
                            c0382.m4484(iM4507);
                            c0291.f1513.add(c0382.m4518(i4, iM4507 + 6));
                        }
                    }
                    int iM4508 = c0382.m4506();
                    if (iM4508 > 0) {
                        for (int i5 = 0; i5 < iM4508; i5++) {
                            int i6 = c0382.f1970;
                            c0382.m4483();
                            int iM4509 = c0382.m4506();
                            c0382.m4484(iM4509);
                            c0291.f1514.add(c0382.m4518(i6, iM4509 + 6));
                        }
                    }
                    int iM45010 = c0382.m4506();
                    if (iM45010 > 0) {
                        c0291.f1515 = c0382.m4484(iM45010);
                    }
                    int iM45011 = c0382.m4506();
                    if (iM45011 > 0) {
                        c0291.f1508 = c0382.m4484(iM45011);
                    }
                    vector.add((C0259.m3856(c0291.f1503) || C0259.m3856(c0291.f1511)) ? null : c0291);
                }
                int i7 = 0;
                C0290 c0292 = null;
                while (true) {
                    if (i7 >= vector.size()) {
                        c0290 = null;
                        break;
                    }
                    if (vector.get(i7) != null) {
                        c0290 = (C0290) vector.get(i7);
                        if (c0290.f1504 != 0 && c0290.f1507.length != 0 && c0290.f1515.length != 0) {
                            if (c0292 == null) {
                                c0292 = c0290;
                            }
                            String str2 = c0290.f1511;
                            String strSubstring = str2.substring(str2.indexOf(64) + 1);
                            String str3 = c0290.f1511;
                            String strSubstring2 = str3.substring(i2, str3.indexOf(64));
                            mo3781(i, C0128.m3240(6538, 43, 94) + c0290.f1511 + C0128.m3240(6581, 20, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY) + c0290.f1503 + C0128.m3240(6601, 12, 115) + c0290.f1504 + C0128.m3240(6613, 14, 5) + c0290.f1507.length + C0128.m3240(6627, 17, 122) + c0290.f1515.length, C0128.m3240(6644, 4, 32));
                            if (strSubstring.equalsIgnoreCase(this.f882.m4571()) && strSubstring2.equalsIgnoreCase(this.f873.m4571())) {
                                mo3781(1, C0128.m3240(6648, 61, 88) + strSubstring2 + C0128.m3240(6709, 18, 51) + strSubstring + C0128.m3240(6727, 9, 49) + this.f873.m4571() + C0128.m3240(6736, 10, 46) + this.f882.m4571(), C0128.m3240(6746, 4, 19));
                                break;
                            } else {
                                mo3781(1, C0128.m3240(6750, 68, 41) + strSubstring2 + C0128.m3240(6818, 18, 11) + strSubstring + C0128.m3240(6836, 9, 12) + this.f873.m4571() + C0128.m3240(6845, 10, 33) + this.f882.m4571(), C0128.m3240(6855, 4, 85));
                                c = 16;
                            }
                        } else {
                            c = 16;
                            mo3781(1, C0128.m3240(6419, 52, 16) + c0290.f1511 + C0128.m3240(6471, 20, 99) + c0290.f1503 + C0128.m3240(6491, 12, 58) + c0290.f1504 + C0128.m3240(6503, 14, 91) + c0290.f1507.length + C0128.m3240(6517, 17, WebSocketProtocol.PAYLOAD_SHORT) + c0290.f1515.length, C0128.m3240(6534, 4, 57));
                        }
                    } else {
                        c = 16;
                    }
                    i7++;
                    i2 = 0;
                    i = 1;
                }
                if (c0290 != null || c0292 == null) {
                    c0292 = c0290;
                } else {
                    mo3781(1, C0128.m3240(6859, 122, 91), C0128.m3240(6981, 4, 85));
                    mo3781(1, C0128.m3240(6985, 48, 95) + c0292.f1511 + C0128.m3240(7033, 20, 94) + c0292.f1503 + C0128.m3240(7053, 12, 29) + c0292.f1504 + C0128.m3240(7065, 14, 114) + c0292.f1507.length + C0128.m3240(7079, 17, 127) + c0292.f1515.length, C0128.m3240(7096, 4, 28));
                }
                if (c0292 != null) {
                    mo3781(1, C0128.m3240(7160, 74, 5) + this.f873 + C0128.m3240(7234, 17, 9) + c0292.f1511, C0128.m3240(7251, 4, 67));
                    m3779(c0292.f1511);
                    this.f857.m4543(c0292.f1515);
                    this.f862.m4543(c0292.f1507);
                    m3771(c0292.f1504);
                    return;
                }
                throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(7100, 60, 29));
            }
            throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(6395, 24, 52));
        }
        throw new C0414(0, C0128.m3240(6357, 38, 35) + ((int) sM4483));
    }

    public void m3754(int i) {
        this.f881 = i;
    }

    public void m3764(int i) {
        if (this.f861 && i != this.f860) {
            this.f856.m4541();
        }
        this.f860 = i;
    }

    public static void m3712(int i, C0387 c0387) {
        if (i == 3 || i == 9) {
            i = 8;
        } else if (i == 23) {
            i = 13;
        }
        m3727(i, false, c0387);
    }

    public static void m3715(int i, C0387 c0387) {
        C0530 c0530 = new C0530();
        C0387 c0388 = new C0387();
        m3724(i, 0, c0388);
        c0530.m5400(c0388.m4554());
        m3730(c0387, 4, 162, c0388);
        c0530.m5400(c0388.m4554());
        c0530.m5370();
        c0387.m4543(c0530.m5376());
    }

    public void m3776(String str) {
        if (this.f861 && !str.equals(this.f877.f1242.m4571())) {
            this.f856.m4541();
        }
        this.f877.f1242.m4531(str);
    }

    public static void m3713(C0387 c0387, C0387 c0388, int i, int i2, C0387 c0389) {
        C0387 c03810 = new C0387();
        C0387 c03811 = new C0387();
        C0387 c03812 = new C0387();
        C0387 c03813 = new C0387();
        m3723(i, (byte) -86, c0388, i2, c03810);
        m3723(i, (byte) 85, c0388, i2, c03811);
        c03812.m4568(C0308.m4227(16));
        c03812.m4569(c0387.m4554(), c0387.m4533());
        m3736(c03812, c03810, c03813, 5, true, c0389);
        C0387 c03814 = new C0387();
        m3729(C0128.m3240(2222, 8, 121), c03811, c03812, c03814);
        c03814.m4530(12);
        c0389.m4569(c03814.m4554(), c03814.m4533());
    }

    public final void m3771(int i) {
        this.f879 = i;
        if (this.f877.f1242.m4533() > 0) {
            this.f882.m4567(this.f877.f1240);
        }
    }

    public void m3757(String str) {
        if (this.f861 && !str.equals(this.f854.m4571())) {
            this.f856.m4541();
        }
        this.f854.m4531(str);
    }

    public final void m3770(C0387 c0387) {
        int i;
        C0387 c0388 = new C0387();
        new Vector();
        new ByteArrayOutputStream();
        C0530 c0530 = new C0530(c0387.m4554());
        char cM4546 = c0387.m4546(0);
        if (cM4546 == 'k' && this.f866 == 1) {
            m3782(1, C0128.m3240(1088, 10, 9), c0387);
        } else {
            if (cM4546 != 'm' || ((i = this.f866) != 3 && i != 6)) {
                if (cM4546 == '~') {
                    C0387 c0389 = new C0387();
                    c0389.m4563(C0128.m3240(1109, 20, 81));
                    c0389.m4569(c0387.m4554(), c0387.m4533());
                    m3782(1, C0128.m3240(1129, 9, 19), c0387);
                    C0530 c0530M5390 = new C0530(c0387.m4554()).m5390();
                    c0530M5390.m5381();
                    c0530M5390.m5390();
                    c0530M5390.m5390();
                    c0530M5390.m5390();
                    byte b = (byte) c0530M5390.f3084;
                    if ((b & 255) == 162) {
                        c0530M5390.m5390();
                        b = (byte) c0530M5390.f3084;
                    }
                    if ((b & 255) == 163) {
                        c0530M5390.m5390();
                        int i2 = c0530M5390.f3084;
                    }
                    c0530M5390.m5390();
                    int i3 = c0530M5390.f3084;
                    C0530 c0530M5391 = c0530M5390.m5390();
                    byte b2 = (byte) c0530M5390.f3084;
                    int iM5389 = c0530M5391.m5389();
                    mo3781(1, C0128.m3240(1451, 7, 76) + m3714(iM5389) + C0128.m3240(1458, 3, 63) + m3720(iM5389), C0128.m3240(1461, 4, 106));
                    if (iM5389 == 25) {
                        byte b3 = b2;
                        for (int i4 = 0; i4 < 6; i4++) {
                            if ((b3 & 255) == ((i4 + 6) | SyslogConstants.LOG_LOCAL4)) {
                                try {
                                    c0530M5391 = c0530M5390.m5390();
                                    b3 = (byte) c0530M5390.f3084;
                                } catch (Exception e) {
                                    throw new C0414(e);
                                }
                            }
                            if ((b3 & 255) == 172) {
                                break;
                            }
                        }
                        if ((b3 & 255) == 172) {
                            C0387 c03810 = new C0387();
                            C0530 c0530M5392 = c0530M5391.m5390();
                            c0530M5392.m5366();
                            for (int i5 = 0; i5 < c0530M5392.m5382(); i5++) {
                                m3787(c0530M5392.m5365(i5), c03810, false);
                            }
                        }
                        if (this.f879 == -1) {
                            m3771(23);
                        }
                        this.f866 = 5;
                        return;
                    }
                    C0387 c03811 = new C0387();
                    c03811.m4563(C0128.m3240(1465, 41, 68));
                    c03811.m4563("0x" + C0259.m3862(iM5389));
                    c03811.m4563(" (");
                    c03811.m4563(m3714(iM5389));
                    c03811.m4563(C0128.m3240(1506, 3, 95));
                    c03811.m4563(m3720(iM5389));
                    c03811.m4563(".");
                    throw new C0414(952, c03811.m4571());
                }
                m3782(1, C0128.m3240(1138, 14, 88), c0387);
                throw new C0414(1, C0128.m3240(1152, 14, 115));
            }
            m3782(1, C0128.m3240(1098, 11, 78), c0387);
        }
        C0530 c0530M5393 = c0530.m5390();
        c0530M5393.m5381();
        c0530M5393.m5390().m5389();
        c0530M5393.m5390().m5389();
        C0530 c0530M5394 = c0530M5393.m5390();
        if ((((byte) c0530M5393.f3084) & 255) == 162) {
            m3787(c0530M5394, c0388, true);
            c0530M5393.m5390();
        }
        c0530M5393.m5390();
        this.f857.m4543(c0530M5393.m5390().f3099);
        if (cM4546 == 'm') {
            this.f865 = -1;
            C0530 c0531 = new C0530(this.f857.m4554());
            c0531.m5378();
            C0530 c0530M5365 = c0531.m5365(0);
            if (c0530M5365.m5382() >= 3) {
                C0530 c0530M5366 = c0530M5365.m5365(2).m5365(0);
                if (c0530M5366.m5382() == 2) {
                    C0530 c0530M5367 = c0530M5366.m5365(1).m5365(0);
                    if (c0530M5367.m5382() == 2 && C0259.m3853(c0530M5367.m5365(0).m5373()).equalsIgnoreCase(f851)) {
                        String strM3853 = C0259.m3853(c0530M5367.m5365(1).m5373());
                        if (strM3853.equalsIgnoreCase(this.f876.m4571())) {
                            this.f871.clear();
                        } else if (this.f871.size() <= 0 || !C0259.m3872(((C0387) this.f871.lastElement()).m4571(), strM3853)) {
                            int i6 = 0;
                            while (true) {
                                if (i6 < this.f868.m3672()) {
                                    if (strM3853.equalsIgnoreCase(this.f868.m3675(i6))) {
                                        C0387 c03812 = new C0387();
                                        c03812.m4531(m3745());
                                        this.f871.add(c03812);
                                        this.f865 = i6;
                                        break;
                                    }
                                    i6++;
                                } else {
                                    throw new C0414(0, C0128.m3240(1287, 15, 98) + strM3853);
                                }
                            }
                        } else {
                            Vector vector = this.f871;
                            vector.removeElementAt(vector.size() - 1);
                        }
                    }
                }
            }
        }
        mo3781(1, C0128.m3240(1166, 11, 23) + (cM4546 == 'k' ? C0128.m3240(1177, 23, 119) : C0128.m3240(1200, 24, 68)), C0128.m3240(1224, 4, 47));
        C0530 c0530M5395 = c0530M5393.m5390();
        C0387 c03813 = new C0387();
        m3786(c0530M5395, this.f887, c0388, this.f866 == 1 ? 3 : 8, c03813);
        mo3781(1, C0128.m3240(1228, 8, 79) + (cM4546 == 'k' ? C0128.m3240(1236, 23, 65) : C0128.m3240(1259, 24, 49)), C0128.m3240(1283, 4, 42));
        C0530 c0530M5396 = new C0530(c03813.m4554()).m5390();
        c0530M5396.m5381();
        C0530 c0530M5397 = c0530M5396.m5390();
        c0530M5397.m5381();
        int iM53810 = c0530M5397.m5390().m5389();
        C0530 c0530M5398 = c0530M5397.m5390();
        this.f862.m4541();
        m3739(c0530M5398, this.f862);
        m3771(iM53810);
        mo3781(2, C0128.m3240(1427, 17, 78) + m3719(iM53810).toUpperCase() + " (" + iM53810 + ")", C0128.m3240(1444, 7, 87));
    }

    public static int m3711(C0387 c0387) {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(C0128.m3240(6340, 14, 81));
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(C0128.m3240(6354, 3, 101)));
        c0387.m4531(simpleDateFormat.format(calendar.getTime()) + "Z");
        return calendar.get(14) * 1000;
    }

    public static String m3720(int i) {
        switch (i) {
            case 1:
                return C0128.m3240(2439, 42, 2);
            case 2:
                return C0128.m3240(2481, 42, 105);
            case 3:
                return C0128.m3240(2523, 47, 79);
            case 4:
                return C0128.m3240(2570, 40, 29);
            case 5:
                return C0128.m3240(2610, 40, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
            case 6:
                return C0128.m3240(2650, 37, 125);
            case 7:
                return C0128.m3240(2687, 37, 18);
            case 8:
                return C0128.m3240(2724, 42, 53);
            case 9:
                return C0128.m3240(2766, 48, 20);
            case 10:
                return C0128.m3240(2814, 40, 1);
            case 11:
                return C0128.m3240(2854, 43, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
            case 12:
                return C0128.m3240(2897, 43, 17);
            case 13:
                return C0128.m3240(2940, 39, 79);
            case 14:
                return C0128.m3240(2979, 38, 69);
            case 15:
                return C0128.m3240(3017, 36, 73);
            case 16:
                return C0128.m3240(3053, 60, 111);
            case 17:
                return C0128.m3240(3113, 37, 18);
            case 18:
                return C0128.m3240(3150, 38, 49);
            case 19:
                return C0128.m3240(3188, 40, 15);
            case 20:
                return C0128.m3240(3228, 20, 9);
            case 21:
                return C0128.m3240(3248, 36, 56);
            case 22:
                return C0128.m3240(3284, 36, 57);
            case 23:
                return C0128.m3240(3320, 45, 28);
            case 24:
                return C0128.m3240(3365, 42, 67);
            case 25:
                return C0128.m3240(3407, 37, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
            case 26:
                return C0128.m3240(3444, 44, 79);
            case 27:
                return C0128.m3240(3488, 26, 10);
            case 28:
                return C0128.m3240(3514, 25, 127);
            case 29:
                return C0128.m3240(3539, 18, 78);
            case 30:
            case 43:
            case 53:
            case 54:
            case 55:
            case 56:
            case CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA:
            case 58:
            case 59:
            default:
                return C0128.m3240(4862, 7, 49);
            case 31:
                return C0128.m3240(3557, 41, 96);
            case 32:
                return C0128.m3240(3598, 22, 15);
            case 33:
                return C0128.m3240(3620, 27, 96);
            case 34:
                return C0128.m3240(3647, 23, 113);
            case 35:
                return C0128.m3240(3670, 24, 66);
            case 36:
                return C0128.m3240(3694, 41, 112);
            case 37:
                return C0128.m3240(3735, 27, 121);
            case 38:
                return C0128.m3240(3762, 75, 118);
            case 39:
                return C0128.m3240(3837, 43, 59);
            case 40:
                return C0128.m3240(3880, 27, RNMBXStyleValue.InterpolationModeIdentity);
            case 41:
                return C0128.m3240(3907, 49, 121);
            case 42:
                return C0128.m3240(3956, 41, 87);
            case 44:
                return C0128.m3240(3997, 41, 22);
            case 45:
                return C0128.m3240(4038, 25, 91);
            case 46:
                return C0128.m3240(4063, 28, 82);
            case 47:
                return C0128.m3240(4091, 27, 43);
            case 48:
                return C0128.m3240(4118, 42, 95);
            case 49:
                return C0128.m3240(4160, 36, 71);
            case 50:
                return C0128.m3240(4196, 71, 77);
            case 51:
                return C0128.m3240(4267, 27, 85);
            case 52:
                return C0128.m3240(4294, 13, 93);
            case 60:
                return C0128.m3240(4307, 53, 2);
            case LockFreeTaskQueueCore.CLOSED_SHIFT:
                return C0128.m3240(4360, 41, 6);
            case Elf64.Ehdr.E_SHSTRNDX:
                return C0128.m3240(4401, 45, 56);
            case HtmlCompat.FROM_HTML_MODE_COMPACT:
                return C0128.m3240(4446, 52, 82);
            case 64:
                return C0128.m3240(4498, 24, SyslogConstants.LOG_CLOCK);
            case 65:
                return C0128.m3240(4522, 35, 92);
            case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                return C0128.m3240(4557, 22, 106);
            case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                return C0128.m3240(4579, 33, 52);
            case BuildConfig.VERSION_CODE:
                return C0128.m3240(4612, 29, 68);
            case UCrop.REQUEST_CROP:
                return C0128.m3240(4641, 38, 124);
            case CoreConstants.OOS_RESET_FREQUENCY:
                return C0128.m3240(4679, 31, 73);
            case 71:
                return C0128.m3240(4710, 27, 64);
            case SyslogConstants.LOG_CRON:
                return C0128.m3240(4737, 30, 73);
            case 73:
                return C0128.m3240(4767, 25, 119);
            case 74:
                return C0128.m3240(4792, 29, 9);
            case 75:
                return C0128.m3240(4821, 22, 22);
            case Base64.mimeLineLength:
                return C0128.m3240(4843, 19, 110);
        }
    }

    public final void m3783(int i, C0387 c0387, boolean z) {
        C0530 c0530 = new C0530();
        C0387 c0388 = new C0387();
        c0387.m4541();
        m3724(5, 161, c0387);
        c0530.m5400(c0387.m4554());
        m3724(i, 162, c0387);
        c0530.m5400(c0387.m4554());
        C0530 c0531 = new C0530();
        C0530 c0532 = new C0530();
        C0387 c0389 = new C0387();
        int i2 = this.f891;
        if (i == 10) {
            i2 &= -671088652;
        }
        mo3781(2, C0128.m3240(1039, 13, 72) + i2, C0128.m3240(FieldBehaviorProto.FIELD_BEHAVIOR_FIELD_NUMBER, 7, 89));
        c0388.m4541();
        c0388.m4559(1, (byte) 0);
        m3727(i2, true, c0389);
        c0388.m4564(c0389.m4571(), c0389.m4533());
        m3730(c0388, 3, SyslogConstants.LOG_LOCAL4, c0388);
        c0531.m5400(c0388.m4554());
        if (i == 10) {
            m3732(this.f873, c0388, 1);
            m3730(c0388, 0, 161, c0388);
            c0531.m5400(c0388.m4554());
        }
        m3730(this.f882, 27, 162, c0388);
        c0531.m5400(c0388.m4554());
        C0387 c03810 = new C0387();
        if (i == 10) {
            c03810.m4563(f851);
            c03810.m4563("@");
            c03810.m4568(this.f882.m4554());
            m3732(c03810, c0388, 2);
        } else if (i == 12) {
            C0387 c03811 = new C0387();
            if (m3773().length() == 0) {
                c03811.m4537(this.f864.m4554(), this.f864.m4533());
            } else if (this.f866 == 6) {
                c03811.m4531(f851 + "@" + (this.f871.size() > 0 ? (C0387) this.f871.lastElement() : this.f876).m4571());
            } else {
                c03811.m4531(this.f864.m4571());
            }
            m3732(c03811, c0388, 0);
        }
        m3730(c0388, 0, 163, c0388);
        c0531.m5400(c0388.m4554());
        c0388.m4531(C0128.m3240(1059, 15, 95));
        m3730(c0388, 24, 165, c0388);
        c0531.m5400(c0388.m4554());
        C0387 c03812 = new C0387();
        c03812.m4568(C0308.m4227(4));
        c03812.m4548(0, (byte) (c03812.m4546(0) & '?'));
        m3730(c03812, 2, 167, c0388);
        c0531.m5400(c0388.m4554());
        mo3781(2, C0128.m3240(1074, 7, 64) + m3744(), C0128.m3240(1081, 7, 7));
        for (int i3 = 0; i3 < this.f872.m4533(); i3++) {
            c0532.m5394(this.f872.m4546(i3));
        }
        c0532.m5370();
        c0388.m4543(c0532.m5376());
        m3730(c0388, 0, SyslogConstants.LOG_LOCAL5, c0388);
        c0531.m5400(c0388.m4554());
        c0531.m5370();
        c0388.m4543(c0531.m5376());
        if ((i == 10 && (!z || this.f858)) || i == 12) {
            C0530 c0533 = new C0530();
            c0533.m5393();
            if (i == 10) {
                if (this.f879 > 0) {
                    c0533.m5400(m3789(2, c0388));
                }
                if (this.f858) {
                    c0533.m5400(m3789(128, c0388));
                }
            } else if (i == 12) {
                c0533.m5400(m3789(1, c0388));
            }
            c0533.m5363();
            c0387.m4543(c0533.m5376());
            m3730(c0387, 0, 163, c0387);
            c0530.m5400(c0387.m4554());
        }
        m3730(c0388, 0, 164, c0387);
        c0530.m5400(c0387.m4554());
        c0530.m5370();
        c0387.m4543(c0530.m5376());
        m3730(c0387, 0, i | 96, c0387);
    }

    public final byte[] m3789(int i, C0387 c0387) {
        C0530 c0530 = new C0530();
        c0530.m5393();
        c0530.m5383(161);
        c0530.m5395(i, 2);
        c0530.m5362();
        c0530.m5383(162);
        c0530.m5383(4);
        if (i == 1) {
            C0387 c0388 = new C0387();
            m3785(c0388, c0387, true);
            c0530.m5400(c0388.m4554());
        } else if (i == 2) {
            C0387 c0389 = new C0387();
            C0387 c03810 = new C0387();
            m3784(c03810);
            int i2 = this.f879;
            C0387 c03811 = this.f873;
            C0387 c03812 = this.f882;
            C0387 c03813 = this.f887;
            C0387 c03814 = this.f877.f1243;
            C0387 c03815 = new C0387();
            C0387 c03816 = new C0387();
            C0387 c03817 = new C0387();
            C0387 c03818 = new C0387();
            m3711(c03815);
            C0530 c0531 = new C0530();
            m3730(c03815, 24, SyslogConstants.LOG_LOCAL4, c03816);
            c0531.m5400(c03816.m4554());
            c0531.m5370();
            c03816.m4543(c0531.m5376());
            if (c03813.m4533() == 0) {
                c03813.m4569(c03812.m4554(), c03812.m4533());
                c03813.m4569(c03811.m4554(), c03811.m4533());
            }
            if (c03814.m4533() > 0) {
                c03817.m4549(c03814.m4571(), c03814.m4533());
            } else {
                m3716(i2, c03810, c03813, c03818, c03817);
            }
            m3725(i2, c03816, c03817, 1, c0389);
            m3715(this.f879, c0389);
            c0530.m5400(c0389.m4554());
        } else if (i == 128) {
            c0530.m5393();
            c0530.m5383(SyslogConstants.LOG_LOCAL4);
            try {
                C0530.m5358(c0530.f3095, 1, 1);
                c0530.f3095.write(255);
                c0530.m5362();
                c0530.m5363();
            } catch (IOException e) {
                throw new C0414(e);
            }
        }
        c0530.m5362();
        c0530.m5362();
        c0530.m5363();
        return c0530.m5376();
    }

    public final void m3785(C0387 c0387, C0387 c0388, boolean z) {
        C0530 c0530 = new C0530();
        m3724(5, 0, c0387);
        c0530.m5400(c0387.m4554());
        m3724(14, 161, c0387);
        c0530.m5400(c0387.m4554());
        c0387.m4541();
        c0387.m4559(5, (byte) 0);
        if (!z) {
            c0387.m4548(1, (byte) 32);
        }
        m3730(c0387, 3, 162, c0387);
        c0530.m5400(c0387.m4554());
        m3730(this.f857, 0, 163, c0387);
        c0530.m5400(c0387.m4554());
        C0387 c0389 = new C0387();
        C0530 c0531 = new C0530();
        C0530 c0532 = new C0530();
        m3724(5, 0, c0389);
        c0531.m5400(c0389.m4554());
        m3730(this.f892.m4533() > 0 ? this.f892 : this.f882, 27, 161, c0389);
        c0531.m5400(c0389.m4554());
        m3732(this.f873, c0389, 1);
        m3730(c0389, 0, 162, c0389);
        c0531.m5400(c0389.m4554());
        if (z) {
            m3726(this.f879, this.f862, c0388, (C0387) null, c0389);
            c0531.m5400(c0389.m4554());
        } else if (this.f885.m4533() > 0) {
            m3726(0, (C0387) null, (C0387) null, this.f885, c0389);
            c0531.m5400(c0389.m4554());
        }
        C0387 c03810 = new C0387();
        m3724(m3711(c03810), 4, c0389);
        c0531.m5400(c0389.m4554());
        m3730(c03810, 24, 165, c0389);
        c0531.m5400(c0389.m4554());
        if (!z) {
            m3724(this.f879, 0, c0389);
            c0532.m5400(c0389.m4554());
            int i = this.f879;
            C0387 c03811 = this.f888;
            c03811.m4541();
            if (i == 3) {
                c03811.m4568(C0308.m4227(8));
            } else if (i == 23 || i == 17) {
                c03811.m4568(C0308.m4227(16));
            } else if (i == 18) {
                c03811.m4568(C0308.m4227(32));
            } else {
                throw new C0414(954, C0128.m3240(2082, 28, 23));
            }
            m3730(c03811, 4, 161, c0389);
            c0532.m5400(c0389.m4554());
            c0532.m5370();
            c0389.m4543(c0532.m5376());
            m3730(c0389, 0, 166, c0389);
            c0531.m5400(c0389.m4554());
            C0387 c03812 = new C0387();
            c03812.m4541();
            c03812.m4568(C0308.m4227(4));
            c03812.m4548(0, (byte) (c03812.m4546(0) & Ascii.MAX));
            this.f870 = C0259.m3866(c03812.m4554(), 0, c03812.m4533(), true);
            m3730(c03812, 0, 2, c0389);
            m3730(c0389, 0, 167, c0389);
            c0531.m5400(c0389.m4554());
        }
        c0531.m5370();
        c0389.m4543(c0531.m5376());
        m3730(c0389, 0, 98, c0389);
        m3725(this.f879, c0389, this.f862, z ? 7 : 11, c0387);
        m3715(this.f879, c0387);
        m3730(c0387, 0, 164, c0387);
        c0530.m5400(c0387.m4554());
        c0530.m5370();
        c0387.m4543(c0530.m5376());
        m3730(c0387, 0, 110, c0387);
    }

    public static void m3716(int i, C0387 c0387, C0387 c0388, C0387 c0389, C0387 c03810) {
        int i2;
        if (i != 3) {
            if (i == 23) {
                m3728(C0128.m3240(2141, 3, 43), c0387, c03810);
                return;
            } else if (i == 17) {
                m3735(c0387, c0388, c0389, 128, c03810);
                return;
            } else {
                if (i == 18) {
                    m3735(c0387, c0388, c0389, 256, c03810);
                    return;
                }
                throw new C0414(954, C0128.m3240(1998, 28, 49));
            }
        }
        C0387 c03811 = new C0387();
        C0387 c03812 = new C0387();
        C0387 c03813 = new C0387();
        c03810.m4541();
        c03811.m4569(c0387.m4554(), c0387.m4533());
        c03811.m4569(c0388.m4554(), c0388.m4533());
        byte[] bArrM4554 = c03811.m4554();
        int iM4533 = c03811.m4533();
        c03812.m4541();
        int i3 = iM4533 % 8;
        byte b = 0;
        if (i3 == 0) {
            c03812.m4568(bArrM4554);
        } else {
            c03812.m4568(bArrM4554);
            c03812.m4559(8 - i3, (byte) 0);
        }
        byte[] bArrM4555 = c03812.m4554();
        int iM4534 = c03812.m4533();
        C0387 c03814 = new C0387();
        C0387 c03815 = new C0387();
        ?? c03816 = new C0387();
        int i4 = iM4534 / 8;
        c03814.m4559(8, (byte) 0);
        int i5 = 0;
        while (i5 < i4) {
            c03815.m4559(8, b);
            for (int i6 = b; i6 < 8; i6++) {
                c03815.m4548(i6, bArrM4555[(i5 * 8) + i6]);
            }
            if (i5 % 2 == 1) {
                c03816.m4559(8, b);
                int i7 = b;
                while (i7 < 8) {
                    int i8 = b;
                    ?? r15 = i8;
                    while (true) {
                        if (i8 >= 4) {
                            break;
                        }
                        byte b2 = (((byte) ((c03815.m4546(i7) & ((byte) ((1 << (7 - i8)) & 255))) >>> (7 - (i8 * 2)))) | r15) == true ? (byte) 1 : (byte) 0;
                        i8++;
                        r15 = b2;
                    }
                    for (i2 = 4; i2 < 8; i2++) {
                        r15 = (((byte) ((c03815.m4546(i7) & ((byte) ((1 << (7 - i2)) & 255))) << ((i2 * 2) + (-7)))) | r15) == true ? (byte) 1 : (byte) 0;
                    }
                    c03816.m4548(7 - i7, r15);
                    i7++;
                    b = 0;
                }
                for (int i9 = 0; i9 < 8; i9++) {
                    c03816.m4548(i9, (byte) (((c03816.m4546(i9) & 255) >>> 1) & 255));
                }
                for (int i10 = 0; i10 < 8; i10++) {
                    c03815.m4548(i10, (byte) c03816.m4546(i10));
                }
            }
            for (int i11 = 0; i11 < 8; i11++) {
                c03815.m4548(i11, (byte) (((c03815.m4546(i11) & 255) << 1) & 255));
            }
            for (int i12 = 0; i12 < 8; i12++) {
                c03814.m4548(i12, (byte) (c03814.m4546(i12) ^ c03815.m4546(i12)));
            }
            i5++;
            b = 0;
        }
        c03813.m4537(c03814.m4554(), c03814.m4533());
        m3718(c03813.m4554(), c03813.m4533(), c03810);
        m3740(c03810.m4554(), c03810.m4533(), c03813);
        m3737(c03812, c03813, c03813, true, c03811);
        c03810.m4543(c03811.m4545(c03811.m4533() - 8));
        m3718(c03810.m4554(), c03810.m4533(), c03811);
        m3740(c03811.m4554(), c03811.m4533(), c03810);
    }

    public final void m3784(C0387 c0387) {
        c0387.m4541();
        if (this.f879 == 23) {
            String strM4571 = this.f853.m4571();
            if (C0259.m3856(strM4571)) {
                return;
            }
            for (int i = 0; i < strM4571.length(); i++) {
                int iCharAt = strM4571.charAt(i) & CharCompanionObject.MAX_VALUE;
                c0387.m4556((byte) iCharAt);
                c0387.m4556((byte) (iCharAt >> 8));
            }
            return;
        }
        c0387.m4537(this.f853.m4554(), this.f853.m4533());
    }

    public static void m3732(C0387 c0387, C0387 c0388, int i) {
        C0387 c0389 = new C0387();
        C0387 c03810 = new C0387();
        C0530 c0530 = new C0530();
        C0530 c0531 = new C0530();
        m3724(i, 0, c0388);
        c0530.m5400(c0388.m4554());
        c03810.m4567(c0387);
        int iM4557 = c03810.m4557('/');
        if (iM4557 == -1) {
            iM4557 = c03810.m4557('@');
        }
        if (iM4557 != -1) {
            C0387 c03811 = new C0387();
            c03811.m4568(c03810.m4545(iM4557 + 1));
            c03810.m4561(0, iM4557);
            c0531.m5379(c03810.m4554(), 27);
            c0531.m5379(c03811.m4554(), 27);
        } else {
            c0531.m5379(c03810.m4554(), 27);
        }
        c0531.m5370();
        c0389.m4568(c0531.m5376());
        m3730(c0389, 0, 161, c0388);
        c0530.m5400(c0388.m4554());
        c0530.m5370();
        c0388.m4543(c0530.m5376());
    }

    public static void m3718(byte[] bArr, int i, C0387 c0387) {
        c0387.m4541();
        c0387.m4560(i, C0387.m4526((byte) 0));
        int i2 = i * 8;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            if (i5 % 8 == 0) {
                if (i4 % 2 == 0) {
                    int i6 = i3 / 8;
                    c0387.m4548(i6, m3721((byte) c0387.m4546(i6), i3 % 8, true));
                }
                i4 = 0;
            } else {
                int i7 = i3 / 8;
                int i8 = i3 % 8;
                if (m3742(bArr[i7], i8)) {
                    c0387.m4548(i7, m3721((byte) c0387.m4546(i7), i8, true));
                    i4++;
                }
            }
            i3 = i5;
        }
    }

    public static void m3717(C0387 c0387, C0387 c0388, int i, int i2, C0387 c0389) {
        C0387 c03810 = new C0387();
        C0387 c03811 = new C0387();
        C0387 c03812 = new C0387();
        C0387 c03813 = new C0387();
        C0387 c03814 = new C0387();
        m3723(i, (byte) -86, c0388, i2, c03810);
        m3723(i, (byte) 85, c0388, i2, c03811);
        c03813.m4569(c0387.m4554(), c0387.m4533() - 12);
        m3736(c03813, c03810, c03814, 5, false, c0389);
        c0387.m4561(c0387.m4533() - 12, c0387.m4533());
        m3729(C0128.m3240(2230, 8, 119), c03811, c0389, c03812);
        c03812.m4530(12);
        if (c03812.m4552(c0387.m4571())) {
            c0389.m4534(16);
            return;
        }
        throw new C0414(953, C0128.m3240(2238, 22, 88));
    }

    public static void m3726(int i, C0387 c0387, C0387 c0388, C0387 c0389, C0387 c03810) {
        C0530 c0530 = new C0530();
        C0387 c03811 = new C0387();
        c03810.m4541();
        int iM3722 = m3722(i, -1, c0387, c0388, c03811);
        if (c0389 != null && c0389.m4533() > 0) {
            c03811.m4543(C0259.m3899(8, C0259.m3902(c0389.m4571())));
            iM3722 = 32771;
        }
        if (c03811.m4533() > 0) {
            m3724(iM3722, 0, c03810);
            c0530.m5400(c03810.m4554());
            m3730(c03811, 4, 161, c03810);
            c0530.m5400(c03810.m4554());
            c0530.m5370();
            c03810.m4543(c0530.m5376());
            m3730(c03810, 0, 163, c03810);
        }
    }

    public static void m3731(C0387 c0387, C0387 c0388) {
        if (c0387.m4533() > 0) {
            C0530 c0530 = new C0530();
            C0387 c0389 = new C0387();
            C0387 c03810 = new C0387();
            C0387 c03811 = new C0387();
            c0389.m4543(new byte[]{42, -122, 72, -122, -9, Ascii.DC2, 1, 2, 2});
            m3730(c0389, 0, 6, c03810);
            c0530.m5400(c03810.m4554());
            c03810.m4541();
            c03810.m4559(2, (byte) 0);
            c03810.m4548(0, (byte) 1);
            c0530.m5400(c03810.m4554());
            c0530.m5400(c0387.m4554());
            c03810.m4543(c0530.m5376());
            m3730(c03810, 0, 96, c03810);
            c03811.m4537(c03810.m4554(), c03810.m4533());
            c0388.m4537(c03811.m4554(), c03811.m4533());
        }
    }

    public final void m3786(C0530 c0530, C0387 c0387, C0387 c0388, int i, C0387 c0389) {
        c0530.m5381();
        c0530.m5390().m5389();
        C0530 c0530M5390 = c0530.m5390();
        if ((((byte) c0530.f3084) & 255) == 161) {
            c0530M5390 = c0530.m5390();
        }
        C0387 c03810 = new C0387();
        C0387 c03811 = new C0387();
        c03810.m4541();
        c03810.m4543(c0530M5390.m5373());
        c03811.m4537(this.f862.m4554(), this.f862.m4533());
        if (i == 3) {
            C0387 c03812 = new C0387();
            m3784(c03812);
            if (this.f877.f1242.m4533() > 0) {
                c03811.m4549(this.f877.f1243.m4571(), this.f877.f1243.m4533());
            } else {
                if (c0387.m4533() == 0) {
                    c0387.m4569(this.f882.m4554(), this.f882.m4533());
                    c0387.m4569(this.f873.m4554(), this.f873.m4533());
                }
                m3716(this.f879, c03812, c0387, c0388, c03811);
            }
            mo3781(3, C0128.m3240(1376, 25, 21) + C0259.m3841(c03811.m4554()), C0128.m3240(1401, 4, 105));
        }
        mo3781(2, C0128.m3240(1405, 8, 35) + C0259.m3841(c03810.m4554()) + C0128.m3240(1413, 7, 79) + C0259.m3841(c03811.m4554()), C0128.m3240(1420, 7, 49));
        int i2 = this.f879;
        if (i2 == 3) {
            try {
                C0387 c03813 = new C0387();
                c03813.m4559(8, (byte) 0);
                m3737(c03810, c03811, c03813, false, c0389);
            } catch (Exception unused) {
            }
            C0387 c03814 = new C0387();
            c03814.m4564(c0389.m4538(8), 16);
            for (int i3 = 0; i3 < 16; i3++) {
                c0389.m4548(i3 + 8, (byte) 0);
            }
            C0387 c03815 = new C0387();
            m3728(C0128.m3240(2113, 3, 67), c0389, c03815);
            if (c03814.m4552(c03815.m4571())) {
                c0389.m4561(24, c0389.m4533());
                return;
            }
            throw new C0414(953, C0128.m3240(2116, 22, 127));
        }
        if (i2 != 23) {
            if (i2 == 17) {
                m3717(c03810, c03811, i, 128, c0389);
                return;
            } else {
                if (i2 == 18) {
                    m3717(c03810, c03811, i, 256, c0389);
                    return;
                }
                throw new C0414(954, C0128.m3240(2054, 28, 60));
            }
        }
        C0387 c03816 = new C0387();
        C0387 c03817 = new C0387();
        C0387 c03818 = new C0387();
        C0387 c03819 = new C0387();
        C0387 c03820 = new C0387();
        c0389.m4541();
        c03819.m4569(c03810.m4554(), 16);
        c03810.m4534(16);
        m3712(i, c03816);
        try {
            m3729(C0128.m3240(2165, 7, 121), c03811, c03816, c03817);
            m3729(C0128.m3240(2172, 7, 12), c03817, c03819, c03818);
            m3738(c03810, c03818, false, c0389);
            m3729(C0128.m3240(2179, 7, 93), c03817, c0389, c03820);
        } catch (Exception unused2) {
        }
        if (c03820.m4552(c03819.m4571())) {
            c0389.m4534(8);
            return;
        }
        throw new C0414(953, C0128.m3240(2186, 22, 124));
    }

    public final void m3787(C0530 c0530, C0387 c0387, boolean z) {
        if (z) {
            c0530.m5381();
        }
        c0530.m5381();
        C0530 c0530M5390 = c0530.m5390();
        int iM5389 = c0530M5390.m5389();
        c0530M5390.m5391();
        if (iM5389 == 3) {
            C0530 c0530M5391 = c0530.m5390();
            this.f887.m4541();
            m3739(c0530M5391, this.f887);
            return;
        }
        if (iM5389 == 12 || iM5389 == 2 || iM5389 == 11) {
            C0387 c0388 = new C0387();
            C0530 c0530M5392 = c0530.m5390();
            c0388.m4541();
            c0388.m4543(c0530M5392.m5373());
            if (c0388.m4533() == 0) {
                return;
            }
            C0530 c0531 = new C0530(c0388.m4554());
            c0531.m5381();
            c0531.m5381();
            c0530.m5391();
            int iM53810 = c0531.m5390().m5389();
            try {
                C0530 c0530M5393 = c0531.m5390();
                int i = ((byte) c0531.f3084) & 255;
                if (i == 161) {
                    this.f887.m4541();
                    m3739(c0530M5393, this.f887);
                    c0531.m5390();
                } else if (i == 162) {
                    c0387.m4541();
                    c0387.m4541();
                    c0387.m4543(c0530M5393.m5373());
                }
            } catch (Exception unused) {
            }
            if (iM53810 == 0 || !this.f877.m3817(iM53810, this.f882.m4571())) {
                return;
            }
            m3771(iM53810);
            return;
        }
        if (iM5389 == 19) {
            Vector vector = new Vector();
            C0387 c0389 = new C0387();
            C0530 c0530M5394 = c0530.m5390();
            c0389.m4541();
            c0389.m4543(c0530M5394.m5373());
            C0530 c0532 = new C0530(c0389.m4554());
            c0532.m5378();
            for (int i2 = 0; i2 < c0532.m5382(); i2++) {
                C0284 c0284 = new C0284();
                for (int i3 = 0; i3 < c0532.m5365(i2).m5382(); i3++) {
                    int i4 = ((byte) c0532.m5365(i2).m5365(i3).f3084) & 255;
                    if (i4 == 160) {
                        c0284.f1483 = c0532.m5365(i2).m5365(i3).m5365(0).m5389();
                    } else if (i4 == 161) {
                        c0284.f1482 = c0532.m5365(i2).m5365(i3).m5365(0).m5373();
                    } else if (i4 == 162) {
                        c0532.m5365(i2).m5365(i3).m5365(0).m5373();
                    }
                }
                vector.add(c0284);
            }
            if (this.f877.f1242.m4533() > 0) {
                for (int i5 = 0; i5 < vector.size(); i5++) {
                    C0284 c0285 = (C0284) vector.get(i5);
                    int i6 = c0285.f1483;
                    if (this.f877.m3817(i6, this.f882.m4571())) {
                        m3771(i6);
                        mo3781(2, C0128.m3240(1509, 50, 18) + m3719(iM5389).toUpperCase() + " (" + i6 + ").", C0128.m3240(1559, 7, 19));
                        byte[] bArr = c0285.f1482;
                        if (bArr != null && bArr.length > 0) {
                            this.f887.m4543(bArr);
                            mo3781(2, C0128.m3240(1566, 17, 117) + this.f887 + "\".", C0128.m3240(1583, 7, 57));
                            break;
                        } else {
                            break;
                            break;
                        }
                    }
                }
                if (this.f879 != -1) {
                    return;
                }
                mo3781(1, C0128.m3240(1590, 36, 43), C0128.m3240(1626, 4, 63));
                throw new C0414(0, C0128.m3240(1630, 46, 11));
            }
            if (vector.size() > 0) {
                C0284 c0286 = (C0284) vector.get(0);
                m3771(c0286.f1483);
                mo3781(2, C0128.m3240(1676, 27, 67) + m3719(c0286.f1483).toUpperCase() + " (" + c0286.f1483 + ").", C0128.m3240(1703, 7, 43));
                byte[] bArr2 = c0286.f1482;
                if (bArr2 == null || bArr2.length <= 0) {
                    return;
                }
                this.f887.m4543(bArr2);
                mo3781(2, C0128.m3240(1710, 17, 114) + this.f887 + "\".", C0128.m3240(1727, 7, 42));
            }
        }
    }

    public static int m3722(int i, int i2, C0387 c0387, C0387 c0388, C0387 c0389) {
        c0389.m4541();
        if (i == 3) {
            int[] iArr = {0, 1996959894, -301047508, -1727442502, 124634137, 1886057615, -379345611, -1637575261, 249268274, 2044508324, -522852066, -1747789432, 162941995, 2125561021, -407360249, -1866523247, 498536548, 1789927666, -205950648, -2067906082, 450548861, 1843258603, -187386543, -2083289657, 325883990, 1684777152, -43845254, -1973040660, 335633487, 1661365465, -99664541, -1928851979, 997073096, 1281953886, -715111964, -1570279054, 1006888145, 1258607687, -770865667, -1526024853, 901097722, 1119000684, -608450090, -1396901568, 853044451, 1172266101, -589951537, -1412350631, 651767980, 1373503546, -925412992, -1076862698, 565507253, 1454621731, -809855591, -1195530993, 671266974, 1594198024, -972236366, -1324619484, 795835527, 1483230225, -1050600021, -1234817731, 1994146192, 31158534, -1731059524, -271249366, 1907459465, 112637215, -1614814043, -390540237, 2013776290, 251722036, -1777751922, -519137256, 2137656763, 141376813, -1855689577, -429695999, 1802195444, 476864866, -2056965928, -228458418, 1812370925, 453092731, -2113342271, -183516073, 1706088902, 314042704, -1950435094, -54949764, 1658658271, 366619977, -1932296973, -69972891, 1303535960, 984961486, -1547960204, -725929758, 1256170817, 1037604311, -1529756563, -740887301, 1131014506, 879679996, -1385723834, -631195440, 1141124467, 855842277, -1442165665, -586318647, 1342533948, 654459306, -1106571248, -921952122, 1466479909, 544179635, -1184443383, -832445281, 1591671054, 702138776, -1328506846, -942167884, 1504918807, 783551873, -1212326853, -1061524307, -306674912, -1698712650, 62317068, 1957810842, -355121351, -1647151185, 81470997, 1943803523, -480048366, -1805370492, 225274430, 2053790376, -468791541, -1828061283, 167816743, 2097651377, -267414716, -2029476910, 503444072, 1762050814, -144550051, -2140837941, 426522225, 1852507879, -19653770, -1982649376, 282753626, 1742555852, -105259153, -1900089351, 397917763, 1622183637, -690576408, -1580100738, 953729732, 1340076626, -776247311, -1497606297, 1068828381, 1219638859, -670225446, -1358292148, 906185462, 1090812512, -547295293, -1469587627, 829329135, 1181335161, -882789492, -1134132454, 628085408, 1382605366, -871598187, -1156888829, 570562233, 1426400815, -977650754, -1296233688, 733239954, 1555261956, -1026031705, -1244606671, 752459403, 1541320221, -1687895376, -328994266, 1969922972, 40735498, -1677130071, -351390145, 1913087877, 83908371, -1782625662, -491226604, 2075208622, 213261112, -1831694693, -438977011, 2094854071, 198958881, -2032938284, -237706686, 1759359992, 534414190, -2118248755, -155638181, 1873836001, 414664567, -2012718362, -15766928, 1711684554, 285281116, -1889165569, -127750551, 1634467795, 376229701, -1609899400, -686959890, 1308918612, 956543938, -1486412191, -799009033, 1231636301, 1047427035, -1362007478, -640263460, 1088359270, 936918000, -1447252397, -558129467, 1202900863, 817233897, -1111625188, -893730166, 1404277552, 615818150, -1160759803, -841546093, 1423857449, 601450431, -1285129682, -1000256840, 1567103746, 711928724, -1274298825, -1022587231, 1510334235, 755167117};
            int i3 = 0;
            for (int i4 = 0; i4 < c0388.m4533(); i4++) {
                i3 = ((i3 >> 8) & ViewCompat.MEASURED_SIZE_MASK) ^ iArr[(c0388.m4546(i4) ^ i3) & 255];
            }
            m3727(i3, false, c0389);
            return 1;
        }
        if (i == 23) {
            m3728(C0128.m3240(2208, 3, 17), c0388, c0389);
            return 7;
        }
        if (i == 17) {
            if (i2 <= 0) {
                i2 = 6;
            }
            m3733(c0388, c0387, i2, 128, c0389);
            return 15;
        }
        if (i != 18) {
            return 0;
        }
        if (i2 <= 0) {
            i2 = 6;
        }
        m3733(c0388, c0387, i2, 256, c0389);
        return 16;
    }

    public static void m3725(int i, C0387 c0387, C0387 c0388, int i2, C0387 c0389) {
        if (i == 3) {
            C0387 c03810 = new C0387();
            c0389.m4541();
            c03810.m4568(C0308.m4227(8));
            c03810.m4559(16, (byte) 0);
            c03810.m4569(c0387.m4554(), c0387.m4533());
            int iM4533 = c03810.m4533() % 8;
            if (iM4533 == 0) {
                c03810.m4559(8, (byte) 0);
            } else {
                int i3 = 8 - iM4533;
                c03810.m4559(i3, (byte) i3);
            }
            C0387 c03811 = new C0387();
            m3728(C0128.m3240(2110, 3, 3), c03810, c03811);
            for (int i4 = 8; i4 < 24; i4++) {
                c03810.m4548(i4, (byte) c03811.m4546(i4 - 8));
            }
            C0387 c03812 = new C0387();
            c03812.m4559(8, (byte) 0);
            m3737(c03810, c0388, c03812, true, c0389);
            return;
        }
        if (i != 23) {
            if (i == 17) {
                m3713(c0387, c0388, i2, 128, c0389);
                return;
            } else {
                if (i == 18) {
                    m3713(c0387, c0388, i2, 256, c0389);
                    return;
                }
                throw new C0414(954, C0128.m3240(2026, 28, 65));
            }
        }
        C0387 c03813 = new C0387();
        C0387 c03814 = new C0387();
        C0387 c03815 = new C0387();
        C0387 c03816 = new C0387();
        C0387 c03817 = new C0387();
        C0387 c03818 = new C0387();
        c0389.m4541();
        c03813.m4568(C0308.m4227(8));
        c03813.m4569(c0387.m4554(), c0387.m4533());
        m3712(i2, c03814);
        try {
            m3729(C0128.m3240(2144, 7, 118), c0388, c03814, c03815);
            m3729(C0128.m3240(2151, 7, 28), c03815, c03813, c03817);
            m3729(C0128.m3240(2158, 7, 50), c03815, c03817, c03816);
            m3738(c03813, c03816, true, c03818);
        } catch (Exception unused) {
        }
        c0389.m4569(c03817.m4554(), c03817.m4533());
        c0389.m4569(c03818.m4554(), c03818.m4533());
    }

    public static void m3737(C0387 c0387, C0387 c0388, C0387 c0389, boolean z, C0387 c03810) {
        InterfaceC0126 interfaceC0126Mo3118;
        c03810.m4541();
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3240(2138, 3, 113));
            abstractC0313M4220.f1690 = 1;
            abstractC0313M4220.f1686 = 1;
            if (z) {
                interfaceC0126Mo3118 = abstractC0313M4220.mo3117(c0388.m4554(), c0389.m4554());
            } else {
                interfaceC0126Mo3118 = abstractC0313M4220.mo3118(c0388.m4554(), c0389.m4554());
            }
            c03810.m4543(interfaceC0126Mo3118.mo3122(c0387.m4554(), 0, c0387.m4533()));
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public static void m3740(byte[] bArr, int i, C0387 c0387) {
        c0387.m4541();
        if (C0135.m3262(bArr) || C0135.m3264(bArr)) {
            bArr[7] = (byte) (bArr[7] ^ 240);
        }
        c0387.m4569(bArr, i);
    }

    public static void m3738(C0387 c0387, C0387 c0388, boolean z, C0387 c0389) {
        InterfaceC0126 interfaceC0126Mo3118;
        c0389.m4541();
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3240(2211, 3, 55));
            try {
                if (z) {
                    interfaceC0126Mo3118 = abstractC0313M4220.mo3117(c0388.m4554(), C0320.f1706);
                } else {
                    interfaceC0126Mo3118 = abstractC0313M4220.mo3118(c0388.m4554(), C0320.f1706);
                }
                c0389.m4543(interfaceC0126Mo3118.mo3122(c0387.m4554(), 0, c0387.m4533()));
            } catch (Exception e) {
                throw new C0414(e);
            }
        } catch (C0537 e2) {
            throw new C0414(e2.getMessage());
        }
    }

    public static void m3735(C0387 c0387, C0387 c0388, C0387 c0389, int i, C0387 c03810) {
        C0387 c03811 = new C0387();
        try {
            c03811.m4543(C0308.m4228(c0389.m4533() > 0 ? ((c0389.m4546(0) & 255) << 24) + ((c0389.m4546(1) & 255) << 16) + ((c0389.m4546(2) & 255) << 8) + (c0389.m4546(3) & 255) : 4096, C0128.m3240(2294, 8, 33), c0387.m4554(), c0388.m4554(), i / 8));
            C0387 c03812 = new C0387();
            c03812.m4531(C0128.m3240(2214, 8, 20));
            m3734(c03811, c03812, i, c03810);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public static void m3733(C0387 c0387, C0387 c0388, int i, int i2, C0387 c0389) {
        C0387 c03810 = new C0387();
        m3723(i, (byte) -103, c0388, i2, c03810);
        m3729(C0128.m3240(2260, 8, 19), c03810, c0387, c0389);
        c0389.m4530(12);
    }

    public static void m3736(C0387 c0387, C0387 c0388, C0387 c0389, int i, boolean z, C0387 c03810) {
        InterfaceC0126 interfaceC0126Mo3118;
        c03810.m4541();
        if (c0389.m4533() == 0) {
            c0389.m4559(16, (byte) 0);
        }
        try {
            AbstractC0313 abstractC0313M4220 = C0308.m4220(C0128.m3240(2268, 3, 26));
            abstractC0313M4220.f1690 = i;
            abstractC0313M4220.f1686 = 1;
            if (z) {
                interfaceC0126Mo3118 = abstractC0313M4220.mo3117(c0388.m4554(), c0389.m4554());
            } else {
                interfaceC0126Mo3118 = abstractC0313M4220.mo3118(c0388.m4554(), c0389.m4554());
            }
            c03810.m4543(interfaceC0126Mo3118.mo3122(c0387.m4554(), 0, c0387.m4533()));
        } catch (Exception e) {
            throw new C0414(e);
        }
    }

    public static void m3723(int i, byte b, C0387 c0387, int i2, C0387 c0388) {
        C0387 c0389 = new C0387();
        c0388.m4541();
        c0389.m4541();
        m3727(i, true, c0389);
        c0389.f1991.append(C0387.m4526(b));
        m3734(c0387, c0389, i2, c0388);
    }

    public static void m3734(C0387 c0387, C0387 c0388, int i, C0387 c0389) {
        C0387 c03810;
        int i2;
        int i3;
        C0387 c03811 = new C0387();
        C0387 c03812 = new C0387();
        C0387 c03813 = new C0387();
        c0389.m4541();
        byte b = 0;
        if (16 != c0388.m4533()) {
            C0387 c03814 = new C0387();
            c03811.m4541();
            c03814.m4559(16, (byte) 0);
            int iM4533 = c0388.m4533();
            int i4 = iM4533 * 8;
            int i5 = iM4533 * 1024;
            if (128 < i4) {
                i3 = i4;
                i2 = 128;
            } else {
                i2 = i4;
                i3 = 128;
            }
            while (i2 != 0) {
                int i6 = i3 % i2;
                i3 = i2;
                i2 = i6;
            }
            int i7 = i5 / i3;
            C0387 c03815 = new C0387();
            c03815.m4559(i7 / 8, (byte) 0);
            C0387 c03816 = new C0387();
            int i8 = 0;
            while (i8 < i7 / i4) {
                int i9 = i8 * 13;
                int iM4534 = c0388.m4533();
                c03816.m4541();
                c03816.m4560(iM4534, C0387.m4526(b));
                int i10 = iM4534 * 8;
                int i11 = b;
                while (i11 < i10) {
                    int i12 = (i11 + i9) % i10;
                    int i13 = i12 / 8;
                    c03816.m4548(i13, m3721((byte) c03816.m4546(i13), i12 % 8, m3742((byte) c0388.m4546(i11 / 8), i11 % 8)));
                    i11++;
                    c03813 = c03813;
                }
                C0387 c03817 = c03813;
                for (int i14 = 0; i14 < c03816.m4533(); i14++) {
                    c03815.m4548((c03816.m4533() * i8) + i14, (byte) c03816.m4546(i14));
                }
                i8++;
                c03813 = c03817;
                b = 0;
            }
            c03810 = c03813;
            C0387 c03818 = new C0387();
            b = 0;
            c03818.m4559(16, (byte) 0);
            for (int i15 = 0; i15 < i7 / 128; i15++) {
                for (int i16 = 0; i16 < 16; i16++) {
                    c03818.m4548(i16, (byte) c03815.m4546(((i15 * 128) / 8) + i16));
                }
                m3741(c03814.m4554(), c03818.m4554(), c03814.m4533(), c03811);
                c03814.m4537(c03811.m4554(), c03811.m4533());
            }
        } else {
            c03810 = c03813;
        }
        int i17 = i / 8;
        int i18 = b;
        while (i18 < i17) {
            C0387 c03819 = c03810;
            m3736(c03811, c0387, c03819, 1, true, c03812);
            int iM4535 = c03812.m4533() <= i17 - c0389.m4533() ? c03812.m4533() : i17 - c0389.m4533();
            c0389.m4569(c03812.m4554(), iM4535);
            i18 += iM4535;
            c03811.m4537(c03812.m4554(), c03812.m4533());
            c03812.m4541();
            c03810 = c03819;
        }
    }

    public final void m3782(int i, String str, C0387 c0387) {
        C0387 c0388 = new C0387();
        c0388.m4563(str);
        if (this.f886 || this.f867 >= 3) {
            c0388.m4563("\r\n");
            c0388.m4551(c0387.m4554());
        }
        mo3762(i, c0388.m4571());
        mo3781(this.f867, (i == 0 ? C0128.m3240(2271, 5, 18) : C0128.m3240(2276, 9, 79)) + c0388.m4571(), this.f867 >= 3 ? C0128.m3240(2285, 5, 92) : C0128.m3240(2290, 4, 50));
    }

    public void mo3781(int i, String str, String str2) {
        InterfaceC0665 interfaceC0665;
        if (i <= this.f867 && (interfaceC0665 = this.f855) != null) {
            interfaceC0665.fireLog(i, str, str2);
        }
    }

    @Override
    public void mo3788(byte[] bArr, String str, int i) {
        int i2 = this.f866;
        if (i2 != 3 && i2 != 1) {
            if (i2 == 6) {
                try {
                    this.f875.m4569(bArr, bArr.length);
                    m3770(this.f875);
                    this.f875.m4541();
                } catch (C0414 e) {
                    m3769(e);
                }
                this.f866 = 7;
                return;
            }
            return;
        }
        try {
            this.f875.m4569(bArr, bArr.length);
            m3770(this.f875);
            this.f875.m4541();
            int i3 = this.f866;
            if (i3 != 5) {
                this.f866 = i3 == 1 ? 2 : 4;
            }
        } catch (C0414 e2) {
            m3769(e2);
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0665 interfaceC0665 = this.f855;
        if (interfaceC0665 != null) {
            interfaceC0665.m5895(i, str);
        }
    }

    public static void m3741(byte[] bArr, byte[] bArr2, int i, C0387 c0387) {
        int i2 = i * 8;
        C0387 c0388 = new C0387();
        c0387.m4541();
        c0388.m4560(i, C0387.m4526((byte) 0));
        int i3 = i2 - 1;
        int i4 = 0;
        while (true) {
            if (i3 <= -1) {
                break;
            }
            int i5 = i3 / 8;
            int i6 = i3 % 8;
            int i7 = (m3742(bArr[i5], i6) ? 1 : 0) + (m3742(bArr2[i5], i6) ? 1 : 0) + i4;
            if (i7 < 2) {
                c0388.m4548(i5, m3721((byte) c0388.m4546(i5), i6, i7 == 1));
                i4 = 0;
            } else {
                if (i7 != 2) {
                    c0388.m4548(i5, m3721((byte) c0388.m4546(i5), i6, true));
                }
                i4 = 1;
            }
            i3--;
        }
        if (i4 == 1) {
            C0387 c0389 = new C0387();
            int i8 = i2 / 8;
            c0389.m4559(i8, (byte) 0);
            c0389.m4548(i8 - 1, (byte) 1);
            m3741(c0388.m4554(), c0389.m4554(), c0388.m4533(), c0387);
            return;
        }
        c0387.m4537(c0388.m4554(), c0388.m4533());
    }

    public static void m3729(String str, C0387 c0387, C0387 c0388, C0387 c0389) {
        c0389.m4541();
        try {
            AbstractC0403 abstractC0403M4223 = C0308.m4223(str);
            abstractC0403M4223.mo4637(c0387.m4554());
            abstractC0403M4223.mo3122(c0388.m4554(), 0, c0388.m4533());
            c0389.m4537(abstractC0403M4223.f1702, abstractC0403M4223.f1703);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public static void m3728(String str, C0387 c0387, C0387 c0388) {
        c0388.m4541();
        try {
            AbstractC0317 abstractC0317M4217 = C0308.m4217(str);
            abstractC0317M4217.mo3122(c0387.m4554(), 0, c0387.m4533());
            c0388.m4537(abstractC0317M4217.f1702, abstractC0317M4217.f1703);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public static byte m3721(byte b, int i, boolean z) {
        int i2;
        if (z) {
            i2 = b | (1 << (8 - (i + 1)));
        } else {
            if (!m3742(b, i)) {
                return b;
            }
            i2 = b ^ (1 << (8 - (i + 1)));
        }
        return (byte) i2;
    }

    public static void m3727(int i, boolean z, C0387 c0387) {
        c0387.m4541();
        c0387.m4559(4, (byte) 0);
        for (int i2 = 0; i2 < 4; i2++) {
            c0387.m4548(z ? 3 - i2 : i2, (byte) (i >>> (i2 * 8)));
        }
    }

    public static void m3724(int i, int i2, C0387 c0387) {
        C0530 c0530 = new C0530();
        c0530.m5395(i, 2);
        c0530.f3091 = i2 | SyslogConstants.LOG_LOCAL4;
        c0387.m4543(c0530.m5376());
    }

    public static void m3739(C0530 c0530, C0387 c0387) {
        c0387.m4541();
        c0387.m4543(c0530.m5373());
    }

    public static void m3730(C0387 c0387, int i, int i2, C0387 c0388) {
        C0530 c0530 = new C0530();
        if (i == 0) {
            c0530.m5400(c0387.m4554());
        } else {
            c0530.m5379(c0387.m4554(), i);
        }
        c0530.f3091 = i2;
        c0388.m4543(c0530.m5376());
    }

    public final String m3780(C0382 c0382) {
        String strSubstring;
        c0382.m4506();
        int iM4506 = c0382.m4506();
        C0200 c0200 = new C0200();
        for (int i = 0; i <= iM4506; i++) {
            c0200.f715.addElement(C0259.m3892(c0382.m4484(c0382.m4506())));
        }
        if (c0200.m3672() != 0) {
            String strM3675 = c0200.m3675(0);
            if (strM3675 != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= strM3675.length()) {
                        strSubstring = null;
                        break;
                    }
                    if (strM3675.charAt(i2) == '@' && (i2 == 0 || strM3675.charAt(i2 - 1) != '\\')) {
                        int i3 = i2 + 1;
                        if (i3 < strM3675.length()) {
                            strSubstring = strM3675.substring(i3, strM3675.length());
                            break;
                        }
                        return "";
                    }
                    i2++;
                }
                if (strSubstring == null || strSubstring.length() != 0) {
                    for (String str : C0259.m3908(strM3675, ".", true, false)) {
                        for (int i4 = 0; i4 < str.length(); i4++) {
                            if (str.charAt(i4) >= 141) {
                                return "";
                            }
                        }
                    }
                    String strM3676 = c0200.m3675(0);
                    if (c0200.f715.size() > 0) {
                        c0200.f715.removeElementAt(0);
                    }
                    if (c0200.m3672() != 0) {
                        C0387 c0387 = new C0387();
                        for (int i5 = 0; i5 < c0200.m3672(); i5++) {
                            if (i5 > 0) {
                                c0387.m4563("/");
                            }
                            c0387.m4563(c0200.m3675(i5));
                        }
                        c0387.m4563("@");
                        c0387.m4563(strM3676);
                        return c0387.m4571();
                    }
                    throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(7276, 28, 95));
                }
                return "";
            }
            return "";
        }
        throw new C0414(DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, C0128.m3240(7255, 21, 45));
    }
}
