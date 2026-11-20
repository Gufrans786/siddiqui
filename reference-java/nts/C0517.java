package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.transistorsoft.locationmanager.location.TSLocationManager;
import java.util.Vector;
import okhttp3.internal.ws.WebSocketProtocol;

public class C0517 {

    public static final String f2968 = C0164.m3509(296, 5, 19);

    public int f2969;

    public int f2970;

    public C0638 f2977;

    public boolean f2975 = false;

    public int f2971 = 0;

    public int f2974 = 1;

    public boolean f2973 = false;

    public Vector f2976 = new Vector();

    public C0301 f2972 = new C0301();

    public C0517(C0638 c0638) {
        this.f2977 = null;
        this.f2969 = 0;
        this.f2970 = 0;
        this.f2977 = c0638;
        this.f2970 = c0638.f3499;
        this.f2969 = c0638.f3503;
    }

    public static String m5245(int i) {
        if (i == 449) {
            return C0164.m3509(960, 10, 61);
        }
        if (i == 451) {
            return C0164.m3509(970, 29, 4);
        }
        if (i == 509) {
            return C0164.m3509(1149, 24, 13);
        }
        if (i == 510) {
            return C0164.m3509(1173, 12, SyslogConstants.LOG_CLOCK);
        }
        switch (i) {
            case 100:
                return C0164.m3509(301, 8, 52);
            case 101:
                return C0164.m3509(309, 19, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
            case 102:
                return C0164.m3509(328, 10, 36);
            default:
                switch (i) {
                    case 200:
                        return "OK";
                    case 201:
                        return C0164.m3509(338, 7, 44);
                    case DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER:
                        return C0164.m3509(345, 8, 3);
                    case DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER:
                        return C0164.m3509(353, 29, SyslogConstants.LOG_CLOCK);
                    case 204:
                        return C0164.m3509(382, 10, 24);
                    case 205:
                        return C0164.m3509(392, 13, 74);
                    case 206:
                        return C0164.m3509(405, 15, 74);
                    case 207:
                        return C0164.m3509(TypedValues.CycleType.TYPE_EASING, 12, RNMBXStyleValue.InterpolationModeIdentity);
                    default:
                        switch (i) {
                            case 300:
                                return C0164.m3509(432, 16, 64);
                            case 301:
                                return C0164.m3509(448, 17, 67);
                            case 302:
                                return C0164.m3509(465, 5, 82);
                            case 303:
                                return C0164.m3509(470, 9, 100);
                            case 304:
                                return C0164.m3509(479, 12, 50);
                            case 305:
                                return C0164.m3509(491, 9, 45);
                            case 306:
                                return C0164.m3509(500, 12, 41);
                            case 307:
                                return C0164.m3509(512, 18, 51);
                            default:
                                switch (i) {
                                    case 400:
                                        return C0164.m3509(530, 11, 31);
                                    case TypedValues.CycleType.TYPE_CURVE_FIT:
                                        return C0164.m3509(541, 12, 86);
                                    case TypedValues.CycleType.TYPE_VISIBILITY:
                                        return C0164.m3509(553, 16, 122);
                                    case TypedValues.CycleType.TYPE_ALPHA:
                                        return C0164.m3509(569, 9, 30);
                                    case 404:
                                        return C0164.m3509(578, 9, 77);
                                    case 405:
                                        return C0164.m3509(587, 18, 114);
                                    case 406:
                                        return C0164.m3509(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 14, 19);
                                    case 407:
                                        return C0164.m3509(619, 29, 95);
                                    case TSLocationManager.LOCATION_ERROR_TIMEOUT:
                                        return C0164.m3509(648, 15, 34);
                                    case 409:
                                        return C0164.m3509(663, 8, 122);
                                    case 410:
                                        return C0164.m3509(671, 4, 48);
                                    case 411:
                                        return C0164.m3509(675, 15, 60);
                                    case 412:
                                        return C0164.m3509(690, 19, 96);
                                    case 413:
                                        return C0164.m3509(709, 24, 59);
                                    case 414:
                                        return C0164.m3509(733, 20, 47);
                                    case 415:
                                        return C0164.m3509(753, 22, 122);
                                    case TypedValues.CycleType.TYPE_PATH_ROTATE:
                                        return C0164.m3509(775, 31, 83);
                                    case 417:
                                        return C0164.m3509(806, 18, 4);
                                    default:
                                        switch (i) {
                                            case 421:
                                                return C0164.m3509(824, 57, 15);
                                            case TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE:
                                                return C0164.m3509(881, 20, 121);
                                            case TypedValues.CycleType.TYPE_WAVE_PERIOD:
                                                return C0164.m3509(TypedValues.Custom.TYPE_FLOAT, 6, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY);
                                            case TypedValues.CycleType.TYPE_WAVE_OFFSET:
                                                return C0164.m3509(907, 17, 14);
                                            case TypedValues.CycleType.TYPE_WAVE_PHASE:
                                                return C0164.m3509(924, 20, 27);
                                            case 426:
                                                return C0164.m3509(944, 16, 119);
                                            default:
                                                switch (i) {
                                                    case 500:
                                                        return C0164.m3509(999, 21, 13);
                                                    case TypedValues.PositionType.TYPE_TRANSITION_EASING:
                                                        return C0164.m3509(PointerIconCompat.TYPE_GRAB, 15, 43);
                                                    case TypedValues.PositionType.TYPE_DRAWPATH:
                                                        return C0164.m3509(1035, 11, 77);
                                                    case TypedValues.PositionType.TYPE_PERCENT_WIDTH:
                                                        return C0164.m3509(1046, 19, 32);
                                                    case TypedValues.PositionType.TYPE_PERCENT_HEIGHT:
                                                        return C0164.m3509(1065, 15, 112);
                                                    case TypedValues.PositionType.TYPE_SIZE_PERCENT:
                                                        return C0164.m3509(1080, 26, 73);
                                                    case TypedValues.PositionType.TYPE_PERCENT_X:
                                                        return C0164.m3509(1106, 23, 9);
                                                    case TypedValues.PositionType.TYPE_PERCENT_Y:
                                                        return C0164.m3509(1129, 20, 4);
                                                    default:
                                                        return C0164.m3509(1185, 7, 66);
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public final String m5246(int i) {
        switch (i) {
            case 0:
                return C0164.m3509(2252, 9, 19);
            case 1:
                return C0164.m3509(2261, 12, 72);
            case 2:
                return C0164.m3509(2273, 13, 9);
            case 3:
                return C0164.m3509(2286, 13, 4);
            case 4:
                return C0164.m3509(2299, 13, 6);
            case 5:
                return C0164.m3509(2312, 16, 11);
            case 6:
                return C0164.m3509(2328, 9, 82);
            case 7:
                return C0164.m3509(2337, 11, 21);
            case 8:
                return C0164.m3509(2348, 17, 29);
            case 9:
                return C0164.m3509(2365, 17, RNMBXStyleValue.InterpolationModeIdentity);
            default:
                return C0164.m3509(2382, 12, 68);
        }
    }

    public final String m5247(int i) {
        switch (i) {
            case 0:
                return C0164.m3509(1192, 4, 107);
            case 1:
                return C0164.m3509(1196, 6, 117);
            case 2:
                return C0164.m3509(1202, 14, 98);
            case 3:
                return C0164.m3509(1216, 15, 39);
            case 4:
                return C0164.m3509(1231, 17, 107);
            case 5:
                return C0164.m3509(1248, 16, 105);
            case 6:
                return C0164.m3509(1264, 6, 55);
            default:
                return C0164.m3509(1270, 7, 58);
        }
    }

    public final String m5248(int i) {
        switch (i) {
            case 1:
                return C0164.m3509(1277, 20, 18);
            case 2:
                return C0164.m3509(1297, 20, 35);
            case 3:
                return C0164.m3509(1317, 24, 23);
            case 4:
                return C0164.m3509(1341, 22, 19);
            case 5:
                return C0164.m3509(1363, 19, 99);
            case 6:
                return C0164.m3509(1382, 22, 82);
            case 7:
                return C0164.m3509(1404, 20, 31);
            case 8:
                return C0164.m3509(1424, 12, 54);
            case 9:
                return C0164.m3509(1436, 23, 115);
            case 10:
                return C0164.m3509(1459, 19, 94);
            case 11:
                return C0164.m3509(1478, 23, 69);
            case 12:
                return C0164.m3509(1501, 25, 39);
            case 13:
                return C0164.m3509(1526, 23, 51);
            default:
                return C0259.m3862(i) + C0164.m3509(1549, 17, 121);
        }
    }

    public final String m5249(int i) {
        switch (i) {
            case 1:
                return C0164.m3509(1566, 27, 57);
            case 2:
                return C0164.m3509(1593, 54, WebSocketProtocol.PAYLOAD_SHORT);
            case 3:
                return C0164.m3509(1647, 56, 63);
            case 4:
                return C0164.m3509(1703, 67, 86);
            case 5:
                return C0164.m3509(1770, 50, 105);
            case 6:
                return C0164.m3509(1820, 51, 56);
            case 7:
                return C0164.m3509(1871, 32, SyslogConstants.LOG_CLOCK);
            case 8:
                return C0164.m3509(1903, 32, 32);
            case 9:
                return C0164.m3509(1935, 55, 82);
            case 10:
                return C0164.m3509(1990, 58, 86);
            case 11:
                return C0164.m3509(2048, 37, 48);
            case 12:
                return C0164.m3509(2085, 69, 15);
            case 13:
                return C0164.m3509(2154, 44, 42);
            default:
                return C0164.m3509(2198, 54, 0);
        }
    }

    public void m5254(byte[] bArr, int i) {
        if (i > 0) {
            C0301 c0301 = this.f2972;
            if (c0301.f1615 == 0) {
                c0301.m4174(bArr, 0, i);
            } else {
                c0301.m4181(bArr, 0, i);
            }
            while (true) {
                C0301 c0302 = this.f2972;
                if (c0302.f1615 >= 9) {
                    byte[] bArrM4176 = c0302.m4176(0, 9);
                    int iM3846 = C0259.m3846(bArrM4176, 0, 3);
                    C0301 c0303 = this.f2972;
                    if (iM3846 <= c0303.f1615 - 9) {
                        int i2 = bArrM4176[3];
                        int i3 = iM3846 + 9;
                        byte[] bArrM4177 = c0303.m4176(0, i3);
                        this.f2972.m4179(0, i3);
                        this.f2977.m5748(C0164.m3509(2394, 30, 8) + m5246(i2) + "(" + i2 + ").", f2968);
                        switch (i2) {
                            case 0:
                                C0243 c0243 = new C0243();
                                c0243.mo3260(bArrM4177);
                                if (c0243.f1896 != 0) {
                                    int i4 = this.f2971;
                                    if (i4 != 1 && i4 != 5) {
                                        throw new C0414(1, C0164.m3509(2709, 14, 44));
                                    }
                                    this.f2977.m5752(2, c0243.f900);
                                    if (c0243.m3792()) {
                                        this.f2977.m5752(3, "");
                                    }
                                    int i5 = c0243.f1898;
                                    if (i5 > 0) {
                                        this.f2970 -= i5;
                                        C0638 c0638 = this.f2977;
                                        c0638.f3508 -= i5;
                                        if (this.f2970 <= c0638.f3499 / 2) {
                                            C0618 c0618 = new C0618();
                                            c0618.f3379 = this.f2977.f3499 - this.f2970;
                                            c0618.f1896 = c0243.f1896;
                                            m5253(c0618);
                                            this.f2970 = this.f2977.f3499;
                                        }
                                        C0638 c0639 = this.f2977;
                                        if (c0639.f3508 <= c0639.f3499 / 2) {
                                            C0618 c0619 = new C0618();
                                            C0638 c06310 = this.f2977;
                                            c0619.f3379 = c06310.f3499 - c06310.f3508;
                                            m5253(c0619);
                                            C0638 c06311 = this.f2977;
                                            c06311.f3508 = c06311.f3499;
                                        }
                                    }
                                    if (c0243.m3792()) {
                                        int i6 = this.f2971;
                                        if (i6 == 1) {
                                            this.f2971 = 4;
                                        } else if (i6 == 6) {
                                            this.f2975 = true;
                                        }
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(2647, 62, 0));
                                }
                                break;
                            case 1:
                                C0133 c0133 = new C0133(this);
                                c0133.mo3260(bArrM4177);
                                if (c0133.f1896 != 0) {
                                    int i7 = this.f2971;
                                    if (i7 != 2 && i7 != 4 && (i7 != 6 || !this.f2975)) {
                                        Vector vector = c0133.f276;
                                        for (int i8 = 0; i8 < vector.size(); i8++) {
                                            String str = ((C0654) vector.get(i8)).f3642;
                                            String str2 = ((C0654) vector.get(i8)).f3641;
                                            if (str.equals(C0164.m3509(2792, 7, 15))) {
                                                this.f2973 = true;
                                            }
                                            Vector vector2 = new Vector();
                                            vector2.add(str);
                                            vector2.add(str2);
                                            this.f2977.m5752(0, vector2);
                                        }
                                        if ((c0133.f1895 & 4) == 4 && this.f2973) {
                                            this.f2973 = false;
                                            this.f2977.m5752(1, "");
                                        }
                                        if (c0133.m3259()) {
                                            this.f2977.m5752(3, "");
                                        }
                                        int i9 = this.f2971;
                                        if (i9 == 0) {
                                            this.f2971 = 1;
                                        } else if (i9 == 3) {
                                            this.f2971 = 5;
                                        }
                                        if (c0133.m3259()) {
                                            int i10 = this.f2971;
                                            if (i10 == 1) {
                                                this.f2971 = 4;
                                            } else if (i10 == 6) {
                                                this.f2975 = true;
                                            }
                                        }
                                    } else {
                                        throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(2737, 55, 81)), " ."));
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(2723, 14, 38));
                                }
                                break;
                            case 2:
                                C0195 c0195 = new C0195();
                                c0195.mo3260(bArrM4177);
                                if (c0195.f1896 == 0) {
                                    throw new C0414(1, C0164.m3509(2799, 14, 29));
                                }
                                break;
                                break;
                            case 3:
                                C0323 c0323 = new C0323();
                                c0323.mo3260(bArrM4177);
                                if (c0323.f1896 != 0) {
                                    int i11 = this.f2971;
                                    if (i11 != 0 && (i11 != 6 || !this.f2975)) {
                                        if (i11 == 2 || i11 == 3 || i11 == 5 || i11 == 4 || i11 == 1) {
                                            this.f2971 = 6;
                                        } else if (i11 == 6) {
                                            this.f2975 = true;
                                        }
                                        if (c0323.f1734 != 0) {
                                            throw new C0414(162, C0164.m3509(2991, 37, 27) + m5249(c0323.f1734) + C0164.m3509(3028, 12, 34) + m5248(c0323.f1734) + ".");
                                        }
                                    } else {
                                        throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(2934, 57, SyslogConstants.LOG_CLOCK)), " ."));
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(2867, 67, 23));
                                }
                                break;
                            case 4:
                                C0229 c0229 = new C0229();
                                c0229.mo3260(bArrM4177);
                                int i12 = this.f2971;
                                if (i12 != 0 && i12 != 2 && i12 != 3 && i12 != 4 && (i12 != 6 || !this.f2975)) {
                                    if ((c0229.f1895 & 1) == 1) {
                                        if (c0229.f1898 != 0) {
                                            throw new C0414(6, C0164.m3509(3149, 74, 31) + c0229.f1898 + C0164.m3509(3223, 7, 83));
                                        }
                                    } else {
                                        int i13 = c0229.f823;
                                        if (i13 != -1) {
                                            C0638 c06312 = this.f2977;
                                            c06312.f3500 = i13;
                                            c06312.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3230, 67, 79)), c0229.f823, "."), C0639.f3523);
                                        }
                                        int i14 = c0229.f826;
                                        if (i14 != -1) {
                                            C0638 c06313 = this.f2977;
                                            c06313.f3510 = i14;
                                            c06313.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3297, 61, 1)), c0229.f826, "."), C0639.f3523);
                                        }
                                        int i15 = c0229.f828;
                                        if (i15 != -1) {
                                            C0638 c06314 = this.f2977;
                                            c06314.f3498 = i15;
                                            c06314.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3358, 72, 75)), c0229.f828, "."), C0639.f3523);
                                        }
                                        int i16 = c0229.f824;
                                        if (i16 != -1) {
                                            C0638 c06315 = this.f2977;
                                            c06315.f3503 = i16;
                                            c06315.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3430, 69, 76)), c0229.f824, "."), C0639.f3523);
                                        }
                                        int i17 = c0229.f825;
                                        if (i17 != -1) {
                                            C0638 c06316 = this.f2977;
                                            c06316.f3507 = i17;
                                            c06316.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3499, 64, 94)), c0229.f825, "."), C0639.f3523);
                                        }
                                        int i18 = c0229.f827;
                                        if (i18 != -1) {
                                            this.f2977.m5745(i18);
                                            this.f2977.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(3563, 70, 29)), c0229.f827, "."), C0639.f3523);
                                        }
                                        C0357 c02210 = new C0229();
                                        c02210.f1895 |= 1;
                                        m5252(c02210);
                                    }
                                } else {
                                    throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(3093, 56, 13)), " ."));
                                }
                                break;
                            case 5:
                                C0436 c0436 = new C0436(this);
                                c0436.mo3260(bArrM4177);
                                if (this.f2977.f3510 != 0) {
                                    if (c0436.f1896 != 0) {
                                        int i19 = this.f2971;
                                        if (i19 != 1 && i19 != 5 && i19 != 0) {
                                            throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(3840, 59, 4)), " ."));
                                        }
                                        if (i19 == 0) {
                                            this.f2971 = 3;
                                        }
                                        Vector vector3 = c0436.f2246;
                                        for (int i20 = 0; i20 < vector3.size(); i20++) {
                                            String str3 = ((C0654) vector3.get(i20)).f3642;
                                            String str4 = ((C0654) vector3.get(i20)).f3641;
                                            Vector vector4 = new Vector();
                                            vector4.add(str3);
                                            vector4.add(str4);
                                            this.f2977.m5752(0, vector4);
                                        }
                                        if ((c0436.f1895 & 4) == 4) {
                                            this.f2977.m5752(1, "");
                                        }
                                    } else {
                                        throw new C0414(1, C0164.m3509(3771, 69, 18));
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(3689, 82, 98));
                                }
                                break;
                            case 6:
                                C0381 c0381 = new C0381();
                                c0381.mo3260(bArrM4177);
                                if (c0381.f1896 == 0) {
                                    int i21 = this.f2971;
                                    if (i21 != 2 && i21 != 3 && i21 != 4 && (i21 != 6 || !this.f2975)) {
                                        if (c0381.f1898 == 8) {
                                            if ((c0381.f1895 & 1) != 1) {
                                                C0381 c0382 = new C0381();
                                                c0382.f1895 |= 1;
                                                c0382.f1967 = c0381.f1967;
                                                m5252(c0381);
                                            }
                                        } else {
                                            throw new C0414(6, C0164.m3509(4017, 49, 38) + c0381.f1898 + C0164.m3509(4066, 45, 50) + "8)");
                                        }
                                    } else {
                                        throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(3965, 52, 99)), " ."));
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(3899, 66, 28));
                                }
                                break;
                            case 7:
                                C0528 c0528 = new C0528();
                                c0528.mo3260(bArrM4177);
                                if (c0528.f1896 == 0) {
                                    if (c0528.f3075 != this.f2974) {
                                        continue;
                                    } else {
                                        int i22 = this.f2971;
                                        if (i22 != 0 && i22 != 2 && i22 != 3 && i22 != 4 && (i22 != 6 || !this.f2975)) {
                                            int i23 = c0528.f3076;
                                            if (i23 != 0) {
                                                byte[] bArr2 = c0528.f3077;
                                                this.f2977.m5754(C0164.m3509(4284, 38, 115) + m5248(c0528.f3076) + "-" + (bArr2 == null ? m5249(i23) : C0259.m3882(bArr2)) + ")", C0639.f3523);
                                            }
                                        } else {
                                            throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(4230, 54, 15)), " ."));
                                        }
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(4162, 68, 32));
                                }
                                break;
                            case 8:
                                C0618 c06110 = new C0618();
                                c06110.mo3260(bArrM4177);
                                int i24 = this.f2971;
                                if (i24 != 0 && (i24 != 6 || !this.f2975)) {
                                    if (c06110.f1898 == 4) {
                                        int i25 = c06110.f3379;
                                        if (i25 != 0) {
                                            int i26 = c06110.f1896;
                                            if (i26 == this.f2974) {
                                                this.f2969 += i25;
                                            } else if (i26 == 0) {
                                                this.f2977.f3502 += i25;
                                            }
                                        } else {
                                            throw new C0414(1, C0164.m3509(4535, 70, 77));
                                        }
                                    } else {
                                        throw new C0414(6, C0164.m3509(4440, 58, 95) + c06110.f1898 + C0164.m3509(4498, 34, 68) + 4 + C0164.m3509(4532, 3, 76));
                                    }
                                } else {
                                    throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(4379, 61, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR)), " ."));
                                }
                                break;
                            case 9:
                                C0545 c0545 = new C0545(this);
                                c0545.mo3260(bArrM4177);
                                if (c0545.f1896 != 0) {
                                    int i27 = this.f2971;
                                    if (i27 != 0 && i27 != 2 && i27 != 3 && i27 != 4 && (i27 != 6 || !this.f2975)) {
                                        Vector vector5 = c0545.f3139;
                                        for (int i28 = 0; i28 < vector5.size(); i28++) {
                                            String str5 = ((C0654) vector5.get(i28)).f3642;
                                            String str6 = ((C0654) vector5.get(i28)).f3641;
                                            Vector vector6 = new Vector();
                                            vector6.add(str5);
                                            vector6.add(str6);
                                            this.f2977.m5752(0, vector6);
                                        }
                                        if ((c0545.f1895 & 4) == 4) {
                                            this.f2977.m5752(1, "");
                                        }
                                    } else {
                                        throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(4732, 60, 46)), " ."));
                                    }
                                } else {
                                    throw new C0414(1, C0164.m3509(4662, 70, 0));
                                }
                                break;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    public void m5251(Vector vector, boolean z) {
        if (vector.size() % 2 == 0) {
            int i = this.f2971;
            if (i != 3 && i != 5 && i != 6) {
                for (int i2 = 0; i2 < vector.size(); i2 += 2) {
                    String str = (String) vector.get(i2);
                    int i3 = i2 + 1;
                    String str2 = (String) vector.get(i3);
                    int i4 = 0;
                    while (true) {
                        String[] strArr = C0133.f273;
                        if (i4 < strArr.length) {
                            if (str.equalsIgnoreCase(strArr[i4]) || (str.equalsIgnoreCase("te") && !str2.equalsIgnoreCase(C0164.m3509(153, 8, 15)))) {
                                break;
                            } else {
                                i4++;
                            }
                        } else {
                            this.f2976.add(new C0654((String) vector.get(i2), (String) vector.get(i3)));
                            break;
                        }
                    }
                }
                C0133 c0133 = new C0133(this);
                c0133.f274 = true;
                c0133.f1895 |= 4;
                if (z) {
                    c0133.f1895 |= 1;
                }
                c0133.f1896 = this.f2974;
                m5252(c0133);
                this.f2977.m5748(C0164.m3509(2526, 16, 34), C0639.f3523);
                if (this.f2977.f3511.f3596 >= 1) {
                    for (int i5 = 0; i5 < this.f2976.size(); i5++) {
                        this.f2977.m5754(((C0654) this.f2976.get(i5)).f3642.toLowerCase() + ": " + ((C0654) this.f2976.get(i5)).f3641, C0639.f3515);
                    }
                }
                int i6 = this.f2971;
                if (i6 == 0) {
                    this.f2971 = 1;
                } else if (i6 == 2) {
                    this.f2971 = 4;
                }
                if (c0133.m3259()) {
                    int i7 = this.f2971;
                    if (i7 == 1) {
                        this.f2971 = 5;
                        return;
                    } else {
                        if (i7 == 4) {
                            this.f2971 = 6;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(2474, 52, 110)), " ."));
        }
        throw new C0414(1, C0164.m3509(2424, 50, 97) + vector.size() + " .");
    }

    public void m5250() {
        C0387 c0387 = new C0387();
        C0381 c0381 = new C0381();
        c0387.m4550(C0164.m3509(2617, 4, 64), Long.valueOf(System.currentTimeMillis()));
        if (c0387.m4533() > 8) {
            c0387.m4534(c0387.m4533() - 8);
        }
        c0381.f1895 = 0;
        c0381.f1967 = c0387.m4554();
        m5252(c0381);
    }

    public void m5252(C0357 c0357) {
        this.f2977.m5756(c0357.mo3261());
        this.f2977.m5748(C0663.m5887(new StringBuilder().append(C0164.m3509(2621, 26, 97)).append(m5246(c0357.f1897)).append("("), c0357.f1897, ")."), f2968);
    }

    public void m5253(C0618 c0618) {
        int i = this.f2971;
        if (i != 2 && i != 6) {
            m5252((C0357) c0618);
        } else {
            throw new C0414(1, C0663.m5889(this, this.f2971, new StringBuilder().append(C0164.m3509(4322, 57, 3)), " ."));
        }
    }
}
