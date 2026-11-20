package androidx.work;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class OverwritingInputMerger extends InputMerger {
    @Override
    public Data merge(List<Data> inputs) {
        Data.Builder builder = new Data.Builder();
        HashMap map = new HashMap();
        Iterator<Data> it = inputs.iterator();
        while (it.hasNext()) {
            map.putAll(it.next().getKeyValueMap());
        }
        builder.putAll(map);
        return builder.build();
    }
}
