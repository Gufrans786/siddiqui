package com.intentfilter.androidpermissions.models;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.parceler.Parcel;

@Parcel
public class DeniedPermissions extends HashSet<DeniedPermission> {
    public static DeniedPermissions create(DeniedPermission... deniedPermissionArr) {
        DeniedPermissions deniedPermissions = new DeniedPermissions();
        deniedPermissions.addAll(Arrays.asList(deniedPermissionArr));
        return deniedPermissions;
    }

    public Set<String> stripped() {
        HashSet hashSet = new HashSet();
        Iterator<DeniedPermission> it = iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().permission);
        }
        return hashSet;
    }
}
