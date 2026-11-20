package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.collect.Maps;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class AbstractValueGraph<N, V> extends AbstractBaseGraph<N> implements ValueGraph<N, V> {
    @Override
    public int degree(Object node) {
        return super.degree(node);
    }

    @Override
    public Set edges() {
        return super.edges();
    }

    @Override
    public boolean hasEdgeConnecting(EndpointPair endpoints) {
        return super.hasEdgeConnecting(endpoints);
    }

    @Override
    public boolean hasEdgeConnecting(Object nodeU, Object nodeV) {
        return super.hasEdgeConnecting(nodeU, nodeV);
    }

    @Override
    public int inDegree(Object node) {
        return super.inDegree(node);
    }

    @Override
    public ElementOrder incidentEdgeOrder() {
        return super.incidentEdgeOrder();
    }

    @Override
    public Set incidentEdges(Object node) {
        return super.incidentEdges(node);
    }

    @Override
    public int outDegree(Object node) {
        return super.outDegree(node);
    }

    @Override
    public Graph<N> asGraph() {
        return new AbstractGraph<N>() {
            @Override
            public Set<N> nodes() {
                return AbstractValueGraph.this.nodes();
            }

            @Override
            public Set<EndpointPair<N>> edges() {
                return AbstractValueGraph.this.edges();
            }

            @Override
            public boolean isDirected() {
                return AbstractValueGraph.this.isDirected();
            }

            @Override
            public boolean allowsSelfLoops() {
                return AbstractValueGraph.this.allowsSelfLoops();
            }

            @Override
            public ElementOrder<N> nodeOrder() {
                return AbstractValueGraph.this.nodeOrder();
            }

            @Override
            public ElementOrder<N> incidentEdgeOrder() {
                return AbstractValueGraph.this.incidentEdgeOrder();
            }

            @Override
            public Set<N> adjacentNodes(N node) {
                return AbstractValueGraph.this.adjacentNodes(node);
            }

            @Override
            public Set<N> predecessors(N node) {
                return AbstractValueGraph.this.predecessors((Object) node);
            }

            @Override
            public Set<N> successors(N node) {
                return AbstractValueGraph.this.successors((Object) node);
            }

            @Override
            public int degree(N node) {
                return AbstractValueGraph.this.degree(node);
            }

            @Override
            public int inDegree(N node) {
                return AbstractValueGraph.this.inDegree(node);
            }

            @Override
            public int outDegree(N node) {
                return AbstractValueGraph.this.outDegree(node);
            }
        };
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueGraph)) {
            return false;
        }
        ValueGraph valueGraph = (ValueGraph) obj;
        return isDirected() == valueGraph.isDirected() && nodes().equals(valueGraph.nodes()) && edgeValueMap(this).equals(edgeValueMap(valueGraph));
    }

    @Override
    public final int hashCode() {
        return edgeValueMap(this).hashCode();
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + edgeValueMap(this);
    }

    private static <N, V> Map<EndpointPair<N>, V> edgeValueMap(final ValueGraph<N, V> graph) {
        return Maps.asMap(graph.edges(), new Function() {
            @Override
            public final Object apply(Object obj) {
                EndpointPair endpointPair = (EndpointPair) obj;
                return Objects.requireNonNull(graph.edgeValueOrDefault(endpointPair.nodeU(), endpointPair.nodeV(), null));
            }
        });
    }
}
