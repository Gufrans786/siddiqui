package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
public abstract class AbstractNetwork<N, E> implements Network<N, E> {

    class AnonymousClass1 extends AbstractGraph<N> {
        AnonymousClass1() {
        }

        @Override
        public Set<N> nodes() {
            return AbstractNetwork.this.nodes();
        }

        @Override
        public Set<EndpointPair<N>> edges() {
            if (AbstractNetwork.this.allowsParallelEdges()) {
                return super.edges();
            }
            return new C00291();
        }

        class C00291 extends AbstractSet<EndpointPair<N>> {
            C00291() {
            }

            @Override
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(AbstractNetwork.this.edges().iterator(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return this.f$0.m694lambda$iterator$0$comgooglecommongraphAbstractNetwork$1$1(obj);
                    }
                });
            }

            EndpointPair m694lambda$iterator$0$comgooglecommongraphAbstractNetwork$1$1(Object obj) {
                return AbstractNetwork.this.incidentNodes(obj);
            }

            @Override
            public int size() {
                return AbstractNetwork.this.edges().size();
            }

            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return AnonymousClass1.this.isOrderingCompatible(endpointPair) && AnonymousClass1.this.nodes().contains(endpointPair.nodeU()) && AnonymousClass1.this.successors(endpointPair.nodeU()).contains(endpointPair.nodeV());
            }
        }

        @Override
        public ElementOrder<N> nodeOrder() {
            return AbstractNetwork.this.nodeOrder();
        }

        @Override
        public ElementOrder<N> incidentEdgeOrder() {
            return ElementOrder.unordered();
        }

        @Override
        public boolean isDirected() {
            return AbstractNetwork.this.isDirected();
        }

        @Override
        public boolean allowsSelfLoops() {
            return AbstractNetwork.this.allowsSelfLoops();
        }

        @Override
        public Set<N> adjacentNodes(N node) {
            return AbstractNetwork.this.adjacentNodes(node);
        }

        @Override
        public Set<N> predecessors(N node) {
            return AbstractNetwork.this.predecessors((Object) node);
        }

        @Override
        public Set<N> successors(N node) {
            return AbstractNetwork.this.successors((Object) node);
        }
    }

    @Override
    public Graph<N> asGraph() {
        return new AnonymousClass1();
    }

    @Override
    public int degree(N node) {
        if (isDirected()) {
            return IntMath.saturatedAdd(inEdges(node).size(), outEdges(node).size());
        }
        return IntMath.saturatedAdd(incidentEdges(node).size(), edgesConnecting(node, node).size());
    }

    @Override
    public int inDegree(N node) {
        return isDirected() ? inEdges(node).size() : degree(node);
    }

    @Override
    public int outDegree(N node) {
        return isDirected() ? outEdges(node).size() : degree(node);
    }

    @Override
    public Set<E> adjacentEdges(E e) {
        EndpointPair<N> endpointPairIncidentNodes = incidentNodes(e);
        return (Set<E>) edgeInvalidatableSet(Sets.difference(Sets.union(incidentEdges(endpointPairIncidentNodes.nodeU()), incidentEdges(endpointPairIncidentNodes.nodeV())), ImmutableSet.of((Object) e)), e);
    }

    @Override
    public Set<E> edgesConnecting(N n2, N n3) {
        Set setUnmodifiableSet;
        Set<E> setOutEdges = outEdges(n2);
        Set<E> setInEdges = inEdges(n3);
        if (setOutEdges.size() <= setInEdges.size()) {
            setUnmodifiableSet = Collections.unmodifiableSet(Sets.filter(setOutEdges, connectedPredicate(n2, n3)));
        } else {
            setUnmodifiableSet = Collections.unmodifiableSet(Sets.filter(setInEdges, connectedPredicate(n3, n2)));
        }
        return (Set<E>) nodePairInvalidatableSet(setUnmodifiableSet, n2, n3);
    }

    @Override
    public Set<E> edgesConnecting(EndpointPair<N> endpoints) {
        validateEndpoints(endpoints);
        return edgesConnecting(endpoints.nodeU(), endpoints.nodeV());
    }

    private Predicate<E> connectedPredicate(final N nodePresent, final N nodeToCheck) {
        return new Predicate<E>(this) {
            final AbstractNetwork this$0;

            {
                this.this$0 = this;
            }

            @Override
            public boolean apply(E e) {
                return this.this$0.incidentNodes(e).adjacentNode(nodePresent).equals(nodeToCheck);
            }
        };
    }

    @Override
    @CheckForNull
    public E edgeConnectingOrNull(N nodeU, N nodeV) {
        Set<E> setEdgesConnecting = edgesConnecting(nodeU, nodeV);
        int size = setEdgesConnecting.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return setEdgesConnecting.iterator().next();
        }
        throw new IllegalArgumentException(String.format("Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead.", nodeU, nodeV));
    }

    @Override
    @CheckForNull
    public E edgeConnectingOrNull(EndpointPair<N> endpoints) {
        validateEndpoints(endpoints);
        return edgeConnectingOrNull(endpoints.nodeU(), endpoints.nodeV());
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
        if (isOrderingCompatible(endpoints)) {
            return hasEdgeConnecting(endpoints.nodeU(), endpoints.nodeV());
        }
        return false;
    }

    protected final void validateEndpoints(EndpointPair<?> endpoints) {
        Preconditions.checkNotNull(endpoints);
        Preconditions.checkArgument(isOrderingCompatible(endpoints), "Mismatch: endpoints' ordering is not compatible with directionality of the graph");
    }

    protected final boolean isOrderingCompatible(EndpointPair<?> endpoints) {
        return endpoints.isOrdered() == isDirected();
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Network)) {
            return false;
        }
        Network network = (Network) obj;
        return isDirected() == network.isDirected() && nodes().equals(network.nodes()) && edgeIncidentNodesMap(this).equals(edgeIncidentNodesMap(network));
    }

    @Override
    public final int hashCode() {
        return edgeIncidentNodesMap(this).hashCode();
    }

    public String toString() {
        return "isDirected: " + isDirected() + ", allowsParallelEdges: " + allowsParallelEdges() + ", allowsSelfLoops: " + allowsSelfLoops() + ", nodes: " + nodes() + ", edges: " + edgeIncidentNodesMap(this);
    }

    protected final <T> Set<T> edgeInvalidatableSet(Set<T> set, final E edge) {
        return InvalidatableSet.of((Set) set, (Supplier<Boolean>) new Supplier() {
            @Override
            public final Object get() {
                return this.f$0.m691xa0c212f3(edge);
            }
        }, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return String.format("Edge %s that was used to generate this set is no longer in the graph.", edge);
            }
        });
    }

    Boolean m691xa0c212f3(Object obj) {
        return Boolean.valueOf(edges().contains(obj));
    }

    protected final <T> Set<T> nodeInvalidatableSet(Set<T> set, final N node) {
        return InvalidatableSet.of((Set) set, (Supplier<Boolean>) new Supplier() {
            @Override
            public final Object get() {
                return this.f$0.m692xe136d8fa(node);
            }
        }, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return String.format("Node %s that was used to generate this set is no longer in the graph.", node);
            }
        });
    }

    Boolean m692xe136d8fa(Object obj) {
        return Boolean.valueOf(nodes().contains(obj));
    }

    protected final <T> Set<T> nodePairInvalidatableSet(Set<T> set, final N nodeU, final N nodeV) {
        return InvalidatableSet.of((Set) set, (Supplier<Boolean>) new Supplier() {
            @Override
            public final Object get() {
                return this.f$0.m693xa62961f6(nodeU, nodeV);
            }
        }, (Supplier<String>) new Supplier() {
            @Override
            public final Object get() {
                return String.format("Node %s or node %s that were used to generate this set are no longer in the graph.", nodeU, nodeV);
            }
        });
    }

    Boolean m693xa62961f6(Object obj, Object obj2) {
        return Boolean.valueOf(nodes().contains(obj) && nodes().contains(obj2));
    }

    private static <N, E> Map<E, EndpointPair<N>> edgeIncidentNodesMap(final Network<N, E> network) {
        Set<E> setEdges = network.edges();
        Objects.requireNonNull(network);
        return Maps.asMap(setEdges, new Function() {
            @Override
            public final Object apply(Object obj) {
                return network.incidentNodes(obj);
            }
        });
    }
}
