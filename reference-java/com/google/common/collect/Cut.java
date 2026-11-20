package com.google.common.collect;

import ch.qos.logback.core.CoreConstants;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

@ElementTypesAreNonnullByDefault
abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {
    private static final long serialVersionUID = 0;
    final C endpoint;

    Cut<C> canonical(DiscreteDomain<C> domain) {
        return this;
    }

    abstract void describeAsLowerBound(StringBuilder sb);

    abstract void describeAsUpperBound(StringBuilder sb);

    @CheckForNull
    abstract C greatestValueBelow(DiscreteDomain<C> domain);

    public abstract int hashCode();

    abstract boolean isLessThan(C value);

    @CheckForNull
    abstract C leastValueAbove(DiscreteDomain<C> domain);

    abstract BoundType typeAsLowerBound();

    abstract BoundType typeAsUpperBound();

    abstract Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain<C> domain);

    abstract Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain<C> domain);

    Cut(C endpoint) {
        this.endpoint = endpoint;
    }

    @Override
    public int compareTo(Cut<C> that) {
        if (that == belowAll()) {
            return 1;
        }
        if (that == aboveAll()) {
            return -1;
        }
        int iCompareOrThrow = Range.compareOrThrow(this.endpoint, that.endpoint);
        return iCompareOrThrow != 0 ? iCompareOrThrow : Boolean.compare(this instanceof AboveValue, that instanceof AboveValue);
    }

    C endpoint() {
        return this.endpoint;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof Cut) {
            try {
                if (compareTo((Cut) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    static <C extends Comparable> Cut<C> belowAll() {
        return BelowAll.INSTANCE;
    }

    private static final class BelowAll extends Cut<Comparable<?>> {
        private static final BelowAll INSTANCE = new BelowAll();
        private static final long serialVersionUID = 0;

        @Override
        public int compareTo(Cut<Comparable<?>> o) {
            return o == this ? 0 : -1;
        }

        @Override
        boolean isLessThan(Comparable<?> value) {
            return true;
        }

        private BelowAll() {
            super("");
        }

        @Override
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        BoundType typeAsLowerBound() {
            throw new IllegalStateException();
        }

        @Override
        BoundType typeAsUpperBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain<Comparable<?>> domain) {
            throw new IllegalStateException();
        }

        @Override
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain<Comparable<?>> domain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        void describeAsLowerBound(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override
        void describeAsUpperBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override
        Comparable<?> leastValueAbove(DiscreteDomain<Comparable<?>> domain) {
            return domain.minValue();
        }

        @Override
        Comparable<?> greatestValueBelow(DiscreteDomain<Comparable<?>> domain) {
            throw new AssertionError();
        }

        @Override
        Cut<Comparable<?>> canonical(DiscreteDomain<Comparable<?>> domain) {
            try {
                return Cut.belowValue(domain.minValue());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "-∞";
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    static <C extends Comparable> Cut<C> aboveAll() {
        return AboveAll.INSTANCE;
    }

    private static final class AboveAll extends Cut<Comparable<?>> {
        private static final AboveAll INSTANCE = new AboveAll();
        private static final long serialVersionUID = 0;

        @Override
        public int compareTo(Cut<Comparable<?>> o) {
            return o == this ? 0 : 1;
        }

        @Override
        boolean isLessThan(Comparable<?> value) {
            return false;
        }

        private AboveAll() {
            super("");
        }

        @Override
        Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override
        BoundType typeAsLowerBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        BoundType typeAsUpperBound() {
            throw new IllegalStateException();
        }

        @Override
        Cut<Comparable<?>> withLowerBoundType(BoundType boundType, DiscreteDomain<Comparable<?>> domain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override
        Cut<Comparable<?>> withUpperBoundType(BoundType boundType, DiscreteDomain<Comparable<?>> domain) {
            throw new IllegalStateException();
        }

        @Override
        void describeAsLowerBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override
        void describeAsUpperBound(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override
        Comparable<?> leastValueAbove(DiscreteDomain<Comparable<?>> domain) {
            throw new AssertionError();
        }

        @Override
        Comparable<?> greatestValueBelow(DiscreteDomain<Comparable<?>> domain) {
            return domain.maxValue();
        }

        @Override
        public int hashCode() {
            return System.identityHashCode(this);
        }

        public String toString() {
            return "+∞";
        }

        private Object readResolve() {
            return INSTANCE;
        }
    }

    static <C extends Comparable> Cut<C> belowValue(C endpoint) {
        return new BelowValue(endpoint);
    }

    private static final class BelowValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        @Override
        public int compareTo(Object that) {
            return super.compareTo((Cut) that);
        }

        BelowValue(C endpoint) {
            super((Comparable) Preconditions.checkNotNull(endpoint));
        }

        @Override
        boolean isLessThan(C value) {
            return Range.compareOrThrow(this.endpoint, value) <= 0;
        }

        @Override
        BoundType typeAsLowerBound() {
            return BoundType.CLOSED;
        }

        @Override
        BoundType typeAsUpperBound() {
            return BoundType.OPEN;
        }

        @Override
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain<C> domain) {
            int i = AnonymousClass1.$SwitchMap$com$google$common$collect$BoundType[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                Comparable comparablePrevious = domain.previous(this.endpoint);
                return comparablePrevious == null ? Cut.belowAll() : new AboveValue(comparablePrevious);
            }
            throw new AssertionError();
        }

        @Override
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain<C> domain) {
            int i = AnonymousClass1.$SwitchMap$com$google$common$collect$BoundType[boundType.ordinal()];
            if (i == 1) {
                Comparable comparablePrevious = domain.previous(this.endpoint);
                return comparablePrevious == null ? Cut.aboveAll() : new AboveValue(comparablePrevious);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override
        void describeAsLowerBound(StringBuilder sb) {
            sb.append(AbstractJsonLexerKt.BEGIN_LIST).append(this.endpoint);
        }

        @Override
        void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        }

        @Override
        C leastValueAbove(DiscreteDomain<C> domain) {
            return this.endpoint;
        }

        @Override
        @CheckForNull
        C greatestValueBelow(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.previous(this.endpoint);
        }

        @Override
        public int hashCode() {
            return this.endpoint.hashCode();
        }

        public String toString() {
            return "\\" + this.endpoint + "/";
        }
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$common$collect$BoundType;

        static {
            int[] iArr = new int[BoundType.values().length];
            $SwitchMap$com$google$common$collect$BoundType = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$common$collect$BoundType[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static <C extends Comparable> Cut<C> aboveValue(C endpoint) {
        return new AboveValue(endpoint);
    }

    private static final class AboveValue<C extends Comparable> extends Cut<C> {
        private static final long serialVersionUID = 0;

        @Override
        public int compareTo(Object that) {
            return super.compareTo((Cut) that);
        }

        AboveValue(C endpoint) {
            super((Comparable) Preconditions.checkNotNull(endpoint));
        }

        @Override
        boolean isLessThan(C value) {
            return Range.compareOrThrow(this.endpoint, value) < 0;
        }

        @Override
        BoundType typeAsLowerBound() {
            return BoundType.OPEN;
        }

        @Override
        BoundType typeAsUpperBound() {
            return BoundType.CLOSED;
        }

        @Override
        Cut<C> withLowerBoundType(BoundType boundType, DiscreteDomain<C> domain) {
            int i = AnonymousClass1.$SwitchMap$com$google$common$collect$BoundType[boundType.ordinal()];
            if (i == 1) {
                Comparable next = domain.next(this.endpoint);
                return next == null ? Cut.belowAll() : belowValue(next);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override
        Cut<C> withUpperBoundType(BoundType boundType, DiscreteDomain<C> domain) {
            int i = AnonymousClass1.$SwitchMap$com$google$common$collect$BoundType[boundType.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                Comparable next = domain.next(this.endpoint);
                return next == null ? Cut.aboveAll() : belowValue(next);
            }
            throw new AssertionError();
        }

        @Override
        void describeAsLowerBound(StringBuilder sb) {
            sb.append(CoreConstants.LEFT_PARENTHESIS_CHAR).append(this.endpoint);
        }

        @Override
        void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint).append(AbstractJsonLexerKt.END_LIST);
        }

        @Override
        @CheckForNull
        C leastValueAbove(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.next(this.endpoint);
        }

        @Override
        C greatestValueBelow(DiscreteDomain<C> domain) {
            return this.endpoint;
        }

        @Override
        Cut<C> canonical(DiscreteDomain<C> domain) {
            Comparable comparableLeastValueAbove = leastValueAbove(domain);
            return comparableLeastValueAbove != null ? belowValue(comparableLeastValueAbove) : Cut.aboveAll();
        }

        @Override
        public int hashCode() {
            return ~this.endpoint.hashCode();
        }

        public String toString() {
            return "/" + this.endpoint + "\\";
        }
    }
}
