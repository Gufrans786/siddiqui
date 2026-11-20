package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.nimbusds.jose.jwk.JWKParameterNames;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileDescriptorLocalUriFetcher extends LocalUriFetcher<ParcelFileDescriptor> {
    public FileDescriptorLocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override
    public ParcelFileDescriptor loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, JWKParameterNames.RSA_OTHER_PRIMES__PRIME_FACTOR);
        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
            throw new FileNotFoundException("FileDescriptor is null for: " + uri);
        }
        return assetFileDescriptorOpenAssetFileDescriptor.getParcelFileDescriptor();
    }

    @Override
    public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override
    public Class<ParcelFileDescriptor> getDataClass() {
        return ParcelFileDescriptor.class;
    }
}
