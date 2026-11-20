package com.google.common.graph;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Set;
import javax.annotation.CheckForNull;

@DoNotMock("Use GraphBuilder to create a real instance")
@ElementTypesAreNonnullByDefault
public interface Graph<N> extends BaseGraph<N> {
    Set<N> adjacentNodes(N node);

    boolean allowsSelfLoops();

    @Override
    int degree(N node);

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

    boolean isDirected();

    ElementOrder<N> nodeOrder();

    Set<N> nodes();

    @Override
    int outDegree(N node);

    @Override
    Set<N> predecessors(N node);

    @Override
    Set<N> successors(N node);
}
