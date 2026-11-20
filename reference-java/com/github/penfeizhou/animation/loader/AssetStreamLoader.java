package com.github.penfeizhou.animation.loader;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;

public class AssetStreamLoader extends StreamLoader {
    private final String mAssetName;
    private final Context mContext;

    public AssetStreamLoader(Context context, String str) {
        this.mContext = context.getApplicationContext();
        this.mAssetName = str;
    }

    @Override
    protected InputStream getInputStream() throws IOException {
        return this.mContext.getAssets().open(this.mAssetName);
    }
}
