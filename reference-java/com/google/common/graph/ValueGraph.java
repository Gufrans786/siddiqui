package com.google.common.graph;

import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public interface ValueGraph<N, V> extends BaseGraph<N> {
    @Override
    Set<N> adjacentNodes(N node);

    @Override
    boolean allowsSelfLoops();

    Graph<N> asGraph();

    @Override
    int degree(N node);

    @CheckForNull
    V edgeValueOrDefault(EndpointPair<N> endpoints, @CheckForNull V defaultValue);

    @CheckForNull
    V edgeValueOrDefault(N nodeU, N nodeV, @CheckForNull V defaultValue);

    @Override
    Set<EndpointPair<N>> edges();

    boolean equals(@CheckForNull Object object);

    @Override
    boolean hasEdgeConnecting(EndpointPair<N> endpoints);

    @Override
    boolean hasEdgeConnecting(N nodeU, N nodeV);

    int hashCode();

    @Override
    int inDegree(N node);

    @Override
    ElementOrder<N> incidentEdgeOrder();

    @Override
    Set<EndpointPair<N>> incidentEdges(N node);

    @Override
    boolean isDirected();

    @Override
    ElementOrder<N> nodeOrder();

    @Override
    Set<N> nodes();

    @Override
    int outDegree(N node);

    @Override
    Set<N> predecessors(N node);

    @Override
    Set<N> successors(N node);
}
