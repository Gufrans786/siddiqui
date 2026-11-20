package com.google.common.graph;

import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractUndirectedNetworkConnections<N, E> implements NetworkConnections<N, E> {
    final Map<E, N> incidentEdgeMap;

    AbstractUndirectedNetworkConnections(Map<E, N> incidentEdgeMap) {
        this.incidentEdgeMap = (Map) Preconditions.checkNotNull(incidentEdgeMap);
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
    public Set<E> incidentEdges() {
        return Collections.unmodifiableSet(this.incidentEdgeMap.keySet());
    }

    @Override
    public Set<E> inEdges() {
        return incidentEdges();
    }

    @Override
    public Set<E> outEdges() {
        return incidentEdges();
    }

    @Override
    public N adjacentNode(E e) {
        return (N) Objects.requireNonNull(this.incidentEdgeMap.get(e));
    }

    @Override
    @CheckForNull
    public N removeInEdge(E edge, boolean isSelfLoop) {
        if (isSelfLoop) {
            return null;
        }
        return removeOutEdge(edge);
    }

    @Override
    public N removeOutEdge(E e) {
        return (N) Objects.requireNonNull(this.incidentEdgeMap.remove(e));
    }

    @Override
    public void addInEdge(E edge, N node, boolean isSelfLoop) {
        if (isSelfLoop) {
            return;
        }
        addOutEdge(edge, node);
    }

    @Override
    public void addOutEdge(E edge, N node) {
        Preconditions.checkState(this.incidentEdgeMap.put(edge, node) == null);
    }
}
