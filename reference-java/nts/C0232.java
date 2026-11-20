package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.apphosting.datastore.testing.DatastoreTestTrace;
import com.oppwa.mobile.connect.checkout.dialog.CheckoutActivity;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.crypto.tls.CipherSuite;

public class C0232 extends AbstractC0317 {

    public static int[] f829 = {41, 46, 67, 201, 162, JfifUtil.MARKER_SOI, 124, 1, 61, 54, 84, 161, 236, 240, 6, 19, 98, 167, 5, 243, 192, 199, 115, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA, SyslogConstants.LOG_LOCAL3, CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 43, JfifUtil.MARKER_EOI, 188, 76, 130, DatastoreTestTrace.FirestoreV1Action.DATABASE_CONTENTS_BEFORE_ACTION_FIELD_NUMBER, 30, ModuleDescriptor.MODULE_VERSION, 87, 60, 253, 212, 224, 22, RNMBXStyleValue.InterpolationModeIdentity, 66, 111, 24, CipherSuite.TLS_PSK_WITH_RC4_128_SHA, 23, 229, 18, 190, 78, 196, 214, JfifUtil.MARKER_SOS, 158, 222, 73, SyslogConstants.LOG_LOCAL4, 251, 245, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 187, 47, 238, 122, 169, 104, 121, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 21, 178, 7, 63, CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 194, 16, 137, 11, 34, 95, 33, 128, 127, 93, 154, 90, 144, 50, 39, 53, 62, 204, 231, 191, 247, 151, 3, 255, 25, 48, 179, 72, 165, 181, 209, JfifUtil.MARKER_RST7, 94, CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 42, 172, 86, 170, 198, 79, SyslogConstants.LOG_LOCAL7, 56, 210, 150, 164, 125, 182, 118, 252, 107, 226, 156, 116, 4, 241, 69, 157, 112, 89, 100, 113, 135, 32, 134, 91, 207, 101, 230, 45, SyslogConstants.LOG_LOCAL5, 2, 27, 96, 37, 173, 174, SyslogConstants.LOG_LOCAL6, 185, 246, 28, 70, 97, 105, 52, 64, WebSocketProtocol.PAYLOAD_SHORT, 15, 85, 71, 163, 35, 221, 81, 175, 58, 195, 92, 249, 206, 186, 197, 234, 38, 44, 83, 13, 110, 133, 40, 132, 9, 211, 223, 205, 244, 65, 129, 77, 82, 106, 220, 55, 200, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 193, 171, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 36, JfifUtil.MARKER_APP1, 123, 8, 12, 189, 177, 74, SyslogConstants.LOG_CLOCK, SyslogConstants.LOG_LOCAL1, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, 227, 99, 232, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 233, DatastoreTestTrace.FirestoreV1Action.MATCHING_DOCUMENTS_FIELD_NUMBER, 213, 254, 59, 0, 29, 57, CheckoutActivity.REQUEST_CODE_CHECKOUT, 239, 183, 14, 102, 88, JfifUtil.MARKER_RST0, 228, 166, 119, 114, 248, 235, 117, 75, 10, 49, 68, 80, RotationOptions.ROTATE_180, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 237, 31, 26, 219, 153, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 51, 159, 17, 131, 20};

    public static byte[][] f830 = new byte[17][];

    public byte[] f831 = new byte[16];

    public byte[] f832 = new byte[16];

    public short f833 = 0;

    public byte[] f834 = new byte[16];

    static {
        int i = 0;
        while (true) {
            byte[][] bArr = f830;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = new byte[i];
            for (int i2 = 0; i2 < i; i2++) {
                f830[i][i2] = (byte) i;
            }
            i++;
        }
    }

    public C0232() {
        this.f1703 = 128;
        mo3250();
    }

    @Override
    public void mo3412(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (!C0320.f1715) {
            throw new C0414(TypedValues.TransitionType.TYPE_TO, C0558.m5481("LD1\"lw'blxyonm{ku>", 0, 18, 19));
        }
        short s = this.f833;
        this.f833 = (short) ((s + i2) & 15);
        int i4 = 16 - s;
        if (i2 >= i4) {
            System.arraycopy(bArr, i, this.f834, s, i4);
            m3704(this.f834, 0);
            while (i4 + 15 < i2) {
                m3704(bArr, i + i4);
                i4 += 16;
            }
            s = 0;
            i3 = i4;
        }
        System.arraycopy(bArr, i + i3, this.f834, s, i2 - i3);
    }

    @Override
    public void mo3250() {
        for (int i = 0; i < 16; i++) {
            this.f831[i] = 0;
            this.f832[i] = 0;
            this.f834[i] = 0;
        }
        this.f833 = (short) 0;
    }

    public final void m3704(byte[] bArr, int i) {
        byte[] bArr2 = new byte[48];
        System.arraycopy(this.f831, 0, bArr2, 0, 16);
        System.arraycopy(bArr, i, bArr2, 16, 16);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr2[i2 + 32] = (byte) (this.f831[i2] ^ bArr[i + i2]);
        }
        short s = 0;
        for (short s2 = 0; s2 < 18; s2 = (short) (s2 + 1)) {
            for (short s3 = 0; s3 < 48; s3 = (short) (s3 + 1)) {
                byte b = (byte) (((byte) f829[s]) ^ bArr2[s3]);
                bArr2[s3] = b;
                s = (short) (b & 255);
            }
            s = (short) ((s + s2) & 255);
        }
        System.arraycopy(bArr2, 0, this.f831, 0, 16);
        short s4 = (short) (this.f832[15] & 255);
        for (int i3 = 0; i3 < 16; i3++) {
            byte[] bArr3 = this.f832;
            byte b2 = (byte) (((byte) f829[(s4 ^ bArr[i + i3]) & 255]) ^ bArr3[i3]);
            bArr3[i3] = b2;
            s4 = (short) (b2 & 255);
        }
        for (int i4 = 0; i4 < 48; i4++) {
            bArr2[i4] = 0;
        }
    }

    @Override
    public byte[] mo3413() {
        int i = 16 - this.f833;
        mo3412(f830[i], 0, i);
        mo3412(this.f832, 0, 16);
        this.f1702 = new byte[16];
        System.arraycopy(this.f831, 0, this.f1702, 0, 16);
        mo3250();
        return this.f1702;
    }
}
