package com.google.common.graph;

import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class AbstractGraph<N> extends AbstractBaseGraph<N> implements Graph<N> {
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
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Graph)) {
            return false;
        }
        Graph graph = (Graph) obj;
        return isDirected() == graph.isDirected() && nodes().equals(graph.nodes()) && edges().equals(graph.edges());
    }

    @Override
    public final int hashCode() {
        return edges().hashCode();
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + edges();
    }
}
