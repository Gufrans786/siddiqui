package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imageutils.JfifUtil;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0267 extends C0320 {

    public static final String f1310;

    public static final String f1311;

    public static final String f1312;

    public static final String f1313;

    public static final String f1314;

    public static final String f1315;

    public static final String f1316;

    public static final String f1317;

    public static final String f1318;

    public static final String f1319;

    public C0387 f1320;

    public InputStream f1321;

    public C0387 f1322;

    public C0335 f1323;

    public C0387 f1324;

    public C0387 f1325;

    public C0387 f1326;

    public C0387 f1327;

    public long f1328;

    public boolean f1329;

    public C0387 f1330;

    public C0648 f1331;

    public C0389 f1332;

    public C0387 f1333;

    public C0387 f1334;

    public C0387 f1335;

    public C0387 f1336;

    public int f1337;

    public C0387 f1338;

    public boolean f1339;

    public C0387 f1340;

    public C0387 f1341;

    public long f1342;

    public C0387 f1343;

    public C0387 f1344;

    public boolean f1345;

    public boolean f1346;

    public C0335 f1347;

    public C0387 f1348;

    public boolean f1349;

    public C0387 f1350;

    public OutputStream f1351;

    public int f1352;

    public C0387 f1353;

    public C0387 f1354;

    public InterfaceC0512 f1355;

    public C0648 f1356;

    public C0387 f1357;

    public int f1358;

    public int f1359;

    public boolean f1360;

    public C0387 f1361;

    public C0648 f1362;

    public int f1363;

    public C0387 f1364;

    public boolean f1365;

    static {
        C0164.m3494(0, 4, 8);
        f1318 = C0164.m3494(4, 4, 52);
        f1317 = C0164.m3494(8, 9, WebSocketProtocol.PAYLOAD_SHORT);
        f1311 = C0164.m3494(17, 9, 49);
        f1319 = C0164.m3494(26, 9, 87);
        f1314 = C0164.m3494(35, 9, 87);
        f1312 = C0164.m3494(44, 9, 6);
        f1315 = C0164.m3494(53, 9, 39);
        f1313 = C0164.m3494(62, 9, 65);
        C0164.m3494(71, 7, 80);
        C0164.m3494(78, 5, 86);
        C0164.m3494(83, 6, 107);
        C0164.m3494(89, 4, 45);
        f1310 = C0164.m3494(93, 10, 95);
        f1316 = C0164.m3494(RNMBXStyleValue.InterpolationModeIdentity, 8, 68);
    }

    public C0267(Object obj, Object obj2) {
        super(obj2);
        this.f1356 = new C0648();
        this.f1362 = new C0648();
        this.f1331 = new C0648();
        this.f1325 = new C0387();
        this.f1350 = new C0387();
        this.f1322 = new C0387();
        this.f1333 = new C0387();
        this.f1357 = new C0387();
        this.f1324 = new C0387();
        this.f1353 = new C0387();
        this.f1355 = null;
        this.f1321 = null;
        this.f1351 = null;
        this.f1365 = false;
        this.f1327 = new C0387();
        this.f1336 = new C0387();
        this.f1347 = null;
        this.f1323 = null;
        this.f1360 = false;
        this.f1354 = new C0387();
        this.f1364 = new C0387();
        this.f1326 = new C0387();
        this.f1340 = new C0387();
        this.f1335 = new C0387();
        this.f1344 = new C0387();
        this.f1361 = new C0387();
        this.f1343 = new C0387();
        this.f1334 = new C0387();
        this.f1341 = new C0387();
        this.f1338 = new C0387();
        this.f1320 = new C0387();
        this.f1348 = new C0387();
        this.f1330 = new C0387();
        if (obj instanceof InterfaceC0512) {
            this.f1355 = (InterfaceC0512) obj;
        }
        this.f1364.m4541();
        this.f1354.m4541();
        this.f1326.m4541();
        this.f1335.m4541();
        this.f1340.m4541();
        this.f1361.m4541();
        this.f1343.m4541();
        this.f1334.m4541();
        this.f1341.m4541();
        this.f1338.m4541();
        this.f1320.m4541();
        this.f1337 = 0;
        this.f1359 = 256;
        this.f1352 = 0;
        this.f1339 = true;
        this.f1329 = true;
        this.f1345 = false;
        this.f1332 = new C0389(C0558.m5486(C0164.m3494(111, 5, 88)));
        m3973(false);
        this.f1332.m4576();
        this.f1356.m5857();
        this.f1362.m5857();
        this.f1331.m5857();
        this.f1350.m4541();
        this.f1325.m4541();
        this.f1322.m4541();
        this.f1336.m4541();
        this.f1327.m4541();
        this.f1353.m4541();
        this.f1333.m4541();
        this.f1332.m4582(false);
        m3976();
        this.f1357.m4531(f1318);
        this.f1363 = 1;
        this.f1358 = 2;
        this.f1328 = 0L;
        this.f1342 = 0L;
        this.f1346 = false;
        this.f1349 = false;
    }

    public void m3973(boolean z) {
        m4311(!z);
        this.f1332.m4579(z);
    }

    public void m3974(int i) {
        this.f1332.m4585(i);
    }

    public final void m3975() {
        boolean z = this.f1347 != null;
        if (!z && this.f1356.m5856()) {
            throw new C0414(102, C0164.m3494(636, 17, 90));
        }
        C0158 c0158 = new C0158();
        if (z && this.f1356.m5859()) {
            c0158 = m3972(this.f1347);
            m3974(c0158.f488);
        } else {
            c0158.m3445(this.f1356.f3629, true);
            m3974(this.f1356.m5858());
        }
        try {
            this.f1332.m4586(c0158);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public final void m3976() {
        OutputStream outputStream;
        InputStream inputStream;
        try {
            if (this.f1360 && (inputStream = this.f1321) != null) {
                inputStream.close();
                this.f1321 = null;
            }
            if (!this.f1365 || (outputStream = this.f1351) == null) {
                return;
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                this.f1324.m4543(((ByteArrayOutputStream) outputStream).toByteArray());
            }
            this.f1351.close();
            this.f1351 = null;
        } catch (IOException unused) {
            throw new C0414(304, C0164.m3494(943, 19, 124));
        }
    }

    public void m3978(String str) {
        C0387 c0387M5881 = C0663.m5881(str);
        if (c0387M5881.m4533() >= 2 && C0558.m5506(c0387M5881.m4546(0)) && C0558.m5506(c0387M5881.m4546(1))) {
            c0387M5881.m4541();
            C0558.m5450(str, c0387M5881);
            this.f1332.m4576();
            C0389 c0389 = this.f1332;
            byte[] bArrM4554 = c0387M5881.m4554();
            c0389.m4584();
            ((C0163) c0389.f1996).m3479(bArrM4554);
        }
        try {
            C0158 c0158M4583 = this.f1332.m4583(true);
            if (c0158M4583.f491 != null && c0158M4583.f491.length > 0) {
                this.f1356.f3629.m3445(c0158M4583, true);
            }
            this.f1362.f3629.m3445(c0158M4583, false);
            this.f1331.f3629.m3445(c0158M4583, false);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public int m3979() {
        return this.f1332.m4581();
    }

    public final void m3980(boolean z) {
        boolean z2 = this.f1323 != null;
        if (z && this.f1331.m5859()) {
            throw new C0414(102, C0164.m3494(653, 26, 81));
        }
        if (!z && !z2 && this.f1362.m5859()) {
            throw new C0414(102, C0164.m3494(679, 23, 7));
        }
        C0158 c0158 = new C0158();
        if (z) {
            c0158.m3445(this.f1331.f3629, false);
            m3974(this.f1331.m5858());
        } else if (z2 && this.f1362.m5859()) {
            c0158 = m3972(this.f1323);
            m3974(c0158.f488);
        } else {
            c0158.m3445(this.f1362.f3629, false);
            m3974(this.f1362.m5858());
        }
        try {
            this.f1332.m4586(c0158);
        } catch (C0537 e) {
            throw new C0414(e);
        }
    }

    public boolean m3981() {
        return this.f1332.m4578();
    }

    public boolean m3982() {
        String strM3494;
        int i;
        int i2;
        if (C0320.f1718) {
            C0367 c0367 = (C0367) this.f1332.f1996;
            String strM5477 = C0558.m5477(this.f1358);
            byte[] bArr = new byte[262144];
            m3980(false);
            if (this.f1325.m4533() <= 0) {
                throw new C0414(124, C0164.m3494(744, 28, RNMBXStyleValue.InterpolationModeIdentity));
            }
            if (this.f1327.m4533() <= 0 && this.f1336.m4533() <= 0 && this.f1321 == null) {
                throw new C0414(113, C0164.m3494(803, 29, 25));
            }
            m3977();
            try {
                try {
                    c0367.m4448(strM5477, false, false, -1);
                    do {
                        i2 = this.f1321.read(bArr);
                        if (i2 > 0) {
                            c0367.m4449(bArr, 0, i2);
                        }
                    } while (i2 > 0);
                    boolean zM4450 = this.f1346 ? c0367.m4450(C0259.m3863(this.f1325.m4571())) : c0367.m4450(this.f1325.m4554());
                    m3976();
                    return zM4450;
                } catch (Throwable th) {
                    m3976();
                    throw th;
                }
            } catch (IOException e) {
                throw new C0414(104, C0164.m3494(772, 31, 76) + C0414.m4672(e));
            } catch (C0537 e2) {
                throw new C0414(e2);
            }
        }
        m3980(false);
        int iM3979 = m3979();
        if ((iM3979 == 3 || iM3979 == 4) && !m3981()) {
            C0387 c0387 = new C0387();
            C0387 c0388 = new C0387();
            m3980(false);
            if (this.f1325.m4533() <= 0) {
                throw new C0414(124, C0164.m3494(InputDeviceCompat.SOURCE_GAMEPAD, 32, 35));
            }
            if (this.f1346) {
                C0558.m5450(this.f1325.m4571(), c0388);
            } else {
                c0388.m4537(this.f1325.m4554(), this.f1325.m4533());
            }
            try {
                try {
                    m3977();
                    C0558.m5495(this.f1321, c0387);
                    C0389 c0389 = this.f1332;
                    byte[] bArrM4554 = c0387.m4554();
                    byte[] bArrM4555 = c0388.m4554();
                    c0389.m4584();
                    boolean zM3485 = ((C0163) c0389.f1996).m3485(bArrM4554, bArrM4555);
                    m3976();
                    return zM3485;
                } catch (C0537 e3) {
                    throw new C0414(e3);
                }
            } catch (Throwable th2) {
                m3976();
                throw th2;
            }
        }
        if (this.f1327.m4533() > 0 || this.f1336.m4533() > 0 || this.f1321 != null) {
            C0387 c03810 = this.f1350;
            int i3 = this.f1358;
            int iM39710 = m3979();
            if (iM39710 == 3 && m3981()) {
                strM3494 = C0164.m3494(1130, 6, 26);
            } else if (iM39710 != 4 || !m3981()) {
                switch (i3) {
                    case 0:
                        strM3494 = C0164.m3494(1144, 4, 90);
                        break;
                    case 1:
                        strM3494 = C0164.m3494(1148, 6, 64);
                        break;
                    case 2:
                        strM3494 = C0164.m3494(1154, 6, 74);
                        break;
                    case 3:
                        strM3494 = C0164.m3494(1160, 6, 16);
                        break;
                    case 4:
                        strM3494 = C0164.m3494(1166, 6, 64);
                        break;
                    case 5:
                        strM3494 = C0164.m3494(1172, 3, 36);
                        break;
                    case 6:
                        strM3494 = C0164.m3494(1175, 3, 63);
                        break;
                    case 7:
                        strM3494 = C0164.m3494(1178, 3, 93);
                        break;
                    case 8:
                        strM3494 = C0164.m3494(1181, 7, 79);
                        break;
                    case 9:
                        strM3494 = C0164.m3494(1188, 9, 35);
                        break;
                    default:
                        strM3494 = "";
                        break;
                }
            } else {
                strM3494 = C0164.m3494(1136, 8, 54);
            }
            byte[] bArr2 = new byte[262144];
            m3977();
            try {
                try {
                    try {
                        AbstractC0317 abstractC0317M4217 = C0308.m4217(strM3494);
                        do {
                            i = this.f1321.read(bArr2);
                            if (i > 0) {
                                C0558.m5500(abstractC0317M4217, bArr2, i, false, c03810);
                            }
                            m3984(i);
                        } while (i > 0);
                        C0558.m5500(abstractC0317M4217, C0320.f1706, 0, true, c03810);
                        m3976();
                        if (this.f1346) {
                            C0558.m5505(this.f1350.m4554(), this.f1350.m4533(), this.f1350);
                        }
                    } catch (Throwable th3) {
                        m3976();
                        throw th3;
                    }
                } catch (IOException e4) {
                    throw new C0414(104, C0164.m3494(962, 31, 25) + C0414.m4672(e4));
                }
            } catch (C0537 e5) {
                throw new C0414(106, C0414.m4672(e5));
            }
        } else if (this.f1350.m4533() <= 0) {
            throw new C0414(113, C0164.m3494(TypedValues.TransitionType.TYPE_TO, 42, 64));
        }
        C0387 c03811 = new C0387();
        C0387 c03812 = new C0387();
        if (this.f1325.m4533() <= 0) {
            throw new C0414(124, C0164.m3494(993, 32, 3));
        }
        if (this.f1346) {
            C0558.m5450(this.f1350.m4571(), c03811);
            C0558.m5450(this.f1325.m4571(), c03812);
        } else {
            c03811.m4537(this.f1350.m4554(), this.f1350.m4533());
            c03812.m4537(this.f1325.m4554(), this.f1325.m4533());
        }
        try {
            return this.f1332.m4587(c03811.m4554(), c03812.m4554());
        } catch (C0537 e6) {
            throw new C0414(e6);
        }
    }

    public String m3983(boolean z, boolean z2) {
        C0387 c0387 = this.f1344;
        C0389 c0389 = this.f1332;
        c0389.m4584();
        C0163 c0163 = (C0163) c0389.f1996;
        if (z && !c0163.f532.m3428()) {
            c0387.m4543(C0163.f522);
            C0558.m5505(this.f1344.m4554(), this.f1344.m4533(), this.f1344);
            return this.f1344.m4571();
        }
        C0158 c0158 = c0163.f532;
        byte[] bArr = c0158.f490;
        byte[] bArr2 = c0158.f487;
        byte[] bArr3 = c0158.f491;
        throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(908, 16, 119));
    }

    @Override
    public String mo3151(C0440 c0440) throws C0414 {
        String str = "";
        if (c0440.m4813(C0164.m3494(116, 31, 118))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1339).toString();
            }
            this.f1339 = c0440.m4809();
        } else if (c0440.m4813(C0164.m3494(CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 32, 41))) {
            if (c0440.f2269) {
                return C0663.m5891("").append(this.f1329).toString();
            }
            this.f1329 = c0440.m4809();
        } else {
            boolean z = true;
            if (c0440.f2269 && c0440.m4813(C0164.m3494(179, 5, 112))) {
                StringBuilder sbM5891 = C0663.m5891("");
                int iM3979 = m3979();
                if (iM3979 == 0) {
                    str = f1317;
                } else if (iM3979 == 1) {
                    str = f1311;
                } else if (iM3979 == 2) {
                    str = f1319;
                } else if (iM3979 == 3 || iM3979 == 5) {
                    str = f1310;
                } else if (iM3979 == 4 || iM3979 == 6) {
                    str = f1316;
                } else if (iM3979 == 10) {
                    str = f1314;
                } else if (iM3979 == 9) {
                    str = f1312;
                } else if (iM3979 == 8) {
                    str = f1315;
                } else if (iM3979 == 7) {
                    str = f1313;
                }
                return sbM5891.append(str).toString();
            }
            if (c0440.f2269 && c0440.m4813(C0164.m3494(SyslogConstants.LOG_LOCAL7, 7, 54))) {
                return C0663.m5891("").append(m3979() == 2 ? 521 : C0158.m3423(m3979()) * 8).toString();
            }
            if (c0440.m4813(C0164.m3494(191, 13, 16))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1354.m4571()).toString();
                }
                this.f1354.m4531(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(204, 12, 64))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1364.m4571()).toString();
                }
                this.f1364.m4531(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(JfifUtil.MARKER_SOI, 8, 78))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1340.m4571()).toString();
                }
                this.f1340.m4531(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(224, 7, 93))) {
                if (c0440.f2269) {
                    StringBuilder sbM5892 = C0663.m5891("");
                    C0387 c0387 = new C0387();
                    C0558.m5505(this.f1326.m4554(), this.f1326.m4533(), c0387);
                    return sbM5892.append(c0387.m4571()).toString();
                }
                m3985(c0440.f2271, this.f1326);
            } else if (c0440.m4813(C0164.m3494(231, 7, 5)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1335);
            } else if (c0440.m4813(C0164.m3494(238, 7, 68)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1326);
            } else if (c0440.m4813(C0164.m3494(245, 11, 89))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(m3983(false, false)).toString();
                }
                m3978(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(256, 10, 58))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(m3983(false, true)).toString();
                }
                m3978(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(266, 19, 99))) {
                if (c0440.f2269) {
                    return super.mo3151(c0440);
                }
                if (C0320.f1718 != c0440.m4809()) {
                    super.mo3151(c0440);
                    this.f1332 = new C0389(C0558.m5486(C0164.m3494(285, 5, 12)));
                    if (!C0320.f1718 && this.f1723 != 0) {
                        z = false;
                    }
                    m3973(z);
                }
            } else if (c0440.m4813(C0164.m3494(290, 17, 67)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1361);
            } else if (c0440.m4813(C0164.m3494(307, 16, 38)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1343);
            } else if (c0440.m4813(C0164.m3494(323, 16, 57)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1334);
            } else if (c0440.m4813(C0164.m3494(339, 17, 30)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1341);
            } else if (c0440.m4813(C0164.m3494(356, 18, 14)) && !c0440.f2269) {
                m3985(c0440.f2271, this.f1338);
            } else if (c0440.m4813(C0164.m3494(374, 19, 67))) {
                if (c0440.f2269) {
                    return this.f1320.m4571();
                }
                this.f1320.m4531(c0440.f2271);
            } else if (c0440.m4813(C0164.m3494(393, 22, 17))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1723).toString();
                }
                m3973(!c0440.m4809());
                super.mo3151(c0440);
            } else if (c0440.m4813(C0164.m3494(415, 20, 73))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1337).toString();
                }
                this.f1337 = c0440.m4805();
            } else if (!c0440.f2269 && c0440.m4813(C0164.m3494(435, 15, 33))) {
                m3985(c0440.f2271, this.f1348);
            } else if (!c0440.f2269 && c0440.m4813(C0164.m3494(450, 16, 67))) {
                m3985(c0440.f2271, this.f1330);
            } else if (c0440.m4813(C0164.m3494(466, 19, 61))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1332.m4580()).toString();
                }
                this.f1332.m4577(c0440.m4809());
            } else if (c0440.m4813(C0164.m3494(485, 17, 106))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1359).toString();
                }
                this.f1359 = c0440.m4805();
            } else if (c0440.m4813(C0164.m3494(TypedValues.PositionType.TYPE_DRAWPATH, 11, 30))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1352).toString();
                }
                this.f1352 = c0440.m4805();
            } else if (!c0440.f2269 && c0440.m4813(C0164.m3494(InputDeviceCompat.SOURCE_DPAD, 12, 84))) {
                String str2 = c0440.f2271;
                C0387 c0388 = new C0387();
                m3985(str2, c0388);
                C0389 c0389 = this.f1332;
                byte[] bArrM4554 = c0388.m4554();
                c0389.m4584();
                ((C0163) c0389.f1996).f536 = bArrM4554;
            } else if (c0440.m4813(C0164.m3494(525, 24, 2))) {
                if (c0440.f2269) {
                    return C0663.m5891("").append(this.f1345).toString();
                }
                this.f1345 = c0440.m4809();
            } else {
                return super.mo3151(c0440);
            }
        }
        return "";
    }

    public final void m3977() {
        this.f1342 = 0L;
        this.f1328 = 0L;
        if (this.f1351 == null && this.f1353.m4533() > 0 && !this.f1349 && C0558.m5468(this.f1353.m4571())) {
            throw new C0414(111, C0164.m3494(832, 49, 57));
        }
        this.f1365 = false;
        this.f1360 = false;
        try {
            if (this.f1321 == null) {
                this.f1360 = true;
                if (this.f1327.m4533() > 0) {
                    try {
                        this.f1321 = new FileInputStream(this.f1327.m4571());
                        this.f1328 = C0558.m5448(this.f1327.m4571());
                    } catch (FileNotFoundException e) {
                        throw new C0414(305, C0663.m5886(e, new StringBuilder().append(C0164.m3494(881, 31, 118))));
                    }
                } else {
                    this.f1321 = new ByteArrayInputStream(this.f1336.m4554());
                }
                if (this.f1351 == null) {
                    this.f1365 = true;
                    if (this.f1353.m4533() > 0) {
                        try {
                            this.f1351 = new FileOutputStream(this.f1353.m4571());
                            return;
                        } catch (FileNotFoundException e2) {
                            throw new C0414(306, C0663.m5886(e2, new StringBuilder().append(C0164.m3494(912, 31, 11))));
                        }
                    }
                    this.f1351 = new ByteArrayOutputStream();
                    return;
                }
                this.f1365 = this.f1329;
            }
            this.f1360 = this.f1339;
            this.f1328 = this.f1321.available();
        } catch (Exception unused) {
            this.f1328 = -1L;
        }
        if (this.f1351 == null) {
            this.f1365 = true;
            if (this.f1353.m4533() > 0) {
                this.f1351 = new FileOutputStream(this.f1353.m4571());
                return;
            } else {
                this.f1351 = new ByteArrayOutputStream();
                return;
            }
        }
        this.f1365 = this.f1329;
    }

    public static C0158 m3972(C0335 c0335) {
        try {
            return (C0158) C0671.m5927(c0335);
        } catch (Exception unused) {
            throw new C0414(121, C0164.m3494(575, 61, 124));
        }
    }

    public final void m3985(String str, C0387 c0387) {
        c0387.m4531(str);
        if (c0387.m4533() >= 2 && C0558.m5506(c0387.m4546(0)) && C0558.m5506(c0387.m4546(1))) {
            c0387.m4541();
            C0558.m5450(str, c0387);
        }
    }

    public void m3984(long j) {
        int i;
        if (j <= 0) {
            return;
        }
        long j2 = this.f1342 + j;
        this.f1342 = j2;
        long j3 = this.f1328;
        if (j3 > 0) {
            i = (int) ((100 * j2) / j3);
            if (i > 100) {
                i = 100;
            }
        } else {
            i = -1;
        }
        InterfaceC0512 interfaceC0512 = this.f1355;
        if (interfaceC0512 != null) {
            interfaceC0512.m5239(j2, i);
        }
    }

    @Override
    public void mo3152(int i, String str) {
        InterfaceC0512 interfaceC0512 = this.f1355;
        if (interfaceC0512 != null) {
            interfaceC0512.m5238(i, str);
        }
    }
}
