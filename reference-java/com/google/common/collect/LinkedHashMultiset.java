package com.google.common.collect;

import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public final class LinkedHashMultiset<E> extends AbstractMapBasedMultiset<E> {
    @Override
    public boolean contains(@CheckForNull Object element) {
        return super.contains(element);
    }

    @Override
    public Set elementSet() {
        return super.elementSet();
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    public static <E> LinkedHashMultiset<E> create() {
        return create(3);
    }

    public static <E> LinkedHashMultiset<E> create(int distinctElements) {
        return new LinkedHashMultiset<>(distinctElements);
    }

    public static <E> LinkedHashMultiset<E> create(Iterable<? extends E> elements) {
        LinkedHashMultiset<E> linkedHashMultisetCreate = create(Multisets.inferDistinctElements(elements));
        Iterables.addAll(linkedHashMultisetCreate, elements);
        return linkedHashMultisetCreate;
    }

    LinkedHashMultiset(int distinctElements) {
        super(distinctElements);
    }

    @Override
    ObjectCountHashMap<E> newBackingMap(int distinctElements) {
        return new ObjectCountLinkedHashMap(distinctElements);
    }
}
