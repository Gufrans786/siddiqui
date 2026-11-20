package com.mapbox.maps.renderer.gl;

import android.opengl.GLES20;
import android.opengl.Matrix;
import com.caverock.androidsvg.SVGParser;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0086\bJ\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\tJ\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002J\u0016\u0010\u0010\u001a\u00020\u0004*\u00020\u00112\n\u0010\u0012\u001a\u00020\u000b\"\u00020\u0013J\u0016\u0010\u0010\u001a\u00020\u0004*\u00020\u000b2\n\u0010\u0012\u001a\u00020\u000b\"\u00020\u0013J\n\u0010\u0014\u001a\u00020\u0011*\u00020\u000b¨\u0006\u0015"}, d2 = {"Lcom/mapbox/maps/renderer/gl/GlUtils;", "", "()V", "checkCompileStatus", "", "shader", "", "checkError", "cmd", "", "getIdentityMatrix", "", "loadShader", SVGParser.XML_STYLESHEET_ATTR_TYPE, "shaderCode", "throwIfError", "put", "Ljava/nio/FloatBuffer;", "values", "", "toFloatBuffer", "maps-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GlUtils {
    public static final GlUtils INSTANCE = new GlUtils();

    public static void checkError$default(GlUtils glUtils, String str, int i, Object obj) {
    }

    public final void checkCompileStatus(int shader) {
    }

    public final void checkError(String cmd) {
    }

    private GlUtils() {
    }

    public final void put(FloatBuffer floatBuffer, float... values) {
        Intrinsics.checkNotNullParameter(floatBuffer, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        floatBuffer.rewind();
        for (float f : values) {
            floatBuffer.put(f);
        }
        floatBuffer.rewind();
    }

    public final FloatBuffer toFloatBuffer(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.rewind();
        Intrinsics.checkNotNullExpressionValue(floatBufferAsFloatBuffer, "allocateDirect(size * 4)…)\n      it.rewind()\n    }");
        return floatBufferAsFloatBuffer;
    }

    public final int loadShader(int type, String shaderCode) {
        Intrinsics.checkNotNullParameter(shaderCode, "shaderCode");
        int iGlCreateShader = GLES20.glCreateShader(type);
        GLES20.glShaderSource(iGlCreateShader, shaderCode);
        GLES20.glCompileShader(iGlCreateShader);
        return iGlCreateShader;
    }

    public final void throwIfError(String cmd) {
        Object objValueOf;
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            StringBuilder sbAppend = new StringBuilder().append(cmd).append(" - error in GL : ");
            switch (iGlGetError) {
                case 1280:
                    objValueOf = "GL_INVALID_ENUM";
                    break;
                case 1281:
                    objValueOf = "GL_INVALID_VALUE";
                    break;
                case 1282:
                    objValueOf = "GL_INVALID_OPERATION";
                    break;
                case 1283:
                case 1284:
                default:
                    objValueOf = Integer.valueOf(iGlGetError);
                    break;
                case 1285:
                    objValueOf = "GL_OUT_OF_MEMORY";
                    break;
                case 1286:
                    objValueOf = "GL_INVALID_FRAMEBUFFER_OPERATION";
                    break;
            }
            throw new RuntimeException(sbAppend.append(objValueOf).toString());
        }
    }

    public final float[] getIdentityMatrix() {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        return fArr;
    }

    public final void put(float[] fArr, float... values) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            fArr[i2] = values[i];
            i++;
            i2++;
        }
    }
}
