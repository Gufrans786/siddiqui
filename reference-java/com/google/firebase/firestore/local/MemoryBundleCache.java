package com.google.firebase.firestore.local;

import com.google.firebase.firestore.bundle.BundleMetadata;
import com.google.firebase.firestore.bundle.NamedQuery;
import java.util.HashMap;
import java.util.Map;

class MemoryBundleCache implements BundleCache {
    private final Map<String, BundleMetadata> bundles = new HashMap();
    private final Map<String, NamedQuery> namedQueries = new HashMap();

    MemoryBundleCache() {
    }

    @Override
    public BundleMetadata getBundleMetadata(String str) {
        return this.bundles.get(str);
    }

    @Override
    public void saveBundleMetadata(BundleMetadata bundleMetadata) {
        this.bundles.put(bundleMetadata.getBundleId(), bundleMetadata);
    }

    @Override
    public NamedQuery getNamedQuery(String str) {
        return this.namedQueries.get(str);
    }

    @Override
    public void saveNamedQuery(NamedQuery namedQuery) {
        this.namedQueries.put(namedQuery.getName(), namedQuery);
    }
}
