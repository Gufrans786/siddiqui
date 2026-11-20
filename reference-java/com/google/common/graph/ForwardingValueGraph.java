package com.google.common.graph;

import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class ForwardingValueGraph<N, V> extends AbstractValueGraph<N, V> {
    abstract ValueGraph<N, V> delegate();

    ForwardingValueGraph() {
    }

    @Override
    public Set<N> nodes() {
        return delegate().nodes();
    }

    @Override
    protected long edgeCount() {
        return delegate().edges().size();
    }

    @Override
    public boolean isDirected() {
        return delegate().isDirected();
    }

    @Override
    public boolean allowsSelfLoops() {
        return delegate().allowsSelfLoops();
    }

    @Override
    public ElementOrder<N> nodeOrder() {
        return delegate().nodeOrder();
    }

    @Override
    public ElementOrder<N> incidentEdgeOrder() {
        return delegate().incidentEdgeOrder();
    }

    @Override
    public Set<N> adjacentNodes(N node) {
        return delegate().adjacentNodes(node);
    }

    @Override
    public Set<N> predecessors(N node) {
        return delegate().predecessors((Object) node);
    }

    @Override
    public Set<N> successors(N node) {
        return delegate().successors((Object) node);
    }

    @Override
    public int degree(N node) {
        return delegate().degree(node);
    }

    @Override
    public int inDegree(N node) {
        return delegate().inDegree(node);
    }

    @Override
    public int outDegree(N node) {
        return delegate().outDegree(node);
    }

    @Override
    public boolean hasEdgeConnecting(N nodeU, N nodeV) {
        return delegate().hasEdgeConnecting(nodeU, nodeV);
    }

    @Override
    public boolean hasEdgeConnecting(EndpointPair<N> endpoints) {
        return delegate().hasEdgeConnecting(endpoints);
    }

    @Override
    @CheckForNull
    public V edgeValueOrDefault(N nodeU, N nodeV, @CheckForNull V defaultValue) {
        return delegate().edgeValueOrDefault(nodeU, nodeV, defaultValue);
    }

    @Override
    @CheckForNull
    public V edgeValueOrDefault(EndpointPair<N> endpoints, @CheckForNull V defaultValue) {
        return delegate().edgeValueOrDefault(endpoints, defaultValue);
    }
}
