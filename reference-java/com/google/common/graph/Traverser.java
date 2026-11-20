package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.DoNotMock;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

@DoNotMock("Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)")
@ElementTypesAreNonnullByDefault
public abstract class Traverser<N> {
    private final SuccessorsFunction<N> successorFunction;

    private enum InsertionOrder {
        FRONT {
            @Override
            <T> void insertInto(Deque<T> deque, T value) {
                deque.addFirst(value);
            }
        },
        BACK {
            @Override
            <T> void insertInto(Deque<T> deque, T value) {
                deque.addLast(value);
            }
        };

        abstract <T> void insertInto(Deque<T> deque, T value);
    }

    abstract Traversal<N> newTraversal();

    private Traverser(SuccessorsFunction<N> successorFunction) {
        this.successorFunction = (SuccessorsFunction) Preconditions.checkNotNull(successorFunction);
    }

    public static <N> Traverser<N> forGraph(final SuccessorsFunction<N> graph) {
        return new Traverser<N>(graph) {
            @Override
            Traversal<N> newTraversal() {
                return Traversal.inGraph(graph);
            }
        };
    }

    public static <N> Traverser<N> forTree(final SuccessorsFunction<N> tree) {
        if (tree instanceof BaseGraph) {
            Preconditions.checkArgument(((BaseGraph) tree).isDirected(), "Undirected graphs can never be trees.");
        }
        if (tree instanceof Network) {
            Preconditions.checkArgument(((Network) tree).isDirected(), "Undirected networks can never be trees.");
        }
        return new Traverser<N>(tree) {
            @Override
            Traversal<N> newTraversal() {
                return Traversal.inTree(tree);
            }
        };
    }

    public final Iterable<N> breadthFirst(N startNode) {
        return breadthFirst((Iterable) ImmutableSet.of(startNode));
    }

    public final Iterable<N> breadthFirst(Iterable<? extends N> startNodes) {
        final ImmutableSet<N> immutableSetValidate = validate(startNodes);
        return new Iterable<N>(this) {
            final Traverser this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Iterator<N> iterator() {
                return this.this$0.newTraversal().breadthFirst(immutableSetValidate.iterator());
            }
        };
    }

    public final Iterable<N> depthFirstPreOrder(N startNode) {
        return depthFirstPreOrder((Iterable) ImmutableSet.of(startNode));
    }

    public final Iterable<N> depthFirstPreOrder(Iterable<? extends N> startNodes) {
        final ImmutableSet<N> immutableSetValidate = validate(startNodes);
        return new Iterable<N>(this) {
            final Traverser this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Iterator<N> iterator() {
                return this.this$0.newTraversal().preOrder(immutableSetValidate.iterator());
            }
        };
    }

    public final Iterable<N> depthFirstPostOrder(N startNode) {
        return depthFirstPostOrder((Iterable) ImmutableSet.of(startNode));
    }

    public final Iterable<N> depthFirstPostOrder(Iterable<? extends N> startNodes) {
        final ImmutableSet<N> immutableSetValidate = validate(startNodes);
        return new Iterable<N>(this) {
            final Traverser this$0;

            {
                this.this$0 = this;
            }

            @Override
            public Iterator<N> iterator() {
                return this.this$0.newTraversal().postOrder(immutableSetValidate.iterator());
            }
        };
    }

    private ImmutableSet<N> validate(Iterable<? extends N> startNodes) {
        ImmutableSet<N> immutableSetCopyOf = ImmutableSet.copyOf(startNodes);
        UnmodifiableIterator<N> it = immutableSetCopyOf.iterator();
        while (it.hasNext()) {
            this.successorFunction.successors(it.next());
        }
        return immutableSetCopyOf;
    }

    private static abstract class Traversal<N> {
        final SuccessorsFunction<N> successorFunction;

        @CheckForNull
        abstract N visitNext(Deque<Iterator<? extends N>> horizon);

        Traversal(SuccessorsFunction<N> successorFunction) {
            this.successorFunction = successorFunction;
        }

        static <N> Traversal<N> inGraph(SuccessorsFunction<N> graph) {
            final HashSet hashSet = new HashSet();
            return new Traversal<N>(graph) {
                @Override
                @CheckForNull
                N visitNext(Deque<Iterator<? extends N>> horizon) {
                    Iterator<? extends N> first = horizon.getFirst();
                    while (first.hasNext()) {
                        N next = first.next();
                        Objects.requireNonNull(next);
                        if (hashSet.add(next)) {
                            return next;
                        }
                    }
                    horizon.removeFirst();
                    return null;
                }
            };
        }

        static <N> Traversal<N> inTree(SuccessorsFunction<N> tree) {
            return new Traversal<N>(tree) {
                @Override
                @CheckForNull
                N visitNext(Deque<Iterator<? extends N>> deque) {
                    Iterator<? extends N> first = deque.getFirst();
                    if (first.hasNext()) {
                        return (N) Preconditions.checkNotNull(first.next());
                    }
                    deque.removeFirst();
                    return null;
                }
            };
        }

        final Iterator<N> breadthFirst(Iterator<? extends N> startNodes) {
            return topDown(startNodes, InsertionOrder.BACK);
        }

        final Iterator<N> preOrder(Iterator<? extends N> startNodes) {
            return topDown(startNodes, InsertionOrder.FRONT);
        }

        private Iterator<N> topDown(Iterator<? extends N> startNodes, final InsertionOrder order) {
            final ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.add(startNodes);
            return new AbstractIterator<N>(this) {
                final Traversal this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @CheckForNull
                protected N computeNext() {
                    do {
                        N n2 = (N) this.this$0.visitNext(arrayDeque);
                        if (n2 != null) {
                            Iterator<? extends N> it = this.this$0.successorFunction.successors(n2).iterator();
                            if (it.hasNext()) {
                                order.insertInto(arrayDeque, it);
                            }
                            return n2;
                        }
                    } while (!arrayDeque.isEmpty());
                    return endOfData();
                }
            };
        }

        final Iterator<N> postOrder(Iterator<? extends N> startNodes) {
            final ArrayDeque arrayDeque = new ArrayDeque();
            final ArrayDeque arrayDeque2 = new ArrayDeque();
            arrayDeque2.add(startNodes);
            return new AbstractIterator<N>(this) {
                final Traversal this$0;

                {
                    this.this$0 = this;
                }

                @Override
                @CheckForNull
                protected N computeNext() {
                    while (true) {
                        N n2 = (N) this.this$0.visitNext(arrayDeque2);
                        if (n2 != null) {
                            Iterator<? extends N> it = this.this$0.successorFunction.successors(n2).iterator();
                            if (!it.hasNext()) {
                                return n2;
                            }
                            arrayDeque2.addFirst(it);
                            arrayDeque.push(n2);
                        } else {
                            if (!arrayDeque.isEmpty()) {
                                return (N) arrayDeque.pop();
                            }
                            return endOfData();
                        }
                    }
                }
            };
        }
    }
}
