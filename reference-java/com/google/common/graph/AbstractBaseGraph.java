package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
abstract class AbstractBaseGraph<N> implements BaseGraph<N> {
    AbstractBaseGraph() {
    }

    protected long edgeCount() {
        Iterator<N> it = nodes().iterator();
        long jDegree = 0;
        while (it.hasNext()) {
            jDegree += (long) degree(it.next());
        }
        Preconditions.checkState((1 & jDegree) == 0);
        return jDegree >>> 1;
    }

    @Override
    public Set<EndpointPair<N>> edges() {
        return new AbstractSet<EndpointPair<N>>() {
            @Override
            public UnmodifiableIterator<EndpointPair<N>> iterator() {
                return EndpointPairIterator.of(AbstractBaseGraph.this);
            }

            @Override
            public int size() {
                return Ints.saturatedCast(AbstractBaseGraph.this.edgeCount());
            }

            @Override
            public boolean remove(@CheckForNull Object o) {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return AbstractBaseGraph.this.isOrderingCompatible(endpointPair) && AbstractBaseGraph.this.nodes().contains(endpointPair.nodeU()) && AbstractBaseGraph.this.successors(endpointPair.nodeU()).contains(endpointPair.nodeV());
            }
        };
    }

    @Override
    public ElementOrder<N> incidentEdgeOrder() {
        return ElementOrder.unordered();
    }

    @Override
    public Set<EndpointPair<N>> incidentEdges(N n2) {
        Preconditions.checkNotNull(n2);
        Preconditions.checkArgument(nodes().contains(n2), "Node %s is not an element of this graph.", n2);
        return (Set<EndpointPair<N>>) nodeInvalidatableSet(new AnonymousClass2(this, n2), n2);
    }

    class AnonymousClass2 extends IncidentEdgeSet<N> {
        AnonymousClass2(BaseGraph graph, Object node) {
            super(graph, node);
        }

        @Override
        public UnmodifiableIterator<EndpointPair<N>> iterator() {
            if (this.graph.isDirected()) {
                return Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(this.graph.predecessors((Object) this.node).iterator(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.f$0.m688lambda$iterator$0$comgooglecommongraphAbstractBaseGraph$2(obj);
                    }
                }), Iterators.transform(Sets.difference(this.graph.successors((Object) this.node), ImmutableSet.of(this.node)).iterator(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.f$0.m689lambda$iterator$1$comgooglecommongraphAbstractBaseGraph$2(obj);
                    }
                })));
            }
            return Iterators.unmodifiableIterator(Iterators.transform(this.graph.adjacentNodes(this.node).iterator(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return this.f$0.m690lambda$iterator$2$comgooglecommongraphAbstractBaseGraph$2(obj);
                }
            }));
        }

        EndpointPair m688lambda$iterator$0$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.ordered(obj, this.node);
        }

        EndpointPair m689lambda$iterator$1$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.ordered(this.node, obj);
        }

        EndpointPair m690lambda$iterator$2$comgooglecommongraphAbstractBaseGraph$2(Object obj) {
            return EndpointPair.unordered(this.node, obj);
        }
    }

    @Override
    public int degree(N node) {
        if (isDirected()) {
            return IntMath.saturatedAdd(predecessors((Object) node).size(), successors((Object) node).size());
        }
        Set<N> setAdjacentNodes = adjacentNodes(node);
        return IntMath.saturatedAdd(setAdjacentNodes.size(), (allowsSelfLoops() && setAdjacentNodes.contains(node)) ? 1 : 0);
    }

    @Override
    public int inDegree(N node) {
        return isDirected() ? predecessors((Object) node).size() : degree(node);
    }

    @Override
    public int outDegree(N node) {
        return isDirected() ? successors((Object) node).size() : degree(node);
    }

    @Override
    public boolean hasEdgeConnecting(N nodeU, N nodeV) {
        Preconditions.checkNotNull(nodeU);
        Preconditions.checkNotNull(nodeV);
        return nodes().contains(nodeU) && successors((Object) nodeU).contains(nodeV);
    }

    @Override
    public boolean hasEdgeConnecting(EndpointPair<N> endpoints) {
        Preconditions.checkNotNull(endpoints);
        if (!isOrderingCompatible(endpoints)) {
            return false;
        }
        N nNodeU = endpoints.nodeU();
        return nodes().contains(nNodeU) && successors((Object) nNodeU).contains(endpoints.nodeV());
    }

    protected final void validateEndpoints(EndpointPair<?> endpoints) {
        Preconditions.checkNotNull(endpoints);
        Preconditions.checkArgument(isOrderingCompatible(endpoints), "Mismatch: endpoints' ordering is not compatible with directionality of the graph");
    }

    protected final boolean isOrderingCompatible(EndpointPair<?> endpoints) {
        return endpoints.isOrdered() == isDirected();
    }

    protected final <T> Set<T> nodeInvalidatableSet(Set<T> set, final N node) {
        return InvalidatableSet.of((Set) set, (Supplier<Boolean>) new Supplier() {
            @Override
            public final Object get() {
                return this.f$0.m686xbbd68347(node);
            }
        }, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return String.format("Node %s that was used to generate this set is no longer in the graph.", node);
            }
        });
    }

    Boolean m686xbbd68347(Object obj) {
        return Boolean.valueOf(nodes().contains(obj));
    }

    protected final <T> Set<T> nodePairInvalidatableSet(Set<T> set, final N nodeU, final N nodeV) {
        return InvalidatableSet.of((Set) set, (Supplier<Boolean>) new Supplier() {
            @Override
            public final Object get() {
                return this.f$0.m687xe4abd43(nodeU, nodeV);
            }
        }, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return String.format("Node %s or node %s that were used to generate this set are no longer in the graph.", nodeU, nodeV);
            }
        });
    }

    Boolean m687xe4abd43(Object obj, Object obj2) {
        return Boolean.valueOf(nodes().contains(obj) && nodes().contains(obj2));
    }
}
