package org.bouncycastle.asn1;

import java.io.IOException;

public class DERSetParser implements ASN1SetParser {
    private ASN1StreamParser _parser;

    DERSetParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    @Override
    public DERObject getDERObject() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage(), e);
        }
    }

    @Override
    public DERObject getLoadedObject() throws IOException {
        return new DERSet(this._parser.readVector(), false);
    }

    @Override
    public DEREncodable readObject() throws IOException {
        return this._parser.readObject();
    }
}
