package nts;

import androidx.constraintlayout.core.motion.utils.TypedValues;

public class C0389 {

    public AbstractC0645 f1996;

    public C0389(AbstractC0645 abstractC0645) {
        this.f1996 = abstractC0645;
    }

    public void m4576() {
        if (!C0320.f1718) {
            ((C0163) this.f1996).f532.m3441();
            return;
        }
        C0367 c0367 = (C0367) this.f1996;
        c0367.f1931 = null;
        c0367.f1926 = null;
    }

    public boolean m4578() {
        if (C0320.f1718) {
            return false;
        }
        return ((C0163) this.f1996).f533;
    }

    public void m4579(boolean z) {
        if (C0320.f1718) {
            return;
        }
        ((C0163) this.f1996).f535 = z;
    }

    public int m4581() {
        return C0320.f1718 ? ((C0367) this.f1996).f1932 : ((C0163) this.f1996).f532.f488;
    }

    public void m4585(int i) {
        if (C0320.f1718) {
            ((C0367) this.f1996).f1932 = i;
        } else {
            ((C0163) this.f1996).f532.f488 = i;
        }
    }

    public void m4582(boolean z) {
        if (C0320.f1718) {
            return;
        }
        ((C0163) this.f1996).f533 = z;
    }

    public C0158 m4583(boolean z) throws C0537 {
        if (C0320.f1718) {
            return (C0158) ((C0367) this.f1996).m4446(z);
        }
        return ((C0163) this.f1996).m3481(z);
    }

    public void m4577(boolean z) {
        if (C0320.f1718) {
            return;
        }
        ((C0163) this.f1996).f531 = z;
    }

    public boolean m4580() {
        if (C0320.f1718) {
            return true;
        }
        return ((C0163) this.f1996).f531;
    }

    public void m4586(C0158 c0158) throws C0537 {
        if (C0320.f1718) {
            ((C0367) this.f1996).m4443(c0158);
        } else {
            ((C0163) this.f1996).m3478(c0158);
        }
    }

    public boolean m4587(byte[] bArr, byte[] bArr2) throws C0537 {
        if (C0320.f1718) {
            return ((C0367) this.f1996).m4451(bArr, "", bArr2, false);
        }
        return ((C0163) this.f1996).m3480(bArr, bArr2);
    }

