package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.data.LocationModel;
import java.util.List;

public interface TSSyncCallback {
    void onFailure(String str);

    void onSuccess(List<LocationModel> list);
}
