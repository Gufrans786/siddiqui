package im.zego.zpns.internal.util;

import ch.qos.logback.core.CoreConstants;
import com.google.common.base.Ascii;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

public class Base64 {
    private Base64() {
    }

    public static Encoder getEncoder() {
        return Encoder.RFC4648;
    }

    public static Encoder getUrlEncoder() {
        return Encoder.RFC4648_URLSAFE;
    }

    public static Encoder getMimeEncoder() {
        return Encoder.RFC2045;
    }

    public static Encoder getMimeEncoder(int i, byte[] bArr) {
        Objects.requireNonNull(bArr);
        int[] iArr = Decoder.fromBase64;
        for (byte b : bArr) {
            if (iArr[b & 255] != -1) {
                throw new IllegalArgumentException("Illegal base64 line separator character 0x" + Integer.toString(b, 16));
            }
        }
        if (i <= 0) {
            return Encoder.RFC4648;
        }
        return new Encoder(false, bArr, (i >> 2) << 2, true);
    }

    public static Decoder getDecoder() {
        return Decoder.RFC4648;
    }

    public static Decoder getUrlDecoder() {
        return Decoder.RFC4648_URLSAFE;
    }

    public static Decoder getMimeDecoder() {
        return Decoder.RFC2045;
    }

    public static class Encoder {
        private static final byte[] CRLF;
        private static final int MIMELINEMAX = 76;
        static final Encoder RFC2045;
        static final Encoder RFC4648;
        static final Encoder RFC4648_URLSAFE;
        private static final char[] toBase64 = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', AbstractJsonLexerKt.UNICODE_ESC, 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static final char[] toBase64URL = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', AbstractJsonLexerKt.UNICODE_ESC, 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', CoreConstants.DASH_CHAR, '_'};
        private final boolean doPadding;
        private final boolean isURL;
        private final int linemax;
        private final byte[] newline;

        private Encoder(boolean z, byte[] bArr, int i, boolean z2) {
            this.isURL = z;
            this.newline = bArr;
            this.linemax = i;
            this.doPadding = z2;
        }

        static {
            byte[] bArr = {Ascii.CR, 10};
            CRLF = bArr;
            RFC4648 = new Encoder(false, null, -1, true);
            RFC4648_URLSAFE = new Encoder(true, null, -1, true);
            RFC2045 = new Encoder(false, bArr, 76, true);
        }

        private final int outLength(int i) {
            int i2;
            if (this.doPadding) {
                i2 = ((i + 2) / 3) * 4;
            } else {
                int i3 = i % 3;
                i2 = ((i / 3) * 4) + (i3 == 0 ? 0 : i3 + 1);
            }
            int i4 = this.linemax;
            return i4 > 0 ? i2 + (((i2 - 1) / i4) * this.newline.length) : i2;
        }

        public byte[] encode(byte[] bArr) {
            int iOutLength = outLength(bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iEncode0 = encode0(bArr, 0, bArr.length, bArr2);
            return iEncode0 != iOutLength ? Arrays.copyOf(bArr2, iEncode0) : bArr2;
        }

        public int encode(byte[] bArr, byte[] bArr2) {
            if (bArr2.length < outLength(bArr.length)) {
                throw new IllegalArgumentException("Output byte array is too small for encoding all input bytes");
            }
            return encode0(bArr, 0, bArr.length, bArr2);
        }

        public String encodeToString(byte[] bArr) {
            byte[] bArrEncode = encode(bArr);
            return new String(bArrEncode, 0, 0, bArrEncode.length);
        }

        public ByteBuffer encode(ByteBuffer byteBuffer) {
            int iEncode0;
            int iOutLength = outLength(byteBuffer.remaining());
            byte[] bArrCopyOf = new byte[iOutLength];
            if (byteBuffer.hasArray()) {
                iEncode0 = encode0(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.arrayOffset() + byteBuffer.limit(), bArrCopyOf);
                byteBuffer.position(byteBuffer.limit());
            } else {
                int iRemaining = byteBuffer.remaining();
                byte[] bArr = new byte[iRemaining];
                byteBuffer.get(bArr);
                iEncode0 = encode0(bArr, 0, iRemaining, bArrCopyOf);
            }
            if (iEncode0 != iOutLength) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, iEncode0);
            }
            return ByteBuffer.wrap(bArrCopyOf);
        }

