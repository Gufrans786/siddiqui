package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultiset;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
final class DirectedMultiNetworkConnections<N, E> extends AbstractDirectedNetworkConnections<N, E> {

    @CheckForNull
    @LazyInit
    private transient Reference<Multiset<N>> predecessorsReference;

    @CheckForNull
    @LazyInit
    private transient Reference<Multiset<N>> successorsReference;

    private DirectedMultiNetworkConnections(Map<E, N> inEdges, Map<E, N> outEdges, int selfLoopCount) {
        super(inEdges, outEdges, selfLoopCount);
    }

    static <N, E> DirectedMultiNetworkConnections<N, E> of() {
        return new DirectedMultiNetworkConnections<>(new HashMap(2, 1.0f), new HashMap(2, 1.0f), 0);
    }

    static <N, E> DirectedMultiNetworkConnections<N, E> ofImmutable(Map<E, N> inEdges, Map<E, N> outEdges, int selfLoopCount) {
        return new DirectedMultiNetworkConnections<>(ImmutableMap.copyOf((Map) inEdges), ImmutableMap.copyOf((Map) outEdges), selfLoopCount);
    }

    @Override
    public Set<N> predecessors() {
        return Collections.unmodifiableSet(predecessorsMultiset().elementSet());
    }

    private Multiset<N> predecessorsMultiset() {
        Multiset<N> multiset = (Multiset) getReference(this.predecessorsReference);
        if (multiset != null) {
            return multiset;
        }
        HashMultiset hashMultisetCreate = HashMultiset.create(this.inEdgeMap.values());
        this.predecessorsReference = new SoftReference(hashMultisetCreate);
        return hashMultisetCreate;
    }

    @Override
    public Set<N> successors() {
        return Collections.unmodifiableSet(successorsMultiset().elementSet());
    }

    public Multiset<N> successorsMultiset() {
        Multiset<N> multiset = (Multiset) getReference(this.successorsReference);
        if (multiset != null) {
            return multiset;
        }
        HashMultiset hashMultisetCreate = HashMultiset.create(this.outEdgeMap.values());
        this.successorsReference = new SoftReference(hashMultisetCreate);
        return hashMultisetCreate;
    }

    @Override
    public Set<E> edgesConnecting(final N node) {
        return new MultiEdgesConnecting<E>(this, this.outEdgeMap, node) {
            final DirectedMultiNetworkConnections this$0;

            {
                this.this$0 = this;
            }

            @Override
            public int size() {
                return this.this$0.successorsMultiset().count(node);
            }
        };
    }

    @Override
    public N removeInEdge(E e, boolean z) {
        N n2 = (N) super.removeInEdge(e, z);
        Multiset multiset = (Multiset) getReference(this.predecessorsReference);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n2));
        }
        return n2;
    }

    @Override
    public N removeOutEdge(E e) {
        N n2 = (N) super.removeOutEdge(e);
        Multiset multiset = (Multiset) getReference(this.successorsReference);
        if (multiset != null) {
            Preconditions.checkState(multiset.remove(n2));
        }
        return n2;
    }

    @Override
    public void addInEdge(E edge, N node, boolean isSelfLoop) {
        super.addInEdge(edge, node, isSelfLoop);
        Multiset multiset = (Multiset) getReference(this.predecessorsReference);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(node));
        }
    }

    @Override
    public void addOutEdge(E edge, N node) {
        super.addOutEdge(edge, node);
        Multiset multiset = (Multiset) getReference(this.successorsReference);
        if (multiset != null) {
            Preconditions.checkState(multiset.add(node));
        }
    }

    @CheckForNull
    private static <T> T getReference(@CheckForNull Reference<T> reference) {
        if (reference == null) {
            return null;
        }
        return reference.get();
    }
}
