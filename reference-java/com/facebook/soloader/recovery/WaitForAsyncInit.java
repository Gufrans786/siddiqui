package com.facebook.soloader.recovery;

import com.facebook.soloader.AsyncInitSoSource;
import com.facebook.soloader.LogUtil;
import com.facebook.soloader.SoLoader;
import com.facebook.soloader.SoSource;
import com.facebook.soloader.UnpackingSoSource;

public class WaitForAsyncInit implements RecoveryStrategy {
    @Override
    public boolean recover(UnsatisfiedLinkError unsatisfiedLinkError, SoSource[] soSourceArr) {
        for (UnpackingSoSource unpackingSoSource : soSourceArr) {
            if (unpackingSoSource instanceof AsyncInitSoSource) {
                LogUtil.e(SoLoader.TAG, "Waiting on SoSource " + unpackingSoSource.getName());
                unpackingSoSource.waitUntilInitCompleted();
            }
        }
        return true;
    }
}