        public OutputStream wrap(OutputStream outputStream) {
            Objects.requireNonNull(outputStream);
            return new EncOutputStream(outputStream, this.isURL ? toBase64URL : toBase64, this.newline, this.linemax, this.doPadding);
        }

        public Encoder withoutPadding() {
            return !this.doPadding ? this : new Encoder(this.isURL, this.newline, this.linemax, false);
        }

        private int encode0(byte[] bArr, int i, int i2, byte[] bArr2) {
            char[] cArr = this.isURL ? toBase64URL : toBase64;
            int i3 = ((i2 - i) / 3) * 3;
            int i4 = i + i3;
            int i5 = this.linemax;
            if (i5 > 0 && i3 > (i5 / 4) * 3) {
                i3 = (i5 / 4) * 3;
            }
            int i6 = i;
            int i7 = 0;
            while (i6 < i4) {
                int iMin = Math.min(i6 + i3, i4);
                int i8 = i6;
                int i9 = i7;
                while (i8 < iMin) {
                    int i10 = i8 + 2;
                    int i11 = ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8] & 255) << 16);
                    i8 += 3;
                    int i12 = i11 | (bArr[i10] & 255);
                    bArr2[i9] = (byte) cArr[(i12 >>> 18) & 63];
                    bArr2[i9 + 1] = (byte) cArr[(i12 >>> 12) & 63];
                    int i13 = i9 + 3;
                    bArr2[i9 + 2] = (byte) cArr[(i12 >>> 6) & 63];
                    i9 += 4;
                    bArr2[i13] = (byte) cArr[i12 & 63];
                }
                int i14 = ((iMin - i6) / 3) * 4;
                i7 += i14;
                if (i14 == this.linemax && iMin < i2) {
                    byte[] bArr3 = this.newline;
                    int length = bArr3.length;
                    int i15 = 0;
                    while (i15 < length) {
                        bArr2[i7] = bArr3[i15];
                        i15++;
                        i7++;
                    }
                }
                i6 = iMin;
            }
            if (i6 >= i2) {
                return i7;
            }
            int i16 = i6 + 1;
            int i17 = bArr[i6] & 255;
            int i18 = i7 + 1;
            bArr2[i7] = (byte) cArr[i17 >> 2];
            if (i16 == i2) {
                int i19 = i7 + 2;
                bArr2[i18] = (byte) cArr[(i17 << 4) & 63];
                if (!this.doPadding) {
                    return i19;
                }
                int i20 = i7 + 3;
                bArr2[i19] = kotlin.io.encoding.Base64.padSymbol;
                int i21 = i7 + 4;
                bArr2[i20] = kotlin.io.encoding.Base64.padSymbol;
                return i21;
            }
            int i22 = bArr[i16] & 255;
            bArr2[i18] = (byte) cArr[((i17 << 4) & 63) | (i22 >> 4)];
            int i23 = i7 + 3;
            bArr2[i7 + 2] = (byte) cArr[(i22 << 2) & 63];
            if (!this.doPadding) {
                return i23;
            }
            int i24 = i7 + 4;
            bArr2[i23] = kotlin.io.encoding.Base64.padSymbol;
            return i24;
        }
    }

    public static class Decoder {
        static final Decoder RFC2045;
        static final Decoder RFC4648;
        static final Decoder RFC4648_URLSAFE;
        private static final int[] fromBase64;
        private static final int[] fromBase64URL;
        private final boolean isMIME;
        private final boolean isURL;

        private Decoder(boolean z, boolean z2) {
            this.isURL = z;
            this.isMIME = z2;
        }

        static {
            int[] iArr = new int[256];
            fromBase64 = iArr;
            Arrays.fill(iArr, -1);
            for (int i = 0; i < Encoder.toBase64.length; i++) {
                fromBase64[Encoder.toBase64[i]] = i;
            }
            fromBase64[61] = -2;
            int[] iArr2 = new int[256];
            fromBase64URL = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i2 = 0; i2 < Encoder.toBase64URL.length; i2++) {
                fromBase64URL[Encoder.toBase64URL[i2]] = i2;
            }
            fromBase64URL[61] = -2;
            RFC4648 = new Decoder(false, false);
            RFC4648_URLSAFE = new Decoder(true, false);
            RFC2045 = new Decoder(false, true);
        }

        public byte[] decode(byte[] bArr) {
            int iOutLength = outLength(bArr, 0, bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iDecode0 = decode0(bArr, 0, bArr.length, bArr2);
            return iDecode0 != iOutLength ? Arrays.copyOf(bArr2, iDecode0) : bArr2;
        }

        public byte[] decode(String str) {
            return decode(str.getBytes(StandardCharsets.ISO_8859_1));
        }

        public int decode(byte[] bArr, byte[] bArr2) {
            if (bArr2.length < outLength(bArr, 0, bArr.length)) {
                throw new IllegalArgumentException("Output byte array is too small for decoding all input bytes");
            }
            return decode0(bArr, 0, bArr.length, bArr2);
        }

        public ByteBuffer decode(ByteBuffer byteBuffer) {
            int iRemaining;
            byte[] bArrArray;
            int iArrayOffset;
            int iPosition = byteBuffer.position();
            try {
                if (byteBuffer.hasArray()) {
                    bArrArray = byteBuffer.array();
                    iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    iRemaining = byteBuffer.arrayOffset() + byteBuffer.limit();
                    byteBuffer.position(byteBuffer.limit());
                } else {
                    iRemaining = byteBuffer.remaining();
                    bArrArray = new byte[iRemaining];
                    byteBuffer.get(bArrArray);
                    iArrayOffset = 0;
                }
                byte[] bArr = new byte[outLength(bArrArray, iArrayOffset, iRemaining)];
                return ByteBuffer.wrap(bArr, 0, decode0(bArrArray, iArrayOffset, iRemaining, bArr));
            } catch (IllegalArgumentException e) {
                byteBuffer.position(iPosition);
                throw e;
            }
        }

        public InputStream wrap(InputStream inputStream) {
            Objects.requireNonNull(inputStream);
            return new DecInputStream(inputStream, this.isURL ? fromBase64URL : fromBase64, this.isMIME);
        }

        private int outLength(byte[] bArr, int i, int i2) {
            int i3;
            int[] iArr = this.isURL ? fromBase64URL : fromBase64;
            int i4 = i2 - i;
            int i5 = 0;
            if (i4 == 0) {
                return 0;
            }
            if (i4 < 2) {
                if (this.isMIME && iArr[0] == -1) {
                    return 0;
                }
                throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
            }
            if (this.isMIME) {
                int i6 = 0;
                while (i < i2) {
                    int i7 = i + 1;
                    int i8 = bArr[i] & 255;
                    if (i8 == 61) {
                        i4 -= (i2 - i7) + 1;
                        break;
                    }
                    if (iArr[i8] == -1) {
                        i6++;
                    }
                    i = i7;
                }
                i4 -= i6;
            } else if (bArr[i2 - 1] == 61) {
                i5 = bArr[i2 - 2] == 61 ? 2 : 1;
            }
            if (i5 == 0 && (i3 = i4 & 3) != 0) {
                i5 = 4 - i3;
            }
            return (((i4 + 3) / 4) * 3) - i5;
        }

        private int decode0(byte[] r12, int r13, int r14, byte[] r15) {
            throw new UnsupportedOperationException("Method not decompiled: im.zego.zpns.internal.util.Base64.Decoder.decode0(byte[], int, int, byte[]):int");
        }
    }

    private static class EncOutputStream extends FilterOutputStream {
        private int b0;
        private int b1;
        private int b2;
        private final char[] base64;
        private boolean closed;
        private final boolean doPadding;
        private int leftover;
        private final int linemax;
        private int linepos;
        private final byte[] newline;

        EncOutputStream(OutputStream outputStream, char[] cArr, byte[] bArr, int i, boolean z) {
            super(outputStream);
            this.leftover = 0;
            this.closed = false;
            this.linepos = 0;
            this.base64 = cArr;
            this.newline = bArr;
            this.linemax = i;
            this.doPadding = z;
        }

        @Override
        public void write(int i) throws IOException {
            write(new byte[]{(byte) (i & 255)}, 0, 1);
        }

        private void checkNewline() throws IOException {
            if (this.linepos == this.linemax) {
                this.out.write(this.newline);
                this.linepos = 0;
            }
        }

        @Override
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return;
            }
            int i3 = this.leftover;
            if (i3 != 0) {
                if (i3 == 1) {
                    int i4 = i + 1;
                    this.b1 = bArr[i] & 255;
                    i2--;
                    if (i2 == 0) {
                        this.leftover = i3 + 1;
                        return;
                    }
                    i = i4;
                }
                this.b2 = bArr[i] & 255;
                i2--;
                checkNewline();
                this.out.write(this.base64[this.b0 >> 2]);
                this.out.write(this.base64[((this.b0 << 4) & 63) | (this.b1 >> 4)]);
                this.out.write(this.base64[((this.b1 << 2) & 63) | (this.b2 >> 6)]);
                this.out.write(this.base64[this.b2 & 63]);
                this.linepos += 4;
                i++;
            }
            int i5 = i2 / 3;
            this.leftover = i2 - (i5 * 3);
            while (true) {
                int i6 = i5 - 1;
                if (i5 <= 0) {
                    break;
                }
                checkNewline();
                int i7 = i + 2;
                int i8 = ((bArr[i + 1] & 255) << 8) | ((bArr[i] & 255) << 16);
                i += 3;
                int i9 = i8 | (bArr[i7] & 255);
                this.out.write(this.base64[(i9 >>> 18) & 63]);
                this.out.write(this.base64[(i9 >>> 12) & 63]);
                this.out.write(this.base64[(i9 >>> 6) & 63]);
                this.out.write(this.base64[i9 & 63]);
                this.linepos += 4;
                i5 = i6;
            }
            int i10 = this.leftover;
            if (i10 == 1) {
                this.b0 = bArr[i] & 255;
            } else if (i10 == 2) {
                this.b0 = bArr[i] & 255;
                this.b1 = bArr[i + 1] & 255;
            }
        }

        @Override
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            int i = this.leftover;
            if (i == 1) {
                checkNewline();
                this.out.write(this.base64[this.b0 >> 2]);
                this.out.write(this.base64[(this.b0 << 4) & 63]);
                if (this.doPadding) {
                    this.out.write(61);
                    this.out.write(61);
                }
            } else if (i == 2) {
                checkNewline();
                this.out.write(this.base64[this.b0 >> 2]);
                this.out.write(this.base64[((this.b0 << 4) & 63) | (this.b1 >> 4)]);
                this.out.write(this.base64[(this.b1 << 2) & 63]);
                if (this.doPadding) {
                    this.out.write(61);
                }
            }
            this.leftover = 0;
            this.out.close();
        }
    }

    private static class DecInputStream extends InputStream {
        private final int[] base64;
        private final InputStream is;
        private final boolean isMIME;
        private int bits = 0;
        private int nextin = 18;
        private int nextout = -8;
        private boolean eof = false;
        private boolean closed = false;
        private byte[] sbBuf = new byte[1];

        DecInputStream(InputStream inputStream, int[] iArr, boolean z) {
            this.is = inputStream;
            this.base64 = iArr;
            this.isMIME = z;
        }

        @Override
        public int read() throws IOException {
            if (read(this.sbBuf, 0, 1) == -1) {
                return -1;
            }
            return this.sbBuf[0] & 255;
        }

        @Override
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3;
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            if (this.eof && this.nextout < 0) {
                return -1;
            }
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            if (this.nextout >= 0) {
                int i4 = i;
                while (i2 != 0) {
                    i3 = i4 + 1;
                    int i5 = this.bits;
                    int i6 = this.nextout;
                    bArr[i4] = (byte) (i5 >> i6);
                    i2--;
                    int i7 = i6 - 8;
                    this.nextout = i7;
                    if (i7 < 0) {
                        this.bits = 0;
                    } else {
                        i4 = i3;
                    }
                }
                return i4 - i;
            }
            i3 = i;
            while (i2 > 0) {
                int i8 = this.is.read();
                if (i8 == -1) {
                    this.eof = true;
                    int i9 = this.nextin;
                    if (i9 != 18) {
                        if (i9 == 12) {
                            throw new IOException("Base64 stream has one un-decoded dangling byte.");
                        }
                        int i10 = i3 + 1;
                        int i11 = this.bits;
                        bArr[i3] = (byte) (i11 >> 16);
                        int i12 = i2 - 1;
                        if (i9 != 0) {
                            i3 = i10;
                        } else if (i12 == 0) {
                            this.bits = i11 >> 8;
                            this.nextout = 0;
                            i3 = i10;
                        } else {
                            i3 += 2;
                            bArr[i10] = (byte) (i11 >> 8);
                        }
                    }
                    if (i3 == i) {
                        return -1;
                    }
                    return i3 - i;
                }
                if (i8 == 61) {
                    int i13 = this.nextin;
                    if (i13 == 18 || i13 == 12 || (i13 == 6 && this.is.read() != 61)) {
                        throw new IOException("Illegal base64 ending sequence:" + this.nextin);
                    }
                    int i14 = i3 + 1;
                    int i15 = this.bits;
                    bArr[i3] = (byte) (i15 >> 16);
                    int i16 = i2 - 1;
                    if (this.nextin != 0) {
                        i3 = i14;
                    } else if (i16 == 0) {
                        this.bits = i15 >> 8;
                        this.nextout = 0;
                        i3 = i14;
                    } else {
                        i3 += 2;
                        bArr[i14] = (byte) (i15 >> 8);
                    }
                    this.eof = true;
                    break;
                }
                int i17 = this.base64[i8];
                if (i17 == -1) {
                    if (!this.isMIME) {
                        throw new IOException("Illegal base64 character " + Integer.toString(i17, 16));
                    }
                } else {
                    int i18 = this.bits;
                    int i19 = this.nextin;
                    this.bits = (i17 << i19) | i18;
                    if (i19 == 0) {
                        this.nextin = 18;
                        this.nextout = 16;
                        while (true) {
                            int i20 = this.nextout;
                            if (i20 >= 0) {
                                int i21 = i3 + 1;
                                bArr[i3] = (byte) (this.bits >> i20);
                                i2--;
                                int i22 = i20 - 8;
                                this.nextout = i22;
                                if (i2 == 0 && i22 >= 0) {
                                    return i21 - i;
                                }
                                i3 = i21;
                            } else {
                                this.bits = 0;
                                break;
                            }
                        }
                    } else {
                        this.nextin = i19 - 6;
                    }
                }
            }
            return i3 - i;
        }

        @Override
        public int available() throws IOException {
            if (this.closed) {
                throw new IOException("Stream is closed");
            }
            return this.is.available();
        }

        @Override
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.is.close();
        }
    }
}
