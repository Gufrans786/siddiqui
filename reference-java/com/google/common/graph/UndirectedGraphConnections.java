package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class UndirectedGraphConnections<N, V> implements GraphConnections<N, V> {
    private final Map<N, V> adjacentNodeValues;

    private UndirectedGraphConnections(Map<N, V> adjacentNodeValues) {
        this.adjacentNodeValues = (Map) Preconditions.checkNotNull(adjacentNodeValues);
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$common$graph$ElementOrder$Type;

        static {
            int[] iArr = new int[ElementOrder.Type.values().length];
            $SwitchMap$com$google$common$graph$ElementOrder$Type = iArr;
            try {
                iArr[ElementOrder.Type.UNORDERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$graph$ElementOrder$Type[ElementOrder.Type.STABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static <N, V> UndirectedGraphConnections<N, V> of(ElementOrder<N> incidentEdgeOrder) {
        int i = AnonymousClass1.$SwitchMap$com$google$common$graph$ElementOrder$Type[incidentEdgeOrder.type().ordinal()];
        if (i == 1) {
            return new UndirectedGraphConnections<>(new HashMap(2, 1.0f));
        }
        if (i == 2) {
            return new UndirectedGraphConnections<>(new LinkedHashMap(2, 1.0f));
        }
        throw new AssertionError(incidentEdgeOrder.type());
    }

    static <N, V> UndirectedGraphConnections<N, V> ofImmutable(Map<N, V> adjacentNodeValues) {
        return new UndirectedGraphConnections<>(ImmutableMap.copyOf((Map) adjacentNodeValues));
    }

    @Override
    public Set<N> adjacentNodes() {
        return Collections.unmodifiableSet(this.adjacentNodeValues.keySet());
    }

    @Override
    public Set<N> predecessors() {
        return adjacentNodes();
    }

    @Override
    public Set<N> successors() {
        return adjacentNodes();
    }

    @Override
    public Iterator<EndpointPair<N>> incidentEdgeIterator(final N thisNode) {
        return Iterators.transform(this.adjacentNodeValues.keySet().iterator(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return EndpointPair.unordered(thisNode, obj);
            }
        });
    }

    @Override
    @CheckForNull
    public V value(N node) {
        return this.adjacentNodeValues.get(node);
    }

    @Override
    public void removePredecessor(N node) {
        removeSuccessor(node);
    }

    @Override
    @CheckForNull
    public V removeSuccessor(N node) {
        return this.adjacentNodeValues.remove(node);
    }

    @Override
    public void addPredecessor(N node, V value) {
        addSuccessor(node, value);
    }

    @Override
    @CheckForNull
    public V addSuccessor(N node, V value) {
        return this.adjacentNodeValues.put(node, value);
    }
}
