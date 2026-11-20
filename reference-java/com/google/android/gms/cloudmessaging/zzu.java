package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

final class zzu extends zzs {
    zzu(int i, int i2, Bundle bundle) {
        super(i, i2, bundle);
    }

    @Override
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zzd(bundle2);
    }

    @Override
    final boolean zzb() {
        return false;
    }
}
