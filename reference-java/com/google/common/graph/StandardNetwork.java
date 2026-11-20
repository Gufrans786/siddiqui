package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

@ElementTypesAreNonnullByDefault
class StandardNetwork<N, E> extends AbstractNetwork<N, E> {
    private final boolean allowsParallelEdges;
    private final boolean allowsSelfLoops;
    private final ElementOrder<E> edgeOrder;
    final MapIteratorCache<E, N> edgeToReferenceNode;
    private final boolean isDirected;
    final MapIteratorCache<N, NetworkConnections<N, E>> nodeConnections;
    private final ElementOrder<N> nodeOrder;

    StandardNetwork(NetworkBuilder<? super N, ? super E> builder) {
        this(builder, builder.nodeOrder.createMap(builder.expectedNodeCount.or(10).intValue()), builder.edgeOrder.createMap(builder.expectedEdgeCount.or(20).intValue()));
    }

    StandardNetwork(NetworkBuilder<? super N, ? super E> networkBuilder, Map<N, NetworkConnections<N, E>> map, Map<E, N> map2) {
        MapIteratorCache<N, NetworkConnections<N, E>> mapIteratorCache;
        this.isDirected = networkBuilder.directed;
        this.allowsParallelEdges = networkBuilder.allowsParallelEdges;
        this.allowsSelfLoops = networkBuilder.allowsSelfLoops;
        this.nodeOrder = (ElementOrder<N>) networkBuilder.nodeOrder.cast();
        this.edgeOrder = (ElementOrder<E>) networkBuilder.edgeOrder.cast();
        if (map instanceof TreeMap) {
            mapIteratorCache = new MapRetrievalCache<>(map);
        } else {
            mapIteratorCache = new MapIteratorCache<>(map);
        }
        this.nodeConnections = mapIteratorCache;
        this.edgeToReferenceNode = new MapIteratorCache<>(map2);
    }

    @Override
    public Set<N> nodes() {
        return this.nodeConnections.unmodifiableKeySet();
    }

    @Override
    public Set<E> edges() {
        return this.edgeToReferenceNode.unmodifiableKeySet();
    }

    @Override
    public boolean isDirected() {
        return this.isDirected;
    }

    @Override
    public boolean allowsParallelEdges() {
        return this.allowsParallelEdges;
    }

    @Override
    public boolean allowsSelfLoops() {
        return this.allowsSelfLoops;
    }

    @Override
    public ElementOrder<N> nodeOrder() {
        return this.nodeOrder;
    }

    @Override
    public ElementOrder<E> edgeOrder() {
        return this.edgeOrder;
    }

    @Override
    public Set<E> incidentEdges(N n2) {
        return (Set<E>) nodeInvalidatableSet(checkedConnections(n2).incidentEdges(), n2);
    }

    @Override
    public EndpointPair<N> incidentNodes(E edge) {
        N nCheckedReferenceNode = checkedReferenceNode(edge);
        return EndpointPair.of(this, nCheckedReferenceNode, ((NetworkConnections) Objects.requireNonNull(this.nodeConnections.get(nCheckedReferenceNode))).adjacentNode(edge));
    }

    @Override
    public Set<N> adjacentNodes(N n2) {
        return (Set<N>) nodeInvalidatableSet(checkedConnections(n2).adjacentNodes(), n2);
    }

    @Override
    public Set<E> edgesConnecting(N n2, N n3) {
        NetworkConnections<N, E> networkConnectionsCheckedConnections = checkedConnections(n2);
        if (!this.allowsSelfLoops && n2 == n3) {
            return ImmutableSet.of();
        }
        Preconditions.checkArgument(containsNode(n3), "Node %s is not an element of this graph.", n3);
        return (Set<E>) nodePairInvalidatableSet(networkConnectionsCheckedConnections.edgesConnecting(n3), n2, n3);
    }

    @Override
    public Set<E> inEdges(N n2) {
        return (Set<E>) nodeInvalidatableSet(checkedConnections(n2).inEdges(), n2);
    }

    @Override
    public Set<E> outEdges(N n2) {
        return (Set<E>) nodeInvalidatableSet(checkedConnections(n2).outEdges(), n2);
    }

    @Override
    public Set<N> predecessors(N n2) {
        return (Set<N>) nodeInvalidatableSet(checkedConnections(n2).predecessors(), n2);
    }

    @Override
    public Set<N> successors(N n2) {
        return (Set<N>) nodeInvalidatableSet(checkedConnections(n2).successors(), n2);
    }

    final NetworkConnections<N, E> checkedConnections(N node) {
        NetworkConnections<N, E> networkConnections = this.nodeConnections.get(node);
        if (networkConnections != null) {
            return networkConnections;
        }
        Preconditions.checkNotNull(node);
        throw new IllegalArgumentException(String.format("Node %s is not an element of this graph.", node));
    }

    final N checkedReferenceNode(E edge) {
        N n2 = this.edgeToReferenceNode.get(edge);
        if (n2 != null) {
            return n2;
        }
        Preconditions.checkNotNull(edge);
        throw new IllegalArgumentException(String.format("Edge %s is not an element of this graph.", edge));
    }

    final boolean containsNode(N node) {
        return this.nodeConnections.containsKey(node);
    }

    final boolean containsEdge(E edge) {
        return this.edgeToReferenceNode.containsKey(edge);
    }
}
