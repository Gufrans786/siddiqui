package com.google.common.graph;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.Immutable;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@Immutable(containerOf = {"N", ExifInterface.GPS_MEASUREMENT_INTERRUPTED})
@ElementTypesAreNonnullByDefault
public final class ImmutableValueGraph<N, V> extends StandardValueGraph<N, V> {
    @Override
    public Set adjacentNodes(Object node) {
        return super.adjacentNodes(node);
    }

    @Override
    public boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override
    @CheckForNull
    public Object edgeValueOrDefault(EndpointPair endpoints, @CheckForNull Object defaultValue) {
        return super.edgeValueOrDefault(endpoints, defaultValue);
    }

    @Override
    @CheckForNull
    public Object edgeValueOrDefault(Object nodeU, Object nodeV, @CheckForNull Object defaultValue) {
        return super.edgeValueOrDefault(nodeU, nodeV, defaultValue);
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
    public Set predecessors(Object node) {
        return super.predecessors(node);
    }

    @Override
    public Set successors(Object node) {
        return super.successors(node);
    }

    private ImmutableValueGraph(ValueGraph<N, V> graph) {
        super(ValueGraphBuilder.from(graph), getNodeConnections(graph), graph.edges().size());
    }

    public static <N, V> ImmutableValueGraph<N, V> copyOf(ValueGraph<N, V> graph) {
        if (graph instanceof ImmutableValueGraph) {
            return (ImmutableValueGraph) graph;
        }
        return new ImmutableValueGraph<>(graph);
    }

    @Deprecated
    public static <N, V> ImmutableValueGraph<N, V> copyOf(ImmutableValueGraph<N, V> graph) {
        return (ImmutableValueGraph) Preconditions.checkNotNull(graph);
    }

    @Override
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.stable();
    }

    @Override
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(this);
    }

    private static <N, V> ImmutableMap<N, GraphConnections<N, V>> getNodeConnections(ValueGraph<N, V> graph) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n2 : graph.nodes()) {
            builder.put(n2, connectionsOf(graph, n2));
        }
        return builder.buildOrThrow();
    }

    private static <N, V> GraphConnections<N, V> connectionsOf(final ValueGraph<N, V> graph, final N node) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return Objects.requireNonNull(graph.edgeValueOrDefault(node, obj, null));
            }
        };
        if (graph.isDirected()) {
            return DirectedGraphConnections.ofImmutable(node, graph.incidentEdges(node), function);
        }
        return UndirectedGraphConnections.ofImmutable(Maps.asMap(graph.adjacentNodes(node), function));
    }

    public static class Builder<N, V> {
        private final MutableValueGraph<N, V> mutableValueGraph;

        Builder(ValueGraphBuilder<N, V> graphBuilder) {
            this.mutableValueGraph = graphBuilder.copy().incidentEdgeOrder(ElementOrder.stable()).build();
        }

        public Builder<N, V> addNode(N node) {
            this.mutableValueGraph.addNode(node);
            return this;
        }

        public Builder<N, V> putEdgeValue(N nodeU, N nodeV, V value) {
            this.mutableValueGraph.putEdgeValue(nodeU, nodeV, value);
            return this;
        }

        public Builder<N, V> putEdgeValue(EndpointPair<N> endpoints, V value) {
            this.mutableValueGraph.putEdgeValue(endpoints, value);
            return this;
        }

        public ImmutableValueGraph<N, V> build() {
            return ImmutableValueGraph.copyOf(this.mutableValueGraph);
        }
    }
}
