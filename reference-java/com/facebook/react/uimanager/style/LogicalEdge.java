package com.facebook.react.uimanager.style;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H&j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0013"}, d2 = {"Lcom/facebook/react/uimanager/style/LogicalEdge;", "", "<init>", "(Ljava/lang/String;I)V", "ALL", "LEFT", "RIGHT", "TOP", "BOTTOM", "START", "END", "HORIZONTAL", "VERTICAL", "BLOCK_START", "BLOCK_END", "BLOCK", "toSpacingType", "", "Companion", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum LogicalEdge {
    ALL {
        @Override
        public int toSpacingType() {
            return 8;
        }
    },
    LEFT {
        @Override
        public int toSpacingType() {
            return 0;
        }
    },
    RIGHT {
        @Override
        public int toSpacingType() {
            return 2;
        }
    },
    TOP {
        @Override
        public int toSpacingType() {
            return 1;
        }
    },
    BOTTOM {
        @Override
        public int toSpacingType() {
            return 3;
        }
    },
    START {
        @Override
        public int toSpacingType() {
            return 4;
        }
    },
    END {
        @Override
        public int toSpacingType() {
            return 5;
        }
    },
    HORIZONTAL {
        @Override
        public int toSpacingType() {
            return 6;
        }
    },
    VERTICAL {
        @Override
        public int toSpacingType() {
            return 7;
        }
    },
    BLOCK_START {
        @Override
        public int toSpacingType() {
            return 11;
        }
    },
    BLOCK_END {
        @Override
        public int toSpacingType() {
            return 10;
        }
    },
    BLOCK {
        @Override
        public int toSpacingType() {
            return 9;
        }
    };

    private static final EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static final Companion INSTANCE = new Companion(null);

    LogicalEdge(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final LogicalEdge fromSpacingType(int i) {
        return INSTANCE.fromSpacingType(i);
    }

    public static EnumEntries<LogicalEdge> getEntries() {
        return $ENTRIES;
    }

    public abstract int toSpacingType();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/react/uimanager/style/LogicalEdge$Companion;", "", "<init>", "()V", "fromSpacingType", "Lcom/facebook/react/uimanager/style/LogicalEdge;", "spacingType", "", "ReactAndroid_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LogicalEdge fromSpacingType(int spacingType) {
            switch (spacingType) {
                case 0:
                    return LogicalEdge.LEFT;
                case 1:
                    return LogicalEdge.TOP;
                case 2:
                    return LogicalEdge.RIGHT;
                case 3:
                    return LogicalEdge.BOTTOM;
                case 4:
                    return LogicalEdge.START;
                case 5:
                    return LogicalEdge.END;
                case 6:
                    return LogicalEdge.HORIZONTAL;
                case 7:
                    return LogicalEdge.VERTICAL;
                case 8:
                    return LogicalEdge.ALL;
                case 9:
                    return LogicalEdge.BLOCK;
                case 10:
                    return LogicalEdge.BLOCK_END;
                case 11:
                    return LogicalEdge.BLOCK_START;
                default:
                    throw new IllegalArgumentException("Unknown spacing type: " + spacingType);
            }
        }
    }
}
