package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import com.nimbusds.jose.jwk.JWKParameterNames;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a6\u0010\b\u001a\u00060\u0002j\u0002`\u00032\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\n\u0010\n\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u000b\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a&\u0010\u000e\u001a\u00020\u000f*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a2\u0010\u0013\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\b\b\u0002\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0016\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a&\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a*\u0010\u001a\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001e\u0010!\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001a\u0010$\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0005\u001a\u001a\u0010&\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0000ø\u0001\u0000¢\u0006\u0004\b'\u0010\u0005\u001a+\u0010(\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a+\u0010+\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\n\u0010\u0010\u001a\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b,\u0010*\u001a'\u0010-\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b.\u0010\u0019\u001a'\u0010/\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0019\u001a&\u00101\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u00032\u0006\u00102\u001a\u000203H\u0000ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a\u001f\u00106\u001a\u00060\u0002j\u0002`\u0003*\u00060\u0002j\u0002`\u0003H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b7\u0010#\"\u001c\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005*\f\b\u0000\u00108\"\u00020\u00022\u00020\u0002\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u00069"}, d2 = {"x", "", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "getX-DnnuFBc", "(J)F", JWKParameterNames.ELLIPTIC_CURVE_Y_COORDINATE, "getY-DnnuFBc", "interpolate", "start", "stop", "fraction", "interpolate-dLqxh1s", "(JJF)J", "clockwise", "", "other", "clockwise-ybeJwSQ", "(JJ)Z", "copy", "copy-5P9i7ZU", "(JFF)J", "div", "operand", "div-so9K2fw", "(JF)J", "dotProduct", "dotProduct-ybeJwSQ", "(JJ)F", "otherX", "otherY", "dotProduct-5P9i7ZU", "(JFF)F", "getDirection", "getDirection-DnnuFBc", "(J)J", "getDistance", "getDistance-DnnuFBc", "getDistanceSquared", "getDistanceSquared-DnnuFBc", "minus", "minus-ybeJwSQ", "(JJ)J", "plus", "plus-ybeJwSQ", "rem", "rem-so9K2fw", "times", "times-so9K2fw", "transformed", "f", "Landroidx/graphics/shapes/PointTransformer;", "transformed-so9K2fw", "(JLandroidx/graphics/shapes/PointTransformer;)J", "unaryMinus", "unaryMinus-DnnuFBc", "Point", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class PointKt {
    public static final long m106copy5P9i7ZU(long j, float f, float f2) {
        return FloatFloatPair.m15constructorimpl(f, f2);
    }

    public static final float m112getDistanceDnnuFBc(long j) {
        return (float) Math.sqrt((m114getXDnnuFBc(j) * m114getXDnnuFBc(j)) + (m115getYDnnuFBc(j) * m115getYDnnuFBc(j)));
    }

    public static final float m113getDistanceSquaredDnnuFBc(long j) {
        return (m114getXDnnuFBc(j) * m114getXDnnuFBc(j)) + (m115getYDnnuFBc(j) * m115getYDnnuFBc(j));
    }

    public static final float m110dotProductybeJwSQ(long j, long j2) {
        return (m114getXDnnuFBc(j) * m114getXDnnuFBc(j2)) + (m115getYDnnuFBc(j) * m115getYDnnuFBc(j2));
    }

    public static final float m109dotProduct5P9i7ZU(long j, float f, float f2) {
        return (m114getXDnnuFBc(j) * f) + (m115getYDnnuFBc(j) * f2);
    }

    public static final boolean m105clockwiseybeJwSQ(long j, long j2) {
        return (m114getXDnnuFBc(j) * m115getYDnnuFBc(j2)) - (m115getYDnnuFBc(j) * m114getXDnnuFBc(j2)) > 0.0f;
    }

    public static final long m111getDirectionDnnuFBc(long j) {
        float fM112getDistanceDnnuFBc = m112getDistanceDnnuFBc(j);
        if (fM112getDistanceDnnuFBc <= 0.0f) {
            throw new IllegalArgumentException("Can't get the direction of a 0-length vector".toString());
        }
        return m108divso9K2fw(j, fM112getDistanceDnnuFBc);
    }

    public static final long m122unaryMinusDnnuFBc(long j) {
        return FloatFloatPair.m15constructorimpl(-m114getXDnnuFBc(j), -m115getYDnnuFBc(j));
    }

    public static final long m117minusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m15constructorimpl(m114getXDnnuFBc(j) - m114getXDnnuFBc(j2), m115getYDnnuFBc(j) - m115getYDnnuFBc(j2));
    }

    public static final long m118plusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m15constructorimpl(m114getXDnnuFBc(j) + m114getXDnnuFBc(j2), m115getYDnnuFBc(j) + m115getYDnnuFBc(j2));
    }

    public static final long m120timesso9K2fw(long j, float f) {
        return FloatFloatPair.m15constructorimpl(m114getXDnnuFBc(j) * f, m115getYDnnuFBc(j) * f);
    }

    public static final long m108divso9K2fw(long j, float f) {
        return FloatFloatPair.m15constructorimpl(m114getXDnnuFBc(j) / f, m115getYDnnuFBc(j) / f);
    }

    public static final long m119remso9K2fw(long j, float f) {
        return FloatFloatPair.m15constructorimpl(m114getXDnnuFBc(j) % f, m115getYDnnuFBc(j) % f);
    }

    public static final long m116interpolatedLqxh1s(long j, long j2, float f) {
        return FloatFloatPair.m15constructorimpl(Utils.interpolate(m114getXDnnuFBc(j), m114getXDnnuFBc(j2), f), Utils.interpolate(m115getYDnnuFBc(j), m115getYDnnuFBc(j2), f));
    }

    public static final long m121transformedso9K2fw(long j, PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        long jMo123transformXgqJiTY = f.mo123transformXgqJiTY(m114getXDnnuFBc(j), m115getYDnnuFBc(j));
        return FloatFloatPair.m15constructorimpl(Float.intBitsToFloat((int) (jMo123transformXgqJiTY >> 32)), Float.intBitsToFloat((int) (jMo123transformXgqJiTY & 4294967295L)));
    }

    public static final float m114getXDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final float m115getYDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    public static long m107copy5P9i7ZU$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Float.intBitsToFloat((int) (j >> 32));
        }
        if ((i & 2) != 0) {
            f2 = Float.intBitsToFloat((int) (4294967295L & j));
        }
        return m106copy5P9i7ZU(j, f, f2);
    }
}
