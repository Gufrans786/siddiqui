package androidx.core.location;

import android.location.LocationManager;
import java.util.concurrent.Callable;

public final class LocationManagerCompat$$ExternalSyntheticLambda2 implements Callable {
    public final LocationManager f$0;
    public final LocationManagerCompat.GpsStatusTransport f$1;

    public LocationManagerCompat$$ExternalSyntheticLambda2(LocationManager locationManager, LocationManagerCompat.GpsStatusTransport gpsStatusTransport) {
        this.f$0 = locationManager;
        this.f$1 = gpsStatusTransport;
    }

    @Override
    public final Object call() {
        return Boolean.valueOf(this.f$0.addGpsStatusListener(this.f$1));
    }
}
