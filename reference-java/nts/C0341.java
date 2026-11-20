package nts;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import ch.qos.logback.core.net.SyslogConstants;
import com.google.common.base.Ascii;

public class C0341 extends AbstractC0317 {

    public int f1833 = 0;

    public long f1834 = 0;

    public int f1836 = 0;

    public byte[] f1837 = new byte[64];

    public int[] f1835 = new int[5];

    public C0341() {
        this.f1703 = SyslogConstants.LOG_LOCAL4;
        mo3250();
    }

    public static int[] m4386(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((i2 | (~i3)) ^ i4) + i6 + 1859775393 + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4387(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((i2 | (~i3)) ^ i4) + i6 + 1836072691 + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4389(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395((((i2 ^ ((~i4) | i3)) + i6) - 1454113458) + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4390(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395((i2 ^ ((~i4) | i3)) + i6 + 1352829926 + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4391(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((((i2 & i4) | ((~i4) & i3)) + i6) - 1894007588) + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4393(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((i2 ^ i3) ^ i4) + i6 + i, i7) + i5, m4395(i3, 10)};
    }

    public static int[] m4394(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((i2 & i4) | ((~i4) & i3)) + i6 + 1548603684 + i, i7) + i5, m4395(i3, 10)};
    }

    public static int m4395(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public Object clone() throws CloneNotSupportedException {
        C0341 c0341 = new C0341();
        c0341.f1833 = this.f1833;
        c0341.f1834 = this.f1834;
        c0341.f1836 = this.f1836;
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.f1837;
            if (i2 >= bArr.length) {
                break;
            }
            c0341.f1837[i2] = bArr[i2];
            i2++;
        }
        while (true) {
            int[] iArr = this.f1835;
            if (i >= iArr.length) {
                return c0341;
            }
            c0341.f1835[i] = iArr[i];
            i++;
        }
    }

    @Override
    public byte[] mo3413() {
        int i;
        int i2;
        int[] iArr = new int[16];
        int i3 = 0;
        while (true) {
            i = (int) this.f1834;
            i2 = i & 63;
            if (i3 >= i2) {
                break;
            }
            int i4 = i3 >> 2;
            iArr[i4] = iArr[i4] | ((this.f1837[i3] & 255) << ((i3 & 3) * 8));
            i3++;
        }
        int i5 = (i >>> 2) & 15;
        iArr[i5] = (1 << (((i & 3) * 8) + 7)) | iArr[i5];
        if (i2 > 55) {
            m4398(iArr);
            iArr = new int[16];
        }
        int i6 = (int) this.f1834;
        iArr[14] = i6 << 3;
        iArr[15] = (i6 >>> 29) | (this.f1833 << 3);
        m4398(iArr);
        this.f1702 = new byte[this.f1703 / 8];
        m4396(this.f1835[0], this.f1702, 0);
        m4396(this.f1835[1], this.f1702, 4);
        m4396(this.f1835[2], this.f1702, 8);
        m4396(this.f1835[3], this.f1702, 12);
        m4396(this.f1835[4], this.f1702, 16);
        return this.f1702;
    }

    @Override
    public void mo3250() {
        this.f1836 = 0;
        this.f1833 = 0;
        this.f1834 = 0L;
        int[] iArr = this.f1835;
        iArr[0] = 1732584193;
        iArr[1] = -271733879;
        iArr[2] = -1732584194;
        iArr[3] = 271733878;
        iArr[4] = -1009589776;
    }

    public final void m4398(int[] iArr) {
        int[] iArr2 = this.f1835;
        int i = iArr2[0];
        int i2 = iArr2[1];
        int i3 = iArr2[2];
        int i4 = iArr2[3];
        int i5 = iArr2[4];
        int[] iArrM4397 = m4397(i, i2, i3, i4, i5, iArr[0], 11);
        int i6 = iArrM4397[0];
        int i7 = iArrM4397[1];
        int[] iArrM4398 = m4397(i5, i6, i2, i7, i4, iArr[1], 14);
        int i8 = iArrM4398[0];
        int i9 = iArrM4398[1];
        int[] iArrM4399 = m4397(i4, i8, i6, i9, i7, iArr[2], 15);
        int i10 = iArrM4399[0];
        int i11 = iArrM4399[1];
        int[] iArrM43910 = m4397(i7, i10, i8, i11, i9, iArr[3], 12);
        int i12 = iArrM43910[0];
        int i13 = iArrM43910[1];
        int[] iArrM43911 = m4397(i9, i12, i10, i13, i11, iArr[4], 5);
        int i14 = iArrM43911[0];
        int i15 = iArrM43911[1];
        int[] iArrM43912 = m4397(i11, i14, i12, i15, i13, iArr[5], 8);
        int i16 = iArrM43912[0];
        int i17 = iArrM43912[1];
        int[] iArrM43913 = m4397(i13, i16, i14, i17, i15, iArr[6], 7);
        int i18 = iArrM43913[0];
        int i19 = iArrM43913[1];
        int[] iArrM43914 = m4397(i15, i18, i16, i19, i17, iArr[7], 9);
        int i20 = iArrM43914[0];
        int i21 = iArrM43914[1];
        int[] iArrM43915 = m4397(i17, i20, i18, i21, i19, iArr[8], 11);
        int i22 = iArrM43915[0];
        int i23 = iArrM43915[1];
        int[] iArrM43916 = m4397(i19, i22, i20, i23, i21, iArr[9], 13);
        int i24 = iArrM43916[0];
        int i25 = iArrM43916[1];
        int[] iArrM43917 = m4397(i21, i24, i22, i25, i23, iArr[10], 14);
        int i26 = iArrM43917[0];
        int i27 = iArrM43917[1];
        int[] iArrM43918 = m4397(i23, i26, i24, i27, i25, iArr[11], 15);
        int i28 = iArrM43918[0];
        int i29 = iArrM43918[1];
        int[] iArrM43919 = m4397(i25, i28, i26, i29, i27, iArr[12], 6);
        int i30 = iArrM43919[0];
        int i31 = iArrM43919[1];
        int[] iArrM43920 = m4397(i27, i30, i28, i31, i29, iArr[13], 7);
        int i32 = iArrM43920[0];
        int i33 = iArrM43920[1];
        int[] iArrM43921 = m4397(i29, i32, i30, i33, i31, iArr[14], 9);
        int i34 = iArrM43921[0];
        int i35 = iArrM43921[1];
        int[] iArrM43922 = m4397(i31, i34, i32, i35, i33, iArr[15], 8);
        int i36 = iArrM43922[0];
        int i37 = iArrM43922[1];
        int[] iArrM4388 = m4388(i33, i36, i34, i37, i35, iArr[7], 7);
        int i38 = iArrM4388[0];
        int i39 = iArrM4388[1];
        int[] iArrM4389 = m4388(i35, i38, i36, i39, i37, iArr[4], 6);
        int i40 = iArrM4389[0];
        int i41 = iArrM4389[1];
        int[] iArrM43810 = m4388(i37, i40, i38, i41, i39, iArr[13], 8);
        int i42 = iArrM43810[0];
        int i43 = iArrM43810[1];
        int[] iArrM43811 = m4388(i39, i42, i40, i43, i41, iArr[1], 13);
        int i44 = iArrM43811[0];
        int i45 = iArrM43811[1];
        int[] iArrM43812 = m4388(i41, i44, i42, i45, i43, iArr[10], 11);
        int i46 = iArrM43812[0];
        int i47 = iArrM43812[1];
        int[] iArrM43813 = m4388(i43, i46, i44, i47, i45, iArr[6], 9);
        int i48 = iArrM43813[0];
        int i49 = iArrM43813[1];
        int[] iArrM43814 = m4388(i45, i48, i46, i49, i47, iArr[15], 7);
        int i50 = iArrM43814[0];
        int i51 = iArrM43814[1];
        int[] iArrM43815 = m4388(i47, i50, i48, i51, i49, iArr[3], 15);
        int i52 = iArrM43815[0];
        int i53 = iArrM43815[1];
        int[] iArrM43816 = m4388(i49, i52, i50, i53, i51, iArr[12], 7);
        int i54 = iArrM43816[0];
        int i55 = iArrM43816[1];
        int[] iArrM43817 = m4388(i51, i54, i52, i55, i53, iArr[0], 12);
        int i56 = iArrM43817[0];
        int i57 = iArrM43817[1];
        int[] iArrM43818 = m4388(i53, i56, i54, i57, i55, iArr[9], 15);
        int i58 = iArrM43818[0];
        int i59 = iArrM43818[1];
        int[] iArrM43819 = m4388(i55, i58, i56, i59, i57, iArr[5], 9);
        int i60 = iArrM43819[0];
        int i61 = iArrM43819[1];
        int[] iArrM43820 = m4388(i57, i60, i58, i61, i59, iArr[2], 11);
        int i62 = iArrM43820[0];
        int i63 = iArrM43820[1];
        int[] iArrM43821 = m4388(i59, i62, i60, i63, i61, iArr[14], 7);
        int i64 = iArrM43821[0];
        int i65 = iArrM43821[1];
        int[] iArrM43822 = m4388(i61, i64, i62, i65, i63, iArr[11], 13);
        int i66 = iArrM43822[0];
        int i67 = iArrM43822[1];
        int[] iArrM43823 = m4388(i63, i66, i64, i67, i65, iArr[8], 12);
        int i68 = iArrM43823[0];
        int i69 = iArrM43823[1];
        int[] iArrM4386 = m4386(i65, i68, i66, i69, i67, iArr[3], 11);
        int i70 = iArrM4386[0];
        int i71 = iArrM4386[1];
        int[] iArrM4387 = m4386(i67, i70, i68, i71, i69, iArr[10], 13);
        int i72 = iArrM4387[0];
        int i73 = iArrM4387[1];
        int[] iArrM43824 = m4386(i69, i72, i70, i73, i71, iArr[14], 6);
        int i74 = iArrM43824[0];
        int i75 = iArrM43824[1];
        int[] iArrM43825 = m4386(i71, i74, i72, i75, i73, iArr[4], 7);
        int i76 = iArrM43825[0];
        int i77 = iArrM43825[1];
        int[] iArrM43826 = m4386(i73, i76, i74, i77, i75, iArr[9], 14);
        int i78 = iArrM43826[0];
        int i79 = iArrM43826[1];
        int[] iArrM43827 = m4386(i75, i78, i76, i79, i77, iArr[15], 9);
        int i80 = iArrM43827[0];
        int i81 = iArrM43827[1];
        int[] iArrM43828 = m4386(i77, i80, i78, i81, i79, iArr[8], 13);
        int i82 = iArrM43828[0];
        int i83 = iArrM43828[1];
        int[] iArrM43829 = m4386(i79, i82, i80, i83, i81, iArr[1], 15);
        int i84 = iArrM43829[0];
        int i85 = iArrM43829[1];
        int[] iArrM43830 = m4386(i81, i84, i82, i85, i83, iArr[2], 14);
        int i86 = iArrM43830[0];
        int i87 = iArrM43830[1];
        int[] iArrM43831 = m4386(i83, i86, i84, i87, i85, iArr[7], 8);
        int i88 = iArrM43831[0];
        int i89 = iArrM43831[1];
        int[] iArrM43832 = m4386(i85, i88, i86, i89, i87, iArr[0], 13);
        int i90 = iArrM43832[0];
        int i91 = iArrM43832[1];
        int[] iArrM43833 = m4386(i87, i90, i88, i91, i89, iArr[6], 6);
        int i92 = iArrM43833[0];
        int i93 = iArrM43833[1];
        int[] iArrM43834 = m4386(i89, i92, i90, i93, i91, iArr[13], 5);
        int i94 = iArrM43834[0];
        int i95 = iArrM43834[1];
        int[] iArrM43835 = m4386(i91, i94, i92, i95, i93, iArr[11], 12);
        int i96 = iArrM43835[0];
        int i97 = iArrM43835[1];
        int[] iArrM43836 = m4386(i93, i96, i94, i97, i95, iArr[5], 7);
        int i98 = iArrM43836[0];
        int i99 = iArrM43836[1];
        int[] iArrM43837 = m4386(i95, i98, i96, i99, i97, iArr[12], 5);
        int i100 = iArrM43837[0];
        int i101 = iArrM43837[1];
        int[] iArrM4391 = m4391(i97, i100, i98, i101, i99, iArr[1], 11);
        int i102 = iArrM4391[0];
        int i103 = iArrM4391[1];
        int[] iArrM4392 = m4391(i99, i102, i100, i103, i101, iArr[9], 12);
        int i104 = iArrM4392[0];
        int i105 = iArrM4392[1];
        int[] iArrM4393 = m4391(i101, i104, i102, i105, i103, iArr[11], 14);
        int i106 = iArrM4393[0];
        int i107 = iArrM4393[1];
        int[] iArrM4394 = m4391(i103, i106, i104, i107, i105, iArr[10], 15);
        int i108 = iArrM4394[0];
        int i109 = iArrM4394[1];
        int[] iArrM4395 = m4391(i105, i108, i106, i109, i107, iArr[0], 14);
        int i110 = iArrM4395[0];
        int i111 = iArrM4395[1];
        int[] iArrM4396 = m4391(i107, i110, i108, i111, i109, iArr[8], 15);
        int i112 = iArrM4396[0];
        int i113 = iArrM4396[1];
        int[] iArrM43923 = m4391(i109, i112, i110, i113, i111, iArr[12], 9);
        int i114 = iArrM43923[0];
        int i115 = iArrM43923[1];
        int[] iArrM43924 = m4391(i111, i114, i112, i115, i113, iArr[4], 8);
        int i116 = iArrM43924[0];
        int i117 = iArrM43924[1];
        int[] iArrM43925 = m4391(i113, i116, i114, i117, i115, iArr[13], 9);
        int i118 = iArrM43925[0];
        int i119 = iArrM43925[1];
        int[] iArrM43926 = m4391(i115, i118, i116, i119, i117, iArr[3], 14);
        int i120 = iArrM43926[0];
        int i121 = iArrM43926[1];
        int[] iArrM43927 = m4391(i117, i120, i118, i121, i119, iArr[7], 5);
        int i122 = iArrM43927[0];
        int i123 = iArrM43927[1];
        int[] iArrM43928 = m4391(i119, i122, i120, i123, i121, iArr[15], 6);
        int i124 = iArrM43928[0];
        int i125 = iArrM43928[1];
        int[] iArrM43929 = m4391(i121, i124, i122, i125, i123, iArr[14], 8);
        int i126 = iArrM43929[0];
        int i127 = iArrM43929[1];
        int[] iArrM43930 = m4391(i123, i126, i124, i127, i125, iArr[5], 6);
        int i128 = iArrM43930[0];
        int i129 = iArrM43930[1];
        int[] iArrM43931 = m4391(i125, i128, i126, i129, i127, iArr[6], 5);
        int i130 = iArrM43931[0];
        int i131 = iArrM43931[1];
        int[] iArrM43932 = m4391(i127, i130, i128, i131, i129, iArr[2], 12);
        int i132 = iArrM43932[0];
        int i133 = iArrM43932[1];
        int[] iArrM43838 = m4389(i129, i132, i130, i133, i131, iArr[4], 9);
        int i134 = iArrM43838[0];
        int i135 = iArrM43838[1];
        int[] iArrM43839 = m4389(i131, i134, i132, i135, i133, iArr[0], 15);
        int i136 = iArrM43839[0];
        int i137 = iArrM43839[1];
        int[] iArrM43840 = m4389(i133, i136, i134, i137, i135, iArr[5], 5);
        int i138 = iArrM43840[0];
        int i139 = iArrM43840[1];
        int[] iArrM43841 = m4389(i135, i138, i136, i139, i137, iArr[9], 11);
        int i140 = iArrM43841[0];
        int i141 = iArrM43841[1];
        int[] iArrM43842 = m4389(i137, i140, i138, i141, i139, iArr[7], 6);
        int i142 = iArrM43842[0];
        int i143 = iArrM43842[1];
        int[] iArrM43843 = m4389(i139, i142, i140, i143, i141, iArr[12], 8);
        int i144 = iArrM43843[0];
        int i145 = iArrM43843[1];
        int[] iArrM43844 = m4389(i141, i144, i142, i145, i143, iArr[2], 13);
        int i146 = iArrM43844[0];
        int i147 = iArrM43844[1];
        int[] iArrM43845 = m4389(i143, i146, i144, i147, i145, iArr[10], 12);
        int i148 = iArrM43845[0];
        int i149 = iArrM43845[1];
        int[] iArrM43846 = m4389(i145, i148, i146, i149, i147, iArr[14], 5);
        int i150 = iArrM43846[0];
        int i151 = iArrM43846[1];
        int[] iArrM43847 = m4389(i147, i150, i148, i151, i149, iArr[1], 12);
        int i152 = iArrM43847[0];
        int i153 = iArrM43847[1];
        int[] iArrM43848 = m4389(i149, i152, i150, i153, i151, iArr[3], 13);
        int i154 = iArrM43848[0];
        int i155 = iArrM43848[1];
        int[] iArrM43849 = m4389(i151, i154, i152, i155, i153, iArr[8], 14);
        int i156 = iArrM43849[0];
        int i157 = iArrM43849[1];
        int[] iArrM43850 = m4389(i153, i156, i154, i157, i155, iArr[11], 11);
        int i158 = iArrM43850[0];
        int i159 = iArrM43850[1];
        int[] iArrM43851 = m4389(i155, i158, i156, i159, i157, iArr[6], 8);
        int i160 = iArrM43851[0];
        int i161 = iArrM43851[1];
        int[] iArrM43852 = m4389(i157, i160, i158, i161, i159, iArr[15], 5);
        int i162 = iArrM43852[0];
        int i163 = iArrM43852[1];
        int[] iArrM43853 = m4389(i159, i162, i160, i163, i161, iArr[13], 6);
        int i164 = iArrM43853[0];
        int i165 = iArrM43853[1];
        int[] iArrM4390 = m4390(i, i2, i3, i4, i5, iArr[5], 8);
        int i166 = iArrM4390[0];
        int i167 = iArrM4390[1];
        int[] iArrM43933 = m4390(i5, i166, i2, i167, i4, iArr[14], 9);
        int i168 = iArrM43933[0];
        int i169 = iArrM43933[1];
        int[] iArrM43934 = m4390(i4, i168, i166, i169, i167, iArr[7], 9);
        int i170 = iArrM43934[0];
        int i171 = iArrM43934[1];
        int[] iArrM43935 = m4390(i167, i170, i168, i171, i169, iArr[0], 11);
        int i172 = iArrM43935[0];
        int i173 = iArrM43935[1];
        int[] iArrM43936 = m4390(i169, i172, i170, i173, i171, iArr[9], 13);
        int i174 = iArrM43936[0];
        int i175 = iArrM43936[1];
        int[] iArrM43937 = m4390(i171, i174, i172, i175, i173, iArr[2], 15);
        int i176 = iArrM43937[0];
        int i177 = iArrM43937[1];
        int[] iArrM43938 = m4390(i173, i176, i174, i177, i175, iArr[11], 15);
        int i178 = iArrM43938[0];
        int i179 = iArrM43938[1];
        int[] iArrM43939 = m4390(i175, i178, i176, i179, i177, iArr[4], 5);
        int i180 = iArrM43939[0];
        int i181 = iArrM43939[1];
        int[] iArrM43940 = m4390(i177, i180, i178, i181, i179, iArr[13], 7);
        int i182 = iArrM43940[0];
        int i183 = iArrM43940[1];
        int[] iArrM43941 = m4390(i179, i182, i180, i183, i181, iArr[6], 7);
        int i184 = iArrM43941[0];
        int i185 = iArrM43941[1];
        int[] iArrM43942 = m4390(i181, i184, i182, i185, i183, iArr[15], 8);
        int i186 = iArrM43942[0];
        int i187 = iArrM43942[1];
        int[] iArrM43943 = m4390(i183, i186, i184, i187, i185, iArr[8], 11);
        int i188 = iArrM43943[0];
        int i189 = iArrM43943[1];
        int[] iArrM43944 = m4390(i185, i188, i186, i189, i187, iArr[1], 14);
        int i190 = iArrM43944[0];
        int i191 = iArrM43944[1];
        int[] iArrM43945 = m4390(i187, i190, i188, i191, i189, iArr[10], 14);
        int i192 = iArrM43945[0];
        int i193 = iArrM43945[1];
        int[] iArrM43946 = m4390(i189, i192, i190, i193, i191, iArr[3], 12);
        int i194 = iArrM43946[0];
        int i195 = iArrM43946[1];
        int[] iArrM43947 = m4390(i191, i194, i192, i195, i193, iArr[12], 6);
        int i196 = iArrM43947[0];
        int i197 = iArrM43947[1];
        int[] iArrM43948 = m4394(i193, i196, i194, i197, i195, iArr[6], 9);
        int i198 = iArrM43948[0];
        int i199 = iArrM43948[1];
        int[] iArrM43949 = m4394(i195, i198, i196, i199, i197, iArr[11], 13);
        int i200 = iArrM43949[0];
        int i201 = iArrM43949[1];
        int[] iArrM43950 = m4394(i197, i200, i198, i201, i199, iArr[3], 15);
        int i202 = iArrM43950[0];
        int i203 = iArrM43950[1];
        int[] iArrM43951 = m4394(i199, i202, i200, i203, i201, iArr[7], 7);
        int i204 = iArrM43951[0];
        int i205 = iArrM43951[1];
        int[] iArrM43952 = m4394(i201, i204, i202, i205, i203, iArr[0], 12);
        int i206 = iArrM43952[0];
        int i207 = iArrM43952[1];
        int[] iArrM43953 = m4394(i203, i206, i204, i207, i205, iArr[13], 8);
        int i208 = iArrM43953[0];
        int i209 = iArrM43953[1];
        int[] iArrM43954 = m4394(i205, i208, i206, i209, i207, iArr[5], 9);
        int i210 = iArrM43954[0];
        int i211 = iArrM43954[1];
        int[] iArrM43955 = m4394(i207, i210, i208, i211, i209, iArr[10], 11);
        int i212 = iArrM43955[0];
        int i213 = iArrM43955[1];
        int[] iArrM43956 = m4394(i209, i212, i210, i213, i211, iArr[14], 7);
        int i214 = iArrM43956[0];
        int i215 = iArrM43956[1];
        int[] iArrM43957 = m4394(i211, i214, i212, i215, i213, iArr[15], 7);
        int i216 = iArrM43957[0];
        int i217 = iArrM43957[1];
        int[] iArrM43958 = m4394(i213, i216, i214, i217, i215, iArr[8], 12);
        int i218 = iArrM43958[0];
        int i219 = iArrM43958[1];
        int[] iArrM43959 = m4394(i215, i218, i216, i219, i217, iArr[12], 7);
        int i220 = iArrM43959[0];
        int i221 = iArrM43959[1];
        int[] iArrM43960 = m4394(i217, i220, i218, i221, i219, iArr[4], 6);
        int i222 = iArrM43960[0];
        int i223 = iArrM43960[1];
        int[] iArrM43961 = m4394(i219, i222, i220, i223, i221, iArr[9], 15);
        int i224 = iArrM43961[0];
        int i225 = iArrM43961[1];
        int[] iArrM43962 = m4394(i221, i224, i222, i225, i223, iArr[1], 13);
        int i226 = iArrM43962[0];
        int i227 = iArrM43962[1];
        int[] iArrM43963 = m4394(i223, i226, i224, i227, i225, iArr[2], 11);
        int i228 = iArrM43963[0];
        int i229 = iArrM43963[1];
        int[] iArrM43854 = m4387(i225, i228, i226, i229, i227, iArr[15], 9);
        int i230 = iArrM43854[0];
        int i231 = iArrM43854[1];
        int[] iArrM43855 = m4387(i227, i230, i228, i231, i229, iArr[5], 7);
        int i232 = iArrM43855[0];
        int i233 = iArrM43855[1];
        int[] iArrM43856 = m4387(i229, i232, i230, i233, i231, iArr[1], 15);
        int i234 = iArrM43856[0];
        int i235 = iArrM43856[1];
        int[] iArrM43857 = m4387(i231, i234, i232, i235, i233, iArr[3], 11);
        int i236 = iArrM43857[0];
        int i237 = iArrM43857[1];
        int[] iArrM43858 = m4387(i233, i236, i234, i237, i235, iArr[7], 8);
        int i238 = iArrM43858[0];
        int i239 = iArrM43858[1];
        int[] iArrM43859 = m4387(i235, i238, i236, i239, i237, iArr[14], 6);
        int i240 = iArrM43859[0];
        int i241 = iArrM43859[1];
        int[] iArrM43860 = m4387(i237, i240, i238, i241, i239, iArr[6], 6);
        int i242 = iArrM43860[0];
        int i243 = iArrM43860[1];
        int[] iArrM43861 = m4387(i239, i242, i240, i243, i241, iArr[9], 14);
        int i244 = iArrM43861[0];
        int i245 = iArrM43861[1];
        int[] iArrM43862 = m4387(i241, i244, i242, i245, i243, iArr[11], 12);
        int i246 = iArrM43862[0];
        int i247 = iArrM43862[1];
        int[] iArrM43863 = m4387(i243, i246, i244, i247, i245, iArr[8], 13);
        int i248 = iArrM43863[0];
        int i249 = iArrM43863[1];
        int[] iArrM43864 = m4387(i245, i248, i246, i249, i247, iArr[12], 5);
        int i250 = iArrM43864[0];
        int i251 = iArrM43864[1];
        int[] iArrM43865 = m4387(i247, i250, i248, i251, i249, iArr[2], 14);
        int i252 = iArrM43865[0];
        int i253 = iArrM43865[1];
        int[] iArrM43866 = m4387(i249, i252, i250, i253, i251, iArr[10], 13);
        int i254 = iArrM43866[0];
        int i255 = iArrM43866[1];
        int[] iArrM43867 = m4387(i251, i254, i252, i255, i253, iArr[0], 13);
        int i256 = iArrM43867[0];
        int i257 = iArrM43867[1];
        int[] iArrM43868 = m4387(i253, i256, i254, i257, i255, iArr[4], 7);
        int i258 = iArrM43868[0];
        int i259 = iArrM43868[1];
        int[] iArrM43869 = m4387(i255, i258, i256, i259, i257, iArr[13], 5);
        int i260 = iArrM43869[0];
        int i261 = iArrM43869[1];
        int[] iArrM43964 = m4392(i257, i260, i258, i261, i259, iArr[8], 15);
        int i262 = iArrM43964[0];
        int i263 = iArrM43964[1];
        int[] iArrM43965 = m4392(i259, i262, i260, i263, i261, iArr[6], 5);
        int i264 = iArrM43965[0];
        int i265 = iArrM43965[1];
        int[] iArrM43966 = m4392(i261, i264, i262, i265, i263, iArr[4], 8);
        int i266 = iArrM43966[0];
        int i267 = iArrM43966[1];
        int[] iArrM43967 = m4392(i263, i266, i264, i267, i265, iArr[1], 11);
        int i268 = iArrM43967[0];
        int i269 = iArrM43967[1];
        int[] iArrM43968 = m4392(i265, i268, i266, i269, i267, iArr[3], 14);
        int i270 = iArrM43968[0];
        int i271 = iArrM43968[1];
        int[] iArrM43969 = m4392(i267, i270, i268, i271, i269, iArr[11], 14);
        int i272 = iArrM43969[0];
        int i273 = iArrM43969[1];
        int[] iArrM43970 = m4392(i269, i272, i270, i273, i271, iArr[15], 6);
        int i274 = iArrM43970[0];
        int i275 = iArrM43970[1];
        int[] iArrM43971 = m4392(i271, i274, i272, i275, i273, iArr[0], 14);
        int i276 = iArrM43971[0];
        int i277 = iArrM43971[1];
        int[] iArrM43972 = m4392(i273, i276, i274, i277, i275, iArr[5], 6);
        int i278 = iArrM43972[0];
        int i279 = iArrM43972[1];
        int[] iArrM43973 = m4392(i275, i278, i276, i279, i277, iArr[12], 9);
        int i280 = iArrM43973[0];
        int i281 = iArrM43973[1];
        int[] iArrM43974 = m4392(i277, i280, i278, i281, i279, iArr[2], 12);
        int i282 = iArrM43974[0];
        int i283 = iArrM43974[1];
        int[] iArrM43975 = m4392(i279, i282, i280, i283, i281, iArr[13], 9);
        int i284 = iArrM43975[0];
        int i285 = iArrM43975[1];
        int[] iArrM43976 = m4392(i281, i284, i282, i285, i283, iArr[9], 12);
        int i286 = iArrM43976[0];
        int i287 = iArrM43976[1];
        int[] iArrM43977 = m4392(i283, i286, i284, i287, i285, iArr[7], 5);
        int i288 = iArrM43977[0];
        int i289 = iArrM43977[1];
        int[] iArrM43978 = m4392(i285, i288, i286, i289, i287, iArr[10], 15);
        int i290 = iArrM43978[0];
        int i291 = iArrM43978[1];
        int[] iArrM43979 = m4392(i287, i290, i288, i291, i289, iArr[14], 8);
        int i292 = iArrM43979[0];
        int i293 = iArrM43979[1];
        int[] iArrM43980 = m4393(i289, i292, i290, i293, i291, iArr[12], 8);
        int i294 = iArrM43980[0];
        int i295 = iArrM43980[1];
        int[] iArrM43981 = m4393(i291, i294, i292, i295, i293, iArr[15], 5);
        int i296 = iArrM43981[0];
        int i297 = iArrM43981[1];
        int[] iArrM43982 = m4393(i293, i296, i294, i297, i295, iArr[10], 12);
        int i298 = iArrM43982[0];
        int i299 = iArrM43982[1];
        int[] iArrM43983 = m4393(i295, i298, i296, i299, i297, iArr[4], 9);
        int i300 = iArrM43983[0];
        int i301 = iArrM43983[1];
        int[] iArrM43984 = m4393(i297, i300, i298, i301, i299, iArr[1], 12);
        int i302 = iArrM43984[0];
        int i303 = iArrM43984[1];
        int[] iArrM43985 = m4393(i299, i302, i300, i303, i301, iArr[5], 5);
        int i304 = iArrM43985[0];
        int i305 = iArrM43985[1];
        int[] iArrM43986 = m4393(i301, i304, i302, i305, i303, iArr[8], 14);
        int i306 = iArrM43986[0];
        int i307 = iArrM43986[1];
        int[] iArrM43987 = m4393(i303, i306, i304, i307, i305, iArr[7], 6);
        int i308 = iArrM43987[0];
        int i309 = iArrM43987[1];
        int[] iArrM43988 = m4393(i305, i308, i306, i309, i307, iArr[6], 8);
        int i310 = iArrM43988[0];
        int i311 = iArrM43988[1];
        int[] iArrM43989 = m4393(i307, i310, i308, i311, i309, iArr[2], 13);
        int i312 = iArrM43989[0];
        int i313 = iArrM43989[1];
        int[] iArrM43990 = m4393(i309, i312, i310, i313, i311, iArr[13], 6);
        int i314 = iArrM43990[0];
        int i315 = iArrM43990[1];
        int[] iArrM43991 = m4393(i311, i314, i312, i315, i313, iArr[14], 5);
        int i316 = iArrM43991[0];
        int i317 = iArrM43991[1];
        int[] iArrM43992 = m4393(i313, i316, i314, i317, i315, iArr[0], 15);
        int i318 = iArrM43992[0];
        int i319 = iArrM43992[1];
        int[] iArrM43993 = m4393(i315, i318, i316, i319, i317, iArr[3], 13);
        int i320 = iArrM43993[0];
        int i321 = iArrM43993[1];
        int[] iArrM43994 = m4393(i317, i320, i318, i321, i319, iArr[9], 11);
        int i322 = iArrM43994[0];
        int i323 = iArrM43994[1];
        int[] iArrM43995 = m4393(i319, i322, i320, i323, i321, iArr[11], 11);
        int i324 = iArrM43995[0];
        int i325 = iArrM43995[1];
        int[] iArr3 = this.f1835;
        int i326 = i162 + iArr3[1] + i325;
        iArr3[1] = iArr3[2] + i165 + i323;
        iArr3[2] = iArr3[3] + i163 + i321;
        iArr3[3] = iArr3[4] + i161 + i324;
        iArr3[4] = iArr3[0] + i164 + i322;
        iArr3[0] = i326;
    }

    public static int[] m4392(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395((((~i2) & i4) | (i2 & i3)) + i6 + 2053994217 + i, i7) + i5, m4395(i3, 10)};
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        int i3;
        if (bArr != null) {
            long j = this.f1834 + ((long) i2);
            if (j > 4294967295L) {
                this.f1833++;
                this.f1834 = j - 4294967296L;
            } else {
                this.f1834 = j;
            }
            while (true) {
                bArr2 = this.f1837;
                int length = bArr2.length;
                i3 = this.f1836;
                if (i2 < length - i3) {
                    break;
                }
                System.arraycopy(bArr, i, bArr2, i3, bArr2.length - i3);
                int[] iArr = new int[16];
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    byte[] bArr3 = this.f1837;
                    if (i4 < bArr3.length / 4) {
                        iArr[i4] = (bArr3[i5] & 255) | ((bArr3[i5 + 3] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((bArr3[i5 + 2] << 16) & 16711680) | ((bArr3[i5 + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                        i4++;
                        i5 += 4;
                    }
                }
                m4398(iArr);
                byte[] bArr4 = this.f1837;
                int length2 = bArr4.length;
                int i6 = this.f1836;
                i2 -= length2 - i6;
                i += bArr4.length - i6;
                this.f1836 = 0;
            }
            if (i2 > 0) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f1836 += i2;
                return;
            }
            return;
        }
        throw new C0304(C0558.m5481("LH^J", 0, 4, 44));
    }

    public static int[] m4388(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395((((~i2) & i4) | (i2 & i3)) + i6 + 1518500249 + i, i7) + i5, m4395(i3, 10)};
    }

    public static void m4396(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 8) & 255);
        bArr[i2] = (byte) (i & 255);
    }

    public static int[] m4397(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return new int[]{m4395(((i2 ^ i3) ^ i4) + i6 + i, i7) + i5, m4395(i3, 10)};
    }
}
