package com.fastimage.svg;

import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParseException;
import java.io.IOException;
import java.io.InputStream;

public class SvgDecoder implements ResourceDecoder<InputStream, SVG> {
    @Override
    public boolean handles(InputStream inputStream, Options options) {
        return true;
    }

    @Override
    public Resource<SVG> decode(InputStream inputStream, int i, int i2, Options options) throws IOException {
        try {
            SVG fromInputStream = SVG.getFromInputStream(inputStream);
            if (i != Integer.MIN_VALUE) {
                fromInputStream.setDocumentWidth(i);
            }
            if (i2 != Integer.MIN_VALUE) {
                fromInputStream.setDocumentHeight(i2);
            }
            return new SimpleResource(fromInputStream);
        } catch (SVGParseException e) {
            throw new IOException("Cannot load SVG from stream", e);
        }
    }
}