    public byte[] m4589(C0158 c0158, String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) throws C0537 {
        byte[] bArrM3475;
        if (C0320.f1718) {
            return ((C0367) this.f1996).m4455(c0158, str, bArr, bArr2, bArr3, bArr4, bArr5);
        }
        C0163 c0163 = (C0163) this.f1996;
        if (c0163.f535) {
            if (str != null && str.length() > 0 && !str.toUpperCase().equals(C0642.m5844(485, 6, 46))) {
                throw new C0537(C0642.m5844(491, 31, 107));
            }
            c0163.m3484(c0158);
            if (bArr != null && bArr.length > 0) {
                if (bArr2 != null && bArr2.length > 0) {
                    if (bArr3 != null && bArr3.length > 0) {
                        throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(878, 16, 66));
                    }
                    throw new C0537(C0642.m5844(848, 30, 1));
                }
                throw new C0537(C0642.m5844(819, 29, 96));
            }
            throw new C0537(C0642.m5844(789, 30, 115));
        }
        if (str == null || str.length() == 0) {
            str = C0642.m5844(522, 6, 100);
        }
        c0163.m3482();
        c0163.m3484(c0158);
        if (bArr != null && bArr.length > 0) {
            if (bArr2 != null && bArr2.length > 0) {
                if (bArr3 != null && bArr3.length > 0) {
                    if (c0163.f532.m3440()) {
                        bArrM3475 = C0163.m3475(c0163.f532.f491, c0158, false);
                    } else {
                        bArrM3475 = C0163.m3475(c0163.f532.f486, c0158, false);
                    }
                    byte[] bArrM3476 = C0163.m3476(bArr, bArr2, bArr3, bArr4, bArr5);
                    AbstractC0317 abstractC0317M4217 = C0308.m4217(str);
                    int i = abstractC0317M4217.f1703 / 8;
                    int iM4221 = C0308.m4221(abstractC0317M4217) / 8;
                    int i2 = i / iM4221;
                    if (i2 < 1) {
                        i2 = 1;
                    }
                    byte[] bArr6 = new byte[i];
                    for (int i3 = 1; i3 <= i2; i3++) {
                        byte[] bArrM3898 = C0259.m3898(i3, 4);
                        abstractC0317M4217.mo3250();
                        int length = bArrM3898.length;
                        abstractC0317M4217.mo3412(bArrM3898, 0, length);
                        System.arraycopy(bArrM3898, 0, bArrM3898, 0, length);
                        int length2 = bArrM3475.length;
                        abstractC0317M4217.mo3412(bArrM3475, 0, length2);
                        System.arraycopy(bArrM3475, 0, bArrM3475, 0, length2);
                        abstractC0317M4217.mo3122(bArrM3476, 0, bArrM3476.length);
                        System.arraycopy(abstractC0317M4217.f1702, 0, bArr6, (i3 - 1) * iM4221, iM4221);
                    }
                    return bArr6;
                }
                throw new C0537(C0642.m5844(1288, 30, 4));
            }
            throw new C0537(C0642.m5844(1259, 29, 85));
        }
        throw new C0537(C0642.m5844(1229, 30, 119));
    }

    public byte[] m4588(C0158 c0158, int i, byte[] bArr, byte[] bArr2, byte[] bArr3) throws C0537 {
        byte[] bArrM3475;
        byte[] bArr4;
        if (C0320.f1718) {
            return ((C0367) this.f1996).m4454(c0158, i, bArr, bArr2, bArr3);
        }
        C0163 c0163 = (C0163) this.f1996;
        if (c0163.f535) {
            if (!c0163.f532.m3433() && !c0163.f532.m3436()) {
                String str = C0163.f519;
                if (i >= 7 && i <= 11) {
                    str = C0163.f524;
                } else if (i == 12) {
                    str = C0163.f527;
                } else if (i == 99) {
                    str = C0163.f518;
                }
                c0163.m3484(c0158);
                if (str == C0163.f527 && (bArr == null || bArr2 == null || bArr2.length == 0 || bArr.length == 0)) {
                    throw new C0537(C0642.m5844(683, 33, 42));
                }
                if (str == C0163.f527 && bArr2.length != 64) {
                    throw new C0537(C0642.m5844(716, 30, 50));
                }
                if (str == C0163.f527 && (bArr == null || bArr.length <= 0)) {
                    throw new C0537(C0642.m5844(746, 27, 122));
                }
                throw new C0414(TypedValues.TransitionType.TYPE_TO, C0642.m5844(773, 16, 105));
            }
            throw new C0537(C0642.m5844(449, 36, 37));
        }
        if (i == 12) {
            if (bArr != null && bArr2 != null && bArr2.length != 0 && bArr.length != 0) {
                if (bArr2.length == 64) {
                    if (bArr.length <= 0) {
                        throw new C0537(C0642.m5844(1202, 27, 127));
                    }
                } else {
                    throw new C0537(C0642.m5844(1172, 30, 117));
                }
            } else {
                throw new C0537(C0642.m5844(1139, 33, 59));
            }
        }
        c0163.m3482();
        c0163.m3484(c0158);
        if (c0163.f532.m3440()) {
            bArrM3475 = C0163.m3475(c0163.f532.f491, c0158, false);
        } else {
            bArrM3475 = C0163.m3475(c0163.f532.f486, c0158, false);
        }
        if (i != 12) {
            return i == 99 ? bArrM3475 : C0163.m3473(i, bArr, bArrM3475, bArr2, bArr3);
        }
        if (bArr == null || bArr.length <= 0) {
            bArr4 = bArr2;
        } else {
            byte[] bArr5 = new byte[bArr2.length + bArr.length];
            System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
            bArr4 = bArr5;
        }
        return C0234.m3708(bArrM3475, bArr4, 48);
    }

    public void m4584() {
        if (C0320.f1718) {
            throw new C0414(C0164.m3494(1275, 37, 62));
        }
    }
}
