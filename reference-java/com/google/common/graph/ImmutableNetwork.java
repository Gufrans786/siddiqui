package com.google.common.graph;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.Immutable;
import java.util.Map;
import java.util.Set;

@Immutable(containerOf = {"N", ExifInterface.LONGITUDE_EAST})
@ElementTypesAreNonnullByDefault
public final class ImmutableNetwork<N, E> extends StandardNetwork<N, E> {
    @Override
    public Set adjacentNodes(Object node) {
        return super.adjacentNodes(node);
    }

    @Override
    public boolean allowsParallelEdges() {
        return super.allowsParallelEdges();
    }

    @Override
    public boolean allowsSelfLoops() {
        return super.allowsSelfLoops();
    }

    @Override
    public ElementOrder edgeOrder() {
        return super.edgeOrder();
    }

    @Override
    public Set edges() {
        return super.edges();
    }

    @Override
    public Set edgesConnecting(Object nodeU, Object nodeV) {
        return super.edgesConnecting(nodeU, nodeV);
    }

    @Override
    public Set inEdges(Object node) {
        return super.inEdges(node);
    }

    @Override
    public Set incidentEdges(Object node) {
        return super.incidentEdges(node);
    }

    @Override
    public EndpointPair incidentNodes(Object edge) {
        return super.incidentNodes(edge);
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
    public Set outEdges(Object node) {
        return super.outEdges(node);
    }

    @Override
    public Set predecessors(Object node) {
        return super.predecessors(node);
    }

    @Override
    public Set successors(Object node) {
        return super.successors(node);
    }

    private ImmutableNetwork(Network<N, E> network) {
        super(NetworkBuilder.from(network), getNodeConnections(network), getEdgeToReferenceNode(network));
    }

    public static <N, E> ImmutableNetwork<N, E> copyOf(Network<N, E> network) {
        if (network instanceof ImmutableNetwork) {
            return (ImmutableNetwork) network;
        }
        return new ImmutableNetwork<>(network);
    }

    @Deprecated
    public static <N, E> ImmutableNetwork<N, E> copyOf(ImmutableNetwork<N, E> network) {
        return (ImmutableNetwork) Preconditions.checkNotNull(network);
    }

    @Override
    public ImmutableGraph<N> asGraph() {
        return new ImmutableGraph<>(super.asGraph());
    }

    private static <N, E> Map<N, NetworkConnections<N, E>> getNodeConnections(Network<N, E> network) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (N n2 : network.nodes()) {
            builder.put(n2, connectionsOf(network, n2));
        }
        return builder.buildOrThrow();
    }

    private static <N, E> Map<E, N> getEdgeToReferenceNode(Network<N, E> network) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        for (E e : network.edges()) {
            builder.put(e, network.incidentNodes(e).nodeU());
        }
        return builder.buildOrThrow();
    }

    private static <N, E> NetworkConnections<N, E> connectionsOf(Network<N, E> network, N node) {
        if (network.isDirected()) {
            Map mapAsMap = Maps.asMap(network.inEdges(node), sourceNodeFn(network));
            Map mapAsMap2 = Maps.asMap(network.outEdges(node), targetNodeFn(network));
            int size = network.edgesConnecting(node, node).size();
            if (network.allowsParallelEdges()) {
                return DirectedMultiNetworkConnections.ofImmutable(mapAsMap, mapAsMap2, size);
            }
            return DirectedNetworkConnections.ofImmutable(mapAsMap, mapAsMap2, size);
        }
        Map mapAsMap3 = Maps.asMap(network.incidentEdges(node), adjacentNodeFn(network, node));
        if (network.allowsParallelEdges()) {
            return UndirectedMultiNetworkConnections.ofImmutable(mapAsMap3);
        }
        return UndirectedNetworkConnections.ofImmutable(mapAsMap3);
    }

    private static <N, E> Function<E, N> sourceNodeFn(final Network<N, E> network) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return network.incidentNodes(obj).source();
            }
        };
    }

    private static <N, E> Function<E, N> targetNodeFn(final Network<N, E> network) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return network.incidentNodes(obj).target();
            }
        };
    }

    private static <N, E> Function<E, N> adjacentNodeFn(final Network<N, E> network, final N node) {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return network.incidentNodes(obj).adjacentNode(node);
            }
        };
    }

    public static class Builder<N, E> {
        private final MutableNetwork<N, E> mutableNetwork;

        Builder(NetworkBuilder<N, E> networkBuilder) {
            this.mutableNetwork = (MutableNetwork<N, E>) networkBuilder.build();
        }

        public Builder<N, E> addNode(N node) {
            this.mutableNetwork.addNode(node);
            return this;
        }

        public Builder<N, E> addEdge(N nodeU, N nodeV, E edge) {
            this.mutableNetwork.addEdge(nodeU, nodeV, edge);
            return this;
        }

        public Builder<N, E> addEdge(EndpointPair<N> endpoints, E edge) {
            this.mutableNetwork.addEdge(endpoints, edge);
            return this;
        }

        public ImmutableNetwork<N, E> build() {
            return ImmutableNetwork.copyOf(this.mutableNetwork);
        }
    }
}
