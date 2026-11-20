package com.mapbox.common.location;

import java.util.List;

public interface LocationObserver {
    void onLocationUpdateReceived(List<Location> list);
}
