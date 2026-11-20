package nts;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;

public class C0146 extends AbstractC0410 {

    public byte[] f337;

    public byte[] f338;

    public String f339;

    public int f340;

    public C0146() {
    }

    @Override
    public int mo3181() {
        byte[] bArr;
        PublicKey publicKey = this.f2121;
        if (publicKey != null) {
            byte[] bArr2 = ((C0633) publicKey).f3481;
            if (bArr2 == null) {
                return 0;
            }
            return bArr2.length;
        }
        PrivateKey privateKey = this.f2122;
        if (privateKey == null || (bArr = ((C0129) privateKey).f254) == null) {
            return 0;
        }
        return bArr.length;
    }

    public C0146(int i, byte[] bArr, byte[] bArr2, String str, String str2) {
        this.f340 = i;
        this.f337 = bArr;
        this.f338 = bArr2;
        this.f339 = str;
        if (bArr2 == null && bArr == null) {
            throw new C0414(C0164.m3495(19775, 53, 61));
        }
        this.f2120 = 4;
        C0144 c0144 = new C0144(this.f340);
        try {
            if (C0259.m3856(str2)) {
                if (this.f337 != null) {
                    this.f2121 = new C0633(this.f337, c0144);
                }
                if (this.f338 != null) {
                    this.f2122 = new C0129(this.f338, this.f337, this.f339, c0144);
                    return;
                }
                return;
            }
            KeyFactory keyFactoryM4649 = AbstractC0410.m4649(C0164.m3495(19828, 5, 84), str2);
            if (this.f337 != null) {
                this.f2121 = keyFactoryM4649.generatePublic(new C0252(this.f337, c0144));
            }
            if (this.f338 != null) {
                this.f2122 = keyFactoryM4649.generatePrivate(new C0217(this.f338, c0144));
            }
        } catch (Exception unused) {
            throw new C0414(280, C0164.m3495(19833, 34, 92));
        }
    }

    public static String m3285(int i) {
        if (i == 3) {
            return C0458.f2646;
        }
        return i == 4 ? C0458.f2658 : "";
    }
}
