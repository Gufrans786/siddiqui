package ch.qos.logback.classic.turbo;

import java.util.LinkedHashMap;
import java.util.Map;

class LRUMessageCache extends LinkedHashMap<String, Integer> {
    private static final long serialVersionUID = 1;
    final int cacheSize;

    LRUMessageCache(int i) {
        super((int) (i * 1.3333334f), 0.75f, true);
        if (i < 1) {
            throw new IllegalArgumentException("Cache size cannot be smaller than 1");
        }
        this.cacheSize = i;
    }

    @Override
    public synchronized void clear() {
        super.clear();
    }

    int getMessageCountAndThenIncrement(String str) {
        Integer numValueOf;
        if (str == null) {
            return 0;
        }
        synchronized (this) {
            Integer num = (Integer) super.get(str);
            numValueOf = num == null ? 0 : Integer.valueOf(num.intValue() + 1);
            super.put(str, numValueOf);
        }
        return numValueOf.intValue();
    }

    @Override
    protected boolean removeEldestEntry(Map.Entry<String, Integer> entry) {
        return size() > this.cacheSize;
    }
}
