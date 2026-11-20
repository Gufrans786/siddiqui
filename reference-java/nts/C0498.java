package nts;

import ch.qos.logback.core.CoreConstants;
import com.payfort.fortpaymentsdk.views.CardNumberHelper;
import java.util.Vector;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

public class C0498 {

    public static Vector f2811;

    public static C0181 f2812;

    public static Vector f2813;

    public static boolean f2814 = m5183();

    public static boolean m5183() {
        boolean z = f2814;
        if (z) {
            return z;
        }
        f2814 = true;
        f2813 = new Vector();
        f2811 = new Vector();
        f2813.add(new byte[]{0, 1, 0, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1});
        f2813.add(new byte[]{0, 1, 0, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{0, 1, 0, 1, 1, 0});
        f2813.add(new byte[]{0, 1, 0, 1, 1, 1});
        f2813.add(new byte[]{0, 1, 1, 0, 0, 0});
        f2813.add(new byte[]{0, 0, 0, 0, 0});
        f2813.add(new byte[]{0, 0, 0, 0, 1});
        f2813.add(new byte[]{0, 0, 0, 1, 0});
        f2813.add(new byte[]{0, 1, 1, 0, 0, 1});
        f2813.add(new byte[]{0, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{0, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{0, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{0, 1, 1, 1, 0, 1});
        f2813.add(new byte[]{0, 1, 1, 1, 1, 0});
        f2813.add(new byte[]{0, 1, 1, 1, 1, 1});
        f2813.add(new byte[]{1, 0, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 0, 0, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 0, 0, 0, 0, 1});
        f2813.add(new byte[]{1, 0, 1, 1, 1, 0, 1});
        f2813.add(new byte[]{1, 0, 1, 1, 1, 1, 0});
        f2813.add(new byte[]{1, 0, 1, 1, 1, 1, 1});
        f2813.add(new byte[]{1, 1, 0, 0, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 0, 0, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 0, 0, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 0, 0, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 0, 0, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 0, 0, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 0, 0, 1, 1, 0});
        f2813.add(new byte[]{1, 1, 0, 0, 1, 1, 1});
        f2813.add(new byte[]{1, 1, 0, 1, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 0, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 0, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 0, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 0, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 0, 1, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 0, 1, 1, 1, 0});
        f2813.add(new byte[]{1, 1, 0, 1, 1, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 0, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 0, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 0, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 0, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 0, 0, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1});
        f2813.add(new byte[]{0, 0, 0, 1, 1});
        f2813.add(new byte[]{1, 0, 0, 0, 1, 1});
        f2813.add(new byte[]{0, 0, 1, 0, 0});
        f2813.add(new byte[]{1, 0, 0, 1, 0, 0});
        f2813.add(new byte[]{0, 0, 1, 0, 1});
        f2813.add(new byte[]{1, 0, 0, 1, 0, 1});
        f2813.add(new byte[]{1, 0, 0, 1, 1, 0});
        f2813.add(new byte[]{1, 0, 0, 1, 1, 1});
        f2813.add(new byte[]{0, 0, 1, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 0, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 0, 1, 0, 1});
        f2813.add(new byte[]{1, 0, 1, 0, 0, 0});
        f2813.add(new byte[]{1, 0, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 0, 1, 0, 1, 0});
        f2813.add(new byte[]{0, 0, 1, 1, 1});
        f2813.add(new byte[]{1, 0, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 0, 1, 1, 0});
        f2813.add(new byte[]{1, 0, 1, 1, 0, 0});
        f2813.add(new byte[]{0, 1, 0, 0, 0});
        f2813.add(new byte[]{0, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 0, 1, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 0, 1, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 0, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 0, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 0, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 0, 1, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1});
        f2813.add(new byte[]{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1});
        f2811.add(Character.valueOf(CardNumberHelper.DIVIDER));
        f2811.add('!');
        f2811.add('\"');
        f2811.add('#');
        f2811.add('$');
        f2811.add(Character.valueOf(CoreConstants.PERCENT_CHAR));
        f2811.add(Character.valueOf(Typography.amp));
        f2811.add(Character.valueOf(CoreConstants.SINGLE_QUOTE_CHAR));
        f2811.add(Character.valueOf(CoreConstants.LEFT_PARENTHESIS_CHAR));
        f2811.add(Character.valueOf(CoreConstants.RIGHT_PARENTHESIS_CHAR));
        f2811.add('*');
        f2811.add('+');
        f2811.add(',');
        f2811.add(Character.valueOf(CoreConstants.DASH_CHAR));
        f2811.add(Character.valueOf(CoreConstants.DOT));
        f2811.add('/');
        f2811.add('0');
        f2811.add('1');
        f2811.add('2');
        f2811.add('3');
        f2811.add('4');
        f2811.add('5');
        f2811.add('6');
        f2811.add('7');
        f2811.add('8');
        f2811.add('9');
        f2811.add(':');
        f2811.add(';');
        f2811.add(Character.valueOf(Typography.less));
        f2811.add('=');
        f2811.add(Character.valueOf(Typography.greater));
        f2811.add('?');
        f2811.add('@');
        f2811.add('A');
        f2811.add('B');
        f2811.add('C');
        f2811.add('D');
        f2811.add('E');
        f2811.add('F');
        f2811.add('G');
        f2811.add('H');
        f2811.add('I');
        f2811.add('J');
        f2811.add('K');
        f2811.add('L');
        f2811.add('M');
        f2811.add('N');
        f2811.add('O');
        f2811.add('P');
        f2811.add('Q');
        f2811.add('R');
        f2811.add('S');
        f2811.add('T');
        f2811.add('U');
        f2811.add('V');
        f2811.add('W');
        f2811.add('X');
        f2811.add('Y');
        f2811.add('Z');
        f2811.add(Character.valueOf(AbstractJsonLexerKt.BEGIN_LIST));
        f2811.add('\\');
        f2811.add(Character.valueOf(AbstractJsonLexerKt.END_LIST));
        f2811.add('^');
        f2811.add('_');
        f2811.add('`');
        f2811.add('a');
        f2811.add('b');
        f2811.add('c');
        f2811.add('d');
        f2811.add('e');
        f2811.add('f');
        f2811.add('g');
        f2811.add('h');
        f2811.add('i');
        f2811.add('j');
        f2811.add('k');
        f2811.add('l');
        f2811.add('m');
        f2811.add('n');
        f2811.add('o');
        f2811.add('p');
        f2811.add('q');
        f2811.add('r');
        f2811.add('s');
        f2811.add('t');
        f2811.add(Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC));
        f2811.add('v');
        f2811.add('w');
        f2811.add('x');
        f2811.add('y');
        f2811.add('z');
        f2811.add('{');
        f2811.add('|');
        f2811.add('}');
        f2811.add('~');
        f2812 = new C0181();
        return f2814;
    }

    public static byte[] m5184(String str) {
        C0301 c0301 = new C0301();
        int i = 0;
        byte b = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            int iIndexOf = f2811.indexOf(Character.valueOf(str.charAt(i2)));
            if (iIndexOf >= 0) {
                for (byte b2 : (byte[]) f2813.get(iIndexOf)) {
                    if (b2 == 1) {
                        b = (byte) (b | ((byte) (1 << (7 - i))));
                    }
                    i++;
                    if (i == 8) {
                        c0301.m4177(b);
                        i = 0;
                        b = 0;
                    }
                }
            }
        }
        if (i != 0) {
            while (i < 8) {
                b = (byte) (((byte) (1 << (7 - i))) | b);
                i++;
            }
            c0301.m4177(b);
        }
        return c0301.m4182();
    }

    public static String m5182(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        C0301 c0301 = new C0301();
        for (byte b : bArr) {
            for (int i = 0; i < 8; i++) {
                if ((b & (1 << (7 - i))) > 0) {
                    c0301.m4178(1);
                } else {
                    c0301.m4178(0);
                }
                C0181 c0181 = f2812;
                byte[] bArrM4182 = c0301.m4182();
                C0376 c0376 = c0181.f616;
                for (byte b2 : bArrM4182) {
                    c0376 = b2 == 1 ? c0376.f1954 : c0376.f1955;
                }
                if (c0376.f1955 == null && c0376.f1954 == null) {
                    stringBuffer.append(c0376.f1953);
                    c0301 = new C0301();
                }
            }
        }
        return stringBuffer.toString();
    }
}
