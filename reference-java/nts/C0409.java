package nts;

import com.google.common.base.Ascii;

public class C0409 extends AbstractC0317 {

    public static final long[] f2112 = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    public long[] f2113 = new long[8];

    public int f2114 = 0;

    public byte[] f2117 = new byte[128];

    public long f2119 = 0;

    public long f2115 = 0;

    public boolean f2116 = false;

    public boolean f2118 = false;

    public C0409() {
        this.f1703 = 512;
        mo3250();
    }

    public Object clone() throws CloneNotSupportedException {
        C0409 c0409 = new C0409();
        m4648(c0409);
        return c0409;
    }

    public final void m4646() {
        int i;
        char c;
        boolean z;
        long[] jArr = new long[80];
        int i2 = 0;
        while (true) {
            i = 16;
            c = 7;
            if (i2 >= 16) {
                break;
            }
            byte[] bArr = this.f2117;
            int i3 = i2 * 8;
            long j = (((long) bArr[i3]) << 56) & (-72057594037927936L);
            jArr[i2] = j;
            long j2 = j | ((((long) bArr[i3 + 1]) << 48) & 71776119061217280L);
            jArr[i2] = j2;
            long j3 = j2 | ((((long) bArr[i3 + 2]) << 40) & 280375465082880L);
            jArr[i2] = j3;
            long j4 = j3 | ((((long) bArr[i3 + 3]) << 32) & 1095216660480L);
            jArr[i2] = j4;
            long j5 = j4 | (((long) (bArr[i3 + 4] << Ascii.CAN)) & 4278190080L);
            jArr[i2] = j5;
            long j6 = j5 | (((long) (bArr[i3 + 5] << 16)) & 16711680);
            jArr[i2] = j6;
            long j7 = (((long) (bArr[i3 + 6] << 8)) & 65280) | j6;
            jArr[i2] = j7;
            jArr[i2] = j7 | (((long) bArr[i3 + 7]) & 255);
            i2++;
        }
        while (true) {
            z = true;
            if (i >= 80) {
                break;
            }
            int i4 = i - 15;
            int i5 = i - 2;
            jArr[i] = jArr[i - 16] + ((jArr[i4] >>> 7) ^ (m4647(jArr[i4], 1) ^ m4647(jArr[i4], 8))) + jArr[i - 7] + ((m4647(jArr[i5], 19) ^ m4647(jArr[i5], 61)) ^ (jArr[i5] >>> 6));
            i++;
        }
        long[] jArr2 = this.f2113;
        long j8 = jArr2[0];
        long j9 = jArr2[1];
        long j10 = jArr2[2];
        long j11 = jArr2[3];
        long j12 = jArr2[4];
        long j13 = jArr2[5];
        long j14 = jArr2[6];
        long j15 = jArr2[7];
        long j16 = j12;
        int i6 = 0;
        for (int i7 = 80; i6 < i7; i7 = 80) {
            long jM4647 = ((m4647(j8, 28) ^ m4647(j8, 34)) ^ m4647(j8, 39)) + (((j8 & j9) ^ (j8 & j10)) ^ (j9 & j10));
            char c2 = c;
            long jM4648 = j15 + ((m4647(j16, 14) ^ m4647(j16, 18)) ^ m4647(j16, 41)) + ((j16 & j13) ^ ((~j16) & j14)) + f2112[i6] + jArr[i6];
            long j17 = j11 + jM4648;
            long j18 = jM4648 + jM4647;
            i6++;
            long j19 = j9;
            j9 = j8;
            j8 = j18;
            j11 = j10;
            j10 = j19;
            j15 = j14;
            j14 = j13;
            j13 = j16;
            j16 = j17;
            z = z;
            c = c2;
        }
        char c3 = c;
        boolean z2 = z;
        long[] jArr3 = this.f2113;
        jArr3[0] = jArr3[0] + j8;
        jArr3[z2 ? 1 : 0] = jArr3[z2 ? 1 : 0] + j9;
        jArr3[2] = jArr3[2] + j10;
        jArr3[3] = jArr3[3] + j11;
        jArr3[4] = jArr3[4] + j16;
        jArr3[5] = jArr3[5] + j13;
        jArr3[6] = jArr3[6] + j14;
        jArr3[c3] = jArr3[c3] + j15;
        this.f2114 = 0;
    }

