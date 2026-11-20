package ch.qos.logback.core.spi;

import ch.qos.logback.core.filter.Filter;
import ch.qos.logback.core.util.COWArrayList;
import java.util.ArrayList;
import java.util.List;

public final class FilterAttachableImpl<E> implements FilterAttachable<E> {
    COWArrayList<Filter<E>> filterList = new COWArrayList<>(new Filter[0]);

    @Override
    public void addFilter(Filter<E> filter) {
        this.filterList.add(filter);
    }

    @Override
    public void clearAllFilters() {
        this.filterList.clear();
    }

    @Override
    public List<Filter<E>> getCopyOfAttachedFiltersList() {
        return new ArrayList(this.filterList);
    }

    @Override
    public FilterReply getFilterChainDecision(E e) {
        for (Filter<E> filter : this.filterList.asTypedArray()) {
            FilterReply filterReplyDecide = filter.decide(e);
            if (filterReplyDecide == FilterReply.DENY || filterReplyDecide == FilterReply.ACCEPT) {
                return filterReplyDecide;
            }
        }
        return FilterReply.NEUTRAL;
    }
}
