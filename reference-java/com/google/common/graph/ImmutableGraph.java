package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.Immutable;
import java.util.Set;

@Immutable(containerOf = {"N"})
@ElementTypesAreNonnullByDefault
public class ImmutableGraph<N> extends ForwardingGraph<N> {
    private final BaseGraph<N> backingGraph;

    @Override
    public Set adjacentNodes(Object node) {
        return super.adjacentNodes(node);
    }

    @Override
    public boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override
    public int degree(Object node) {
        return super.degree(node);
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
    public Set incidentEdges(Object node) {
        return super.incidentEdges(node);
    }

    @Override
    public boolean isDirected() {
        return super.isDirected();
    }

    @Override
    public ElementOrder nodeOrder() {
        return super.nodeOrder();
    }

    @Override
    public Set nodes() {
        return super.nodes();
    }

    @Override
    public int outDegree(Object node) {
        return super.outDegree(node);
    }

    @Override
    public Set predecessors(Object node) {
        return super.predecessors(node);
    }

    @Override
    public Set successors(Object node) {
        return super.successors(node);
    }

    ImmutableGraph(BaseGraph<N> backingGraph) {
        this.backingGraph = backingGraph;
    }

    public static <N> ImmutableGraph<N> copyOf(Graph<N> graph) {
        if (graph instanceof ImmutableGraph) {
            return (ImmutableGraph) graph;
        }
        return new ImmutableGraph<>(new StandardValueGraph(GraphBuilder.from(graph), getNodeConnections(graph), graph.edges().size()));
    }

    @Deprecated
    public static <N> ImmutableGraph<N> copyOf(ImmutableGraph<N> graph) {
        return (ImmutableGraph) Preconditions.checkNotNull(graph);
    }

    @Override
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.stable();
    }

    private static <N> ImmutableMap<N, GraphConnections<N, GraphConstants.Presence>> getNodeConnections(Graph<N> graph) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n2 : graph.nodes()) {
            builder.put(n2, connectionsOf(graph, n2));
        }
        return builder.buildOrThrow();
    }

    private static <N> GraphConnections<N, GraphConstants.Presence> connectionsOf(Graph<N> graph, N node) {
        Function functionConstant = Functions.constant(GraphConstants.Presence.EDGE_EXISTS);
        if (graph.isDirected()) {
            return DirectedGraphConnections.ofImmutable(node, graph.incidentEdges(node), functionConstant);
        }
        return UndirectedGraphConnections.ofImmutable(Maps.asMap(graph.adjacentNodes(node), functionConstant));
    }

    @Override
    BaseGraph<N> delegate() {
        return this.backingGraph;
    }

    public static class Builder<N> {
        private final MutableGraph<N> mutableGraph;

        Builder(GraphBuilder<N> graphBuilder) {
            this.mutableGraph = graphBuilder.copy().incidentEdgeOrder(ElementOrder.stable()).build();
        }

        public Builder<N> addNode(N node) {
            this.mutableGraph.addNode(node);
            return this;
        }

        public Builder<N> putEdge(N nodeU, N nodeV) {
            this.mutableGraph.putEdge(nodeU, nodeV);
            return this;
        }

        public Builder<N> putEdge(EndpointPair<N> endpoints) {
            this.mutableGraph.putEdge(endpoints);
            return this;
        }

        public ImmutableGraph<N> build() {
            return ImmutableGraph.copyOf(this.mutableGraph);
        }
    }
}