    @Override
    public byte[] mo3413() {
        int i = 0;
        if (!this.f2116) {
            int i2 = this.f2114;
            if (i2 <= 111) {
                byte[] bArr = this.f2117;
                this.f2114 = i2 + 1;
                bArr[i2] = -128;
                while (true) {
                    int i3 = this.f2114;
                    if (i3 >= 112) {
                        break;
                    }
                    byte[] bArr2 = this.f2117;
                    this.f2114 = i3 + 1;
                    bArr2[i3] = 0;
                }
            } else {
                byte[] bArr3 = this.f2117;
                this.f2114 = i2 + 1;
                bArr3[i2] = -128;
                while (true) {
                    int i4 = this.f2114;
                    if (i4 >= 128) {
                        break;
                    }
                    byte[] bArr4 = this.f2117;
                    this.f2114 = i4 + 1;
                    bArr4[i4] = 0;
                }
                m4646();
                while (true) {
                    int i5 = this.f2114;
                    if (i5 >= 112) {
                        break;
                    }
                    byte[] bArr5 = this.f2117;
                    this.f2114 = i5 + 1;
                    bArr5[i5] = 0;
                }
            }
            byte[] bArr6 = this.f2117;
            long j = this.f2119;
            bArr6[112] = (byte) (j >>> 56);
            bArr6[113] = (byte) (j >>> 48);
            bArr6[114] = (byte) (j >>> 40);
            bArr6[115] = (byte) (j >>> 32);
            bArr6[116] = (byte) (j >>> 24);
            bArr6[117] = (byte) (j >>> 16);
            bArr6[118] = (byte) (j >>> 8);
            bArr6[119] = (byte) j;
            long j2 = this.f2115;
            bArr6[120] = (byte) (j2 >>> 56);
            bArr6[121] = (byte) (j2 >>> 48);
            bArr6[122] = (byte) (j2 >>> 40);
            bArr6[123] = (byte) (j2 >>> 32);
            bArr6[124] = (byte) (j2 >>> 24);
            bArr6[125] = (byte) (j2 >>> 16);
            bArr6[126] = (byte) (j2 >>> 8);
            bArr6[127] = (byte) j2;
            m4646();
            int i6 = 0;
            while (true) {
                byte[] bArr7 = this.f2117;
                if (i6 >= bArr7.length) {
                    break;
                }
                bArr7[i6] = 0;
                i6++;
            }
            this.f2115 = 0L;
            this.f2119 = 0L;
            this.f2116 = true;
        }
        this.f1702 = new byte[this.f1703 / 8];
        while (true) {
            byte[] bArr8 = this.f1702;
            if (i >= bArr8.length) {
                return bArr8;
            }
            bArr8[i] = (byte) (this.f2113[i >>> 3] >>> (((7 - i) & 7) << 3));
            i++;
        }
    }

    @Override
    public void mo3250() {
        this.f2115 = 0L;
        this.f2119 = 0L;
        this.f2114 = 0;
        long[] jArr = this.f2113;
        jArr[0] = 7640891576956012808L;
        jArr[1] = -4942790177534073029L;
        jArr[2] = 4354685564936845355L;
        jArr[3] = -6534734903238641935L;
        jArr[4] = 5840696475078001361L;
        jArr[5] = -7276294671716946913L;
        jArr[6] = 2270897969802886507L;
        jArr[7] = 6620516959819538809L;
        this.f2116 = false;
        this.f2118 = false;
    }

    public final long m4647(long j, int i) {
        return (j << (64 - i)) | (j >>> i);
    }

    public void m4648(C0409 c0409) {
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.f2113;
            if (i2 >= jArr.length) {
                break;
            }
            c0409.f2113[i2] = jArr[i2];
            i2++;
        }
        c0409.f2114 = this.f2114;
        while (true) {
            byte[] bArr = this.f2117;
            if (i >= bArr.length) {
                c0409.f2119 = this.f2119;
                c0409.f2115 = this.f2115;
                c0409.f2116 = this.f2116;
                c0409.f2118 = this.f2118;
                return;
            }
            c0409.f2117[i] = bArr[i];
            i++;
        }
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            while (i2 > 0 && !this.f2118) {
                i2--;
                byte[] bArr2 = this.f2117;
                int i3 = this.f2114;
                int i4 = i3 + 1;
                this.f2114 = i4;
                int i5 = i + 1;
                bArr2[i3] = bArr[i];
                long j = this.f2115 + 8;
                this.f2115 = j;
                if (j == 0) {
                    long j2 = this.f2119 + 1;
                    this.f2119 = j2;
                    if (j2 == 0) {
                        this.f2118 = true;
                    }
                }
                if (i4 == 128) {
                    m4646();
                }
                i = i5;
            }
            return;
        }
        throw new C0304(C0558.m5481("OK]I", 0, 4, 47));
    }
}
