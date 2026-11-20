package com.google.common.math;

import com.google.common.base.Preconditions;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

@ElementTypesAreNonnullByDefault
abstract class ToDoubleRounder<X extends Number & Comparable<X>> {
    abstract X minus(X a, X b);

    abstract double roundToDoubleArbitrarily(X x);

    abstract int sign(X x);

    abstract X toX(double d, RoundingMode mode);

    ToDoubleRounder() {
    }

    final double roundToDouble(X x, RoundingMode mode) {
        Number x2;
        int iCompareTo;
        double dNextDown;
        Number x3;
        double dNextUp;
        int iCompareTo2;
        int i;
        boolean z;
        Preconditions.checkNotNull(x, "x");
        Preconditions.checkNotNull(mode, "mode");
        double dRoundToDoubleArbitrarily = roundToDoubleArbitrarily(x);
        if (Double.isInfinite(dRoundToDoubleArbitrarily)) {
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return ((double) sign(x)) * Double.MAX_VALUE;
                case 5:
                    return dRoundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.MAX_VALUE : Double.NEGATIVE_INFINITY;
                case 6:
                    return dRoundToDoubleArbitrarily == Double.POSITIVE_INFINITY ? Double.POSITIVE_INFINITY : -1.7976931348623157E308d;
                case 7:
                    break;
                case 8:
                    throw new ArithmeticException(x + " cannot be represented precisely as a double");
                default:
                    x2 = toX(dRoundToDoubleArbitrarily, RoundingMode.UNNECESSARY);
                    iCompareTo = ((Comparable) x).compareTo(x2);
                    switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()]) {
                        case 1:
                            if (sign(x) >= 0) {
                                if (iCompareTo < 0) {
                                    return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                                }
                            } else if (iCompareTo > 0) {
                                return Math.nextUp(dRoundToDoubleArbitrarily);
                            }
                        case 2:
                        case 3:
                        case 4:
                            if (iCompareTo >= 0) {
                                dNextUp = Math.nextUp(dRoundToDoubleArbitrarily);
                                if (dNextUp != Double.POSITIVE_INFINITY) {
                                    x3 = toX(dNextUp, RoundingMode.CEILING);
                                    iCompareTo2 = ((Comparable) minus(x, x2)).compareTo(minus(x3, x));
                                    if (iCompareTo2 >= 0) {
                                        if (iCompareTo2 <= 0) {
                                            i = AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()];
                                            if (i != 2) {
                                                if (i != 3) {
                                                    if (i == 4) {
                                                        if (sign(x) >= 0) {
                                                        }
                                                    } else {
                                                        throw new AssertionError("impossible");
                                                    }
                                                } else if (sign(x) >= 0) {
                                                }
                                            } else if ((Double.doubleToRawLongBits(dRoundToDoubleArbitrarily) & 1) == 0) {
                                            }
                                        }
                                        return dNextUp;
                                    }
                                    return dRoundToDoubleArbitrarily;
                                }
                            } else {
                                dNextDown = DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                                if (dNextDown != Double.NEGATIVE_INFINITY) {
                                    Number x4 = toX(dNextDown, RoundingMode.FLOOR);
                                    x3 = x2;
                                    x2 = x4;
                                    dNextUp = dRoundToDoubleArbitrarily;
                                    dRoundToDoubleArbitrarily = dNextDown;
                                    iCompareTo2 = ((Comparable) minus(x, x2)).compareTo(minus(x3, x));
                                    if (iCompareTo2 >= 0) {
                                        if (iCompareTo2 <= 0) {
                                            i = AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()];
                                            if (i != 2) {
                                                if (i != 3) {
                                                    if (i == 4) {
                                                        if (sign(x) >= 0) {
                                                        }
                                                    } else {
                                                        throw new AssertionError("impossible");
                                                    }
                                                } else if (sign(x) >= 0) {
                                                }
                                            } else if ((Double.doubleToRawLongBits(dRoundToDoubleArbitrarily) & 1) == 0) {
                                            }
                                        }
                                        return dNextUp;
                                    }
                                    return dRoundToDoubleArbitrarily;
                                }
                            }
                        case 5:
                            if (iCompareTo < 0) {
                                return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                            }
                            break;
                        case 6:
                            if (iCompareTo > 0) {
                                return Math.nextUp(dRoundToDoubleArbitrarily);
                            }
                            break;
                        case 7:
                            if (sign(x) >= 0) {
                                if (iCompareTo > 0) {
                                    return Math.nextUp(dRoundToDoubleArbitrarily);
                                }
                            } else if (iCompareTo < 0) {
                                return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                            }
                        case 8:
                            if (iCompareTo == 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            MathPreconditions.checkRoundingUnnecessary(z);
                            return dRoundToDoubleArbitrarily;
                        default:
                            throw new AssertionError("impossible");
                    }
                    break;
            }
        } else {
            x2 = toX(dRoundToDoubleArbitrarily, RoundingMode.UNNECESSARY);
            iCompareTo = ((Comparable) x).compareTo(x2);
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()]) {
                case 1:
                    if (sign(x) >= 0) {
                        if (iCompareTo < 0) {
                            return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                        }
                    } else if (iCompareTo > 0) {
                        return Math.nextUp(dRoundToDoubleArbitrarily);
                    }
                case 2:
                case 3:
                case 4:
                    if (iCompareTo >= 0) {
                        dNextUp = Math.nextUp(dRoundToDoubleArbitrarily);
                        if (dNextUp != Double.POSITIVE_INFINITY) {
                            x3 = toX(dNextUp, RoundingMode.CEILING);
                            iCompareTo2 = ((Comparable) minus(x, x2)).compareTo(minus(x3, x));
                            if (iCompareTo2 >= 0) {
                                if (iCompareTo2 <= 0) {
                                    i = AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()];
                                    if (i != 2) {
                                        if (i != 3) {
                                            if (i == 4) {
                                                if (sign(x) >= 0) {
                                                }
                                            } else {
                                                throw new AssertionError("impossible");
                                            }
                                        } else if (sign(x) >= 0) {
                                        }
                                    } else if ((Double.doubleToRawLongBits(dRoundToDoubleArbitrarily) & 1) == 0) {
                                    }
                                }
                                return dNextUp;
                            }
                            return dRoundToDoubleArbitrarily;
                        }
                    } else {
                        dNextDown = DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                        if (dNextDown != Double.NEGATIVE_INFINITY) {
                            Number x5 = toX(dNextDown, RoundingMode.FLOOR);
                            x3 = x2;
                            x2 = x5;
                            dNextUp = dRoundToDoubleArbitrarily;
                            dRoundToDoubleArbitrarily = dNextDown;
                            iCompareTo2 = ((Comparable) minus(x, x2)).compareTo(minus(x3, x));
                            if (iCompareTo2 >= 0) {
                                if (iCompareTo2 <= 0) {
                                    i = AnonymousClass1.$SwitchMap$java$math$RoundingMode[mode.ordinal()];
                                    if (i != 2) {
                                        if (i != 3) {
                                            if (i == 4) {
                                                if (sign(x) >= 0) {
                                                }
                                            } else {
                                                throw new AssertionError("impossible");
                                            }
                                        } else if (sign(x) >= 0) {
                                        }
                                    } else if ((Double.doubleToRawLongBits(dRoundToDoubleArbitrarily) & 1) == 0) {
                                    }
                                }
                                return dNextUp;
                            }
                            return dRoundToDoubleArbitrarily;
                        }
                    }
                case 5:
                    if (iCompareTo < 0) {
                        return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                    }
                    break;
                case 6:
                    if (iCompareTo > 0) {
                        return Math.nextUp(dRoundToDoubleArbitrarily);
                    }
                    break;
                case 7:
                    if (sign(x) >= 0) {
                        if (iCompareTo > 0) {
                            return Math.nextUp(dRoundToDoubleArbitrarily);
                        }
                    } else if (iCompareTo < 0) {
                        return DoubleUtils.nextDown(dRoundToDoubleArbitrarily);
                    }
                case 8:
                    if (iCompareTo == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    MathPreconditions.checkRoundingUnnecessary(z);
                    return dRoundToDoubleArbitrarily;
                default:
                    throw new AssertionError("impossible");
            }
        }
        return dRoundToDoubleArbitrarily;
    }

    static class AnonymousClass1 {
        static final int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }
}
