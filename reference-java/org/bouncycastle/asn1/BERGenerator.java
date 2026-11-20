package org.bouncycastle.asn1;

import ch.qos.logback.core.net.SyslogConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class BERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    protected BERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public BERGenerator(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this._tagged = true;
        this._isExplicit = z;
        this._tagNo = i;
    }

    private void writeHdr(int i) throws IOException {
        this._out.write(i);
        this._out.write(128);
    }

    @Override
    public OutputStream getRawOutputStream() {
        return this._out;
    }

    protected void writeBERBody(InputStream inputStream) throws IOException {
        while (true) {
            int i = inputStream.read();
            if (i < 0) {
                return;
            } else {
                this._out.write(i);
            }
        }
    }

    protected void writeBEREnd() throws IOException {
        this._out.write(0);
        this._out.write(0);
        if (this._tagged && this._isExplicit) {
            this._out.write(0);
            this._out.write(0);
        }
    }

    protected void writeBERHeader(int i) throws IOException {
        if (!this._tagged) {
            writeHdr(i);
            return;
        }
        int i2 = this._tagNo;
        int i3 = i2 | 128;
        if (this._isExplicit) {
            writeHdr(i2 | SyslogConstants.LOG_LOCAL4);
        } else {
            if ((i & 32) == 0) {
                writeHdr(i3);
                return;
            }
            i = i2 | SyslogConstants.LOG_LOCAL4;
        }
        writeHdr(i);
    }
}
