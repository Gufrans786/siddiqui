package nts;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.HtmlCompat;
import androidx.core.view.PointerIconCompat;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.net.SyslogConstants;
import com.facebook.soloader.Elf64;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.rnmapbox.rnmbx.components.styles.RNMBXStyleValue;
import com.yalantis.ucrop.UCrop;
import java.util.Hashtable;
import java.util.Map;
import kotlin.io.encoding.Base64;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import okhttp3.internal.ws.WebSocketProtocol;
import sa.lg.android.locate.BuildConfig;

public class C0253 {

    public byte[] f1225;

    public byte[] f1226;

    public byte[] f1227;

    public int f1228;

    public int f1229;

    public byte[] f1230;

    public int f1231;

    public int f1232;

    public byte[] f1233;

    public int f1234;

    public byte[] f1235;

    public int f1236;

    public int f1237;

    public int f1238;

    public byte[] f1239;

    public static Hashtable f1189 = new Hashtable();

    public static byte[] f1100 = new byte[0];

    public static final String f1205 = C0642.m5854(129, 28, 7);

    public static final String f1183 = C0642.m5854(157, 32, 122);

    public static final String f1138 = C0642.m5854(189, 40, 107);

    public static final String f1159 = C0642.m5854(229, 40, 118);

    public static final String f1006 = C0642.m5854(269, 48, 9);

    public static final String f1134 = C0642.m5854(TypedValues.AttributesType.TYPE_EASING, 48, 83);

    public static final String f1180 = C0642.m5854(365, 56, 0);

    public static final String f1005 = C0642.m5854(421, 56, 1);

    public static final String f929 = C0642.m5854(477, 64, 104);

    public static final String f1108 = C0642.m5854(541, 64, 102);

    public static final String f924 = C0642.m5854(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 96, 48);

    public static final String f1164 = C0642.m5854(TypedValues.TransitionType.TYPE_FROM, 132, 110);

    public static final String f1199 = C0642.m5854(833, 42, 123);

    public static final String f1097 = C0642.m5854(875, 60, 86);

    public static final String f1023 = C0642.m5854(935, 72, 104);

    public static final String f1143 = C0642.m5854(PointerIconCompat.TYPE_CROSSHAIR, 104, 50);

    public static final String f1168 = C0642.m5854(1111, 144, 65);

    public static final String f1125 = C0642.m5854(1255, 28, 38);

    public static final String f926 = C0642.m5854(1283, 28, 111);

    public static final String f1127 = C0642.m5854(1311, 28, 69);

    public static final String f1105 = C0642.m5854(1339, 28, 43);

    public static final String f1132 = C0642.m5854(1367, 28, 121);

    public static final String f921 = C0642.m5854(1395, 40, 81);

    public static final String f1111 = C0642.m5854(1435, 28, 36);

    public static final String f1222 = C0642.m5854(1463, 28, 0);

    public static final String f990 = C0642.m5854(1491, 28, 117);

    public static final String f980 = C0642.m5854(1519, 28, 95);

    public static final String f1033 = C0642.m5854(1547, 28, 114);

    public static final String f984 = C0642.m5854(1575, 40, 63);

    public static final String f1069 = C0642.m5854(1615, 32, 30);

    public static final String f1103 = C0642.m5854(1647, 32, 28);

    public static final String f925 = C0642.m5854(1679, 32, 48);

    public static final String f1173 = C0642.m5854(1711, 32, 72);

    public static final String f1053 = C0642.m5854(1743, 32, 87);

    public static final String f1131 = C0642.m5854(1775, 40, 118);

    public static final String f1213 = C0642.m5854(1815, 32, 104);

    public static final String f963 = C0642.m5854(1847, 32, 49);

    public static final String f1063 = C0642.m5854(1879, 32, 39);

    public static final String f1030 = C0642.m5854(1911, 32, 59);

    public static final String f1078 = C0642.m5854(1943, 32, 10);

    public static final String f1179 = C0642.m5854(1975, 40, 93);

    public static final String f1073 = C0642.m5854(2015, 42, 78);

    public static final String f1025 = C0642.m5854(2057, 40, 41);

    public static final String f1068 = C0642.m5854(2097, 40, 15);

    public static final String f1051 = C0642.m5854(2137, 40, 73);

    public static final String f920 = C0642.m5854(2177, 40, 106);

    public static final String f1104 = C0642.m5854(2217, 42, 97);

    public static final String f991 = C0642.m5854(2259, 40, 105);

    public static final String f1042 = C0642.m5854(2299, 40, 111);

    public static final String f1086 = C0642.m5854(2339, 40, 98);

    public static final String f1212 = C0642.m5854(2379, 40, 91);

    public static final String f1198 = C0642.m5854(2419, 40, 37);

    public static final String f1022 = C0642.m5854(2459, 42, 51);

    public static final String f1221 = C0642.m5854(2501, 40, 89);

    public static final String f1098 = C0642.m5854(2541, 40, 37);

    public static final String f1074 = C0642.m5854(2581, 40, 13);

    public static final String f1153 = C0642.m5854(2621, 48, 29);

    public static final String f1080 = C0642.m5854(2669, 48, 65);

    public static final String f955 = C0642.m5854(2717, 48, 96);

    public static final String f1177 = C0642.m5854(2765, 48, 25);

    public static final String f979 = C0642.m5854(2813, 48, 26);

    public static final String f1011 = C0642.m5854(2861, 48, 114);

    public static final String f1120 = C0642.m5854(2909, 48, 97);

    public static final String f1204 = C0642.m5854(2957, 48, 119);

    public static final String f1211 = C0642.m5854(AuthApiStatusCodes.AUTH_URL_RESOLUTION, 40, 113);

    public static final String f1137 = C0642.m5854(3045, 58, 57);

    public static final String f983 = C0642.m5854(3103, 56, 64);

    public static final String f1115 = C0642.m5854(3159, 56, 8);

    public static final String f1094 = C0642.m5854(3215, 56, WebSocketProtocol.PAYLOAD_SHORT);

    public static final String f1148 = C0642.m5854(3271, 56, 66);

    public static final String f947 = C0642.m5854(3327, 56, 22);

    public static final String f1170 = C0642.m5854(3383, 56, 102);

    public static final String f1000 = C0642.m5854(3439, 56, 113);

    public static final String f919 = C0642.m5854(3495, 40, 22);

    public static final String f1157 = C0642.m5854(3535, 64, 64);

    public static final String f954 = C0642.m5854(3599, 64, 112);

    public static final String f1190 = C0642.m5854(3663, 64, 20);

    public static final String f1187 = C0642.m5854(3727, 64, 105);

    public static final String f997 = C0642.m5854(3791, 64, 87);

    public static final String f1136 = C0642.m5854(3855, 64, 61);

    public static final String f1224 = C0642.m5854(3919, 64, 63);

    public static final String f1061 = C0642.m5854(3983, 64, 6);

    public static final String f1216 = C0642.m5854(4047, 40, 41);

    public static final String f1178 = C0642.m5854(4087, 96, 76);

    public static final String f1085 = C0642.m5854(4183, 96, 13);

    public static final String f1095 = C0642.m5854(4279, 96, 76);

    public static final String f1135 = C0642.m5854(4375, 96, 114);

    public static final String f1019 = C0642.m5854(4471, 96, 80);

    public static final String f1215 = C0642.m5854(4567, 40, 20);

    public static final String f1184 = C0642.m5854(4607, 132, 73);

    public static final String f1118 = C0642.m5854(4739, 132, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);

    public static final String f1209 = C0642.m5854(4871, 132, 41);

    public static final String f1077 = C0642.m5854(5003, 132, 119);

    public static final String f923 = C0642.m5854(5135, 132, 106);

    public static final String f1202 = C0642.m5854(5267, 40, 46);

    public static final String f1034 = C0642.m5854(5307, 30, 115);

    public static final String f1088 = C0642.m5854(5337, 30, 13);

    public static final String f1208 = C0642.m5854(5367, 30, 54);

    public static final String f1165 = C0642.m5854(5397, 30, 64);

    public static final String f1002 = C0642.m5854(5427, 30, 34);

    public static final String f1072 = C0642.m5854(5457, 40, 10);

    public static final String f1155 = C0642.m5854(5497, 30, 32);

    public static final String f944 = C0642.m5854(5527, 30, 56);

    public static final String f1084 = C0642.m5854(5557, 30, 50);

    public static final String f975 = C0642.m5854(5587, 30, 93);

    public static final String f1112 = C0642.m5854(5617, 30, 20);

    public static final String f1054 = C0642.m5854(5647, 40, 70);

    public static final String f995 = C0642.m5854(5687, 34, 101);

    public static final String f1149 = C0642.m5854(5721, 34, 6);

    public static final String f1196 = C0642.m5854(5755, 34, 112);

    public static final String f948 = C0642.m5854(5789, 34, 106);

    public static final String f1141 = C0642.m5854(5823, 34, 112);

    public static final String f1064 = C0642.m5854(5857, 40, 12);

    public static final String f952 = C0642.m5854(5897, 34, 88);

    public static final String f1152 = C0642.m5854(5931, 34, 2);

    public static final String f958 = C0642.m5854(5965, 34, 45);

    public static final String f976 = C0642.m5854(5999, 34, 47);

    public static final String f1219 = C0642.m5854(6033, 34, 51);

    public static final String f1099 = C0642.m5854(6067, 40, 118);

    public static final String f974 = C0642.m5854(6107, 42, 53);

    public static final String f971 = C0642.m5854(6149, 42, 32);

    public static final String f933 = C0642.m5854(6191, 42, 56);

    public static final String f928 = C0642.m5854(6233, 42, 17);

    public static final String f1071 = C0642.m5854(6275, 42, RNMBXStyleValue.InterpolationModeIdentity);

    public static final String f998 = C0642.m5854(6317, 42, 112);

    public static final String f1031 = C0642.m5854(6359, 42, 119);

    public static final String f1156 = C0642.m5854(6401, 42, 44);

    public static final String f1140 = C0642.m5854(6443, 40, 100);

    public static final String f1195 = C0642.m5854(6483, 42, 6);

    public static final String f1018 = C0642.m5854(6525, 42, 27);

    public static final String f1197 = C0642.m5854(6567, 42, 24);

    public static final String f1043 = C0642.m5854(6609, 40, 40);

    public static final String f1093 = C0642.m5854(6649, 40, 60);

    public static final String f1109 = C0642.m5854(6689, 50, 98);

    public static final String f1133 = C0642.m5854(6739, 50, 88);

    public static final String f1146 = C0642.m5854(6789, 50, 39);

    public static final String f982 = C0642.m5854(6839, 50, 24);

    public static final String f1056 = C0642.m5854(6889, 50, 4);

    public static final String f1123 = C0642.m5854(6939, 40, 111);

    public static final String f957 = C0642.m5854(6979, 50, 58);

    public static final String f1036 = C0642.m5854(7029, 50, 23);

    public static final String f1174 = C0642.m5854(7079, 50, 75);

    public static final String f1223 = C0642.m5854(7129, 50, 91);

    public static final String f1046 = C0642.m5854(7179, 50, 51);

    public static final String f1062 = C0642.m5854(7229, 40, RNMBXStyleValue.InterpolationModeIdentity);

    public static final String f1119 = C0642.m5854(7269, 58, 65);

    public static final String f1181 = C0642.m5854(7327, 60, 41);

    public static final String f1028 = C0642.m5854(7387, 60, 119);

    public static final String f1130 = C0642.m5854(7447, 58, 29);

    public static final String f1017 = C0642.m5854(7505, 60, 54);

    public static final String f918 = C0642.m5854(7565, 58, 34);

    public static final String f1151 = C0642.m5854(7623, 60, 79);

    public static final String f1218 = C0642.m5854(7683, 40, 125);

    public static final String f938 = C0642.m5854(7723, 60, 93);

    public static final String f973 = C0642.m5854(7783, 60, 47);

    public static final String f1171 = C0642.m5854(7843, 60, 124);

    public static final String f1027 = C0642.m5854(7903, 72, 60);

    public static final String f943 = C0642.m5854(7975, 72, 121);

    public static final String f967 = C0642.m5854(8047, 72, 112);

    public static final String f946 = C0642.m5854(8119, 72, 107);

    public static final String f935 = C0642.m5854(8191, 72, 91);

    public static final String f1186 = C0642.m5854(8263, 72, 11);

    public static final String f966 = C0642.m5854(8335, 72, 37);

    public static final String f1007 = C0642.m5854(8407, 40, 20);

    public static final String f1139 = C0642.m5854(8447, 104, 28);

    public static final String f1024 = C0642.m5854(8551, 104, 87);

    public static final String f1217 = C0642.m5854(8655, 104, 28);

    public static final String f1089 = C0642.m5854(8759, 104, 44);

    public static final String f1052 = C0642.m5854(8863, 104, 62);

    public static final String f922 = C0642.m5854(8967, 104, 64);

    public static final String f1091 = C0642.m5854(9071, 104, 18);

    public static final String f1145 = C0642.m5854(9175, 40, 74);

    public static final String f1032 = C0642.m5854(9215, 144, 21);

    public static final String f1116 = C0642.m5854(9359, 144, 31);

    public static final String f985 = C0642.m5854(9503, 144, 48);

    public static final String f1029 = C0642.m5854(9647, 144, 10);

    public static final String f1040 = C0642.m5854(9791, 144, 12);

    public static final String f1075 = C0642.m5854(9935, 144, 105);

    public static final String f1012 = C0642.m5854(10079, 144, 85);

    public static final String f1201 = C0642.m5854(10223, 40, 123);

    public static final String f1101 = C0642.m5854(10263, 64, 5);

    public static final String f1188 = C0642.m5854(10327, 64, 51);

    public static final String f1154 = C0642.m5854(10391, 64, 31);

    public static final String f1193 = C0642.m5854(10455, 64, 58);

    public static final String f932 = C0642.m5854(10519, 64, 13);

    public static final String f1044 = C0642.m5854(10583, 64, 36);

    public static final String f1162 = C0642.m5854(10647, 64, 70);

    public static final String f1039 = C0642.m5854(10711, 64, 80);

    public static final String f959 = C0642.m5854(10775, 64, 46);

    public static final String f945 = C0642.m5854(10839, 64, 36);

    public static final String f1129 = C0642.m5854(10903, 64, 101);

    public static final String f1057 = C0642.m5854(10967, 64, 49);

    public static final String f1003 = C0642.m5854(11031, 64, 70);

    public static final String f937 = C0642.m5854(11095, 64, 100);

    public static final String f927 = C0642.m5854(11159, 64, 90);

    public static final String f942 = C0642.m5854(11223, 64, 2);

    public static final String f994 = C0642.m5854(11287, 64, 88);

    public static final String f968 = C0642.m5854(11351, 4, 51);

    public static final String f1048 = C0642.m5854(11355, 64, 16);

    public static final String f1060 = C0642.m5854(11419, 64, 51);

    public static final String f1010 = C0642.m5854(11483, 64, 106);

    public static final String f1037 = C0642.m5854(11547, 64, 38);

    public static final String f953 = C0642.m5854(11611, 64, 82);

    public static final String f981 = C0642.m5854(11675, 64, 34);

    public static final String f1102 = C0642.m5854(11739, 64, 77);

    public static final String f1013 = C0642.m5854(11803, 64, 104);

    public static final String f1126 = C0642.m5854(11867, 64, 119);

    public static final String f988 = C0642.m5854(11931, 64, 77);

    public static final String f1182 = C0642.m5854(11995, 4, 43);

    public static final String f931 = C0642.m5854(11999, 64, 92);

    public static final String f1090 = C0642.m5854(12063, 64, 27);

    public static final String f1203 = C0642.m5854(12127, 64, 90);

    public static final String f961 = C0642.m5854(12191, 64, 45);

    public static final String f977 = C0642.m5854(12255, 40, 49);

    public static final String f956 = C0642.m5854(12295, 40, 50);

    public static final String f1092 = C0642.m5854(12335, 40, 39);

    public static final String f960 = C0642.m5854(12375, 40, 81);

    public static final String f1009 = C0642.m5854(12415, 40, 93);

    public static final String f1014 = C0642.m5854(12455, 40, 87);

    public static final String f1020 = C0642.m5854(12495, 40, 28);

    public static final String f1045 = C0642.m5854(12535, 40, 81);

    public static final String f1192 = C0642.m5854(12575, 40, 80);

    public static final String f951 = C0642.m5854(12615, 40, 13);

    public static final String f950 = C0642.m5854(12655, 40, 4);

    public static final String f941 = C0642.m5854(12695, 40, 1);

    public static final String f989 = C0642.m5854(12735, 48, 39);

    public static final String f1206 = C0642.m5854(12783, 48, 125);

    public static final String f1008 = C0642.m5854(12831, 48, 115);

    public static final String f1110 = C0642.m5854(12879, 48, 115);

    public static final String f978 = C0642.m5854(12927, 48, 106);

    public static final String f1067 = C0642.m5854(12975, 48, 100);

    public static final String f917 = C0642.m5854(13023, 48, 34);

    public static final String f1021 = C0642.m5854(13071, 48, 18);

    public static final String f987 = C0642.m5854(13119, 48, 56);

    public static final String f1107 = C0642.m5854(13167, 48, 106);

    public static final String f1081 = C0642.m5854(13215, 48, 62);

    public static final String f1050 = C0642.m5854(13263, 48, 124);

    public static final String f1055 = C0642.m5854(13311, 56, 75);

    public static final String f1015 = C0642.m5854(13367, 56, 29);

    public static final String f1096 = C0642.m5854(13423, 56, 93);

    public static final String f1016 = C0642.m5854(13479, 56, 110);

    public static final String f1128 = C0642.m5854(13535, 56, 46);

    public static final String f1200 = C0642.m5854(13591, 56, 36);

    public static final String f986 = C0642.m5854(13647, 56, 110);

    public static final String f1082 = C0642.m5854(13703, 56, 58);

    public static final String f916 = C0642.m5854(13759, 56, 44);

    public static final String f934 = C0642.m5854(13815, 56, 73);

    public static final String f1041 = C0642.m5854(13871, 56, 72);

    public static final String f1079 = C0642.m5854(13927, 56, 53);

    public static final String f1114 = C0642.m5854(13983, 64, 28);

    public static final String f1076 = C0642.m5854(14047, 64, 49);

    public static final String f930 = C0642.m5854(14111, 64, 85);

    public static final String f1160 = C0642.m5854(14175, 64, 31);

    public static final String f1210 = C0642.m5854(14239, 64, 117);

    public static final String f1144 = C0642.m5854(14303, 64, 20);

    public static final String f1113 = C0642.m5854(14367, 64, 46);

    public static final String f1176 = C0642.m5854(14431, 64, 80);

    public static final String f1214 = C0642.m5854(14495, 64, 8);

    public static final String f992 = C0642.m5854(14559, 64, 111);

    public static final String f1004 = C0642.m5854(14623, 64, 26);

    public static final String f1142 = C0642.m5854(14687, 64, 66);

    public static final String f1066 = C0642.m5854(14751, 80, WebSocketProtocol.PAYLOAD_SHORT);

    public static final String f972 = C0642.m5854(14831, 80, 107);

    public static final String f1035 = C0642.m5854(14911, 80, 99);

    public static final String f1026 = C0642.m5854(14991, 80, 92);

    public static final String f1049 = C0642.m5854(15071, 80, 42);

    public static final String f1087 = C0642.m5854(15151, 80, 16);

    public static final String f1001 = C0642.m5854(15231, 80, 68);

    public static final String f1158 = C0642.m5854(15311, 80, 84);

    public static final String f1083 = C0642.m5854(15391, 80, 92);

    public static final String f970 = C0642.m5854(15471, 80, 4);

    public static final String f1207 = C0642.m5854(15551, 80, 37);

    public static final String f1194 = C0642.m5854(15631, 80, 119);

    public static final String f1166 = C0642.m5854(15711, 96, 70);

    public static final String f1122 = C0642.m5854(15807, 96, 90);

    public static final String f1059 = C0642.m5854(15903, 96, 104);

    public static final String f999 = C0642.m5854(15999, 96, 72);

    public static final String f940 = C0642.m5854(16095, 96, 39);

    public static final String f1167 = C0642.m5854(16191, 96, 15);

    public static final String f1038 = C0642.m5854(16287, 96, 42);

    public static final String f1185 = C0642.m5854(16383, 96, 48);

    public static final String f1169 = C0642.m5854(16479, 96, 25);

    public static final String f1147 = C0642.m5854(16575, 96, 66);

    public static final String f996 = C0642.m5854(16671, 96, 49);

    public static final String f1047 = C0642.m5854(16767, 96, 74);

    public static final String f1070 = C0642.m5854(16863, 128, 0);

    public static final String f1161 = C0642.m5854(16991, 128, 18);

    public static final String f1191 = C0642.m5854(17119, 128, 92);

    public static final String f1150 = C0642.m5854(17247, 128, 66);

    public static final String f964 = C0642.m5854(17375, 128, 86);

    public static final String f1065 = C0642.m5854(17503, 128, 74);

    public static final String f1220 = C0642.m5854(17631, 128, 118);

    public static final String f969 = C0642.m5854(17759, 128, 75);

    public static final String f936 = C0642.m5854(17887, 128, 40);

    public static final String f1124 = C0642.m5854(18015, 128, 9);

    public static final String f939 = C0642.m5854(18143, 128, 76);

    public static final String f1172 = C0642.m5854(18271, 128, 34);

    public static final String f949 = C0642.m5854(18399, 64, 4);

    public static final String f1175 = C0642.m5854(18463, 64, 101);

    public static final String f1058 = C0642.m5854(18527, 64, 102);

    public static final String f993 = C0642.m5854(18591, 64, 56);

    public static final String f1121 = C0642.m5854(18655, 64, 17);

    public static final String f1117 = C0642.m5854(18719, 64, 20);

    public static final String f965 = C0642.m5854(18783, 6, 70);

    public static final String f1163 = C0642.m5854(18789, 112, 23);

    public static final String f1106 = C0642.m5854(18901, 112, 16);

    public static final String f962 = C0642.m5854(19013, 112, 60);

    static {
        try {
            C0558.m5499((Map) f1189, (Object) 0, (Object) m3800(0));
            C0558.m5499((Map) f1189, (Object) 1, (Object) m3800(1));
            C0558.m5499((Map) f1189, (Object) 2, (Object) m3800(2));
            C0558.m5499((Map) f1189, (Object) 3, (Object) m3800(3));
            C0558.m5499((Map) f1189, (Object) 4, (Object) m3800(4));
            C0558.m5499((Map) f1189, (Object) 7, (Object) m3800(7));
            C0558.m5499((Map) f1189, (Object) 10, (Object) m3800(10));
            C0558.m5499((Map) f1189, (Object) 12, (Object) m3800(12));
            C0558.m5499((Map) f1189, (Object) 14, (Object) m3800(14));
        } catch (C0537 unused) {
        }
    }

    public C0253() {
        this.f1239 = null;
        this.f1235 = null;
        this.f1227 = null;
        this.f1233 = null;
        this.f1225 = null;
        this.f1226 = null;
        this.f1230 = null;
        this.f1238 = 1;
        this.f1228 = 0;
        this.f1229 = 0;
        this.f1232 = 0;
        this.f1236 = 0;
        this.f1237 = 24576;
        this.f1231 = 24576;
        this.f1234 = -1;
    }

    public static C0253 m3800(int i) throws C0537 {
        C0253 c0253 = new C0253();
        switch (i) {
            case 0:
                c0253.m3815(24835);
                String str = f1187;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str, c0253.f1239.length);
                String str2 = f997;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str2, c0253.f1239.length);
                String str3 = f1136;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str3, 0);
                c0253.f1238 = 1;
                String str4 = f1224;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str4, c0253.f1239.length);
                String str5 = f1061;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str5, c0253.f1239.length);
                String str6 = f1216;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str6, 0);
                break;
            case 1:
                c0253.m3815(24836);
                String str7 = f1178;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str7, c0253.f1239.length);
                String str8 = f1085;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str8, c0253.f1239.length);
                String str9 = f1095;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str9, 0);
                c0253.f1238 = 1;
                String str10 = f1135;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str10, c0253.f1239.length);
                String str11 = f1019;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str11, c0253.f1239.length);
                String str12 = f1215;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str12, 0);
                break;
            case 2:
                c0253.m3815(24837);
                String str13 = f1184;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str13, c0253.f1239.length);
                String str14 = f1118;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str14, c0253.f1239.length);
                String str15 = f1209;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str15, 0);
                c0253.f1238 = 1;
                String str16 = f1077;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str16, c0253.f1239.length);
                String str17 = f923;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str17, c0253.f1239.length);
                String str18 = f1202;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str18, 0);
                break;
            case 3:
                c0253.m3813(24577);
                c0253.m3815(24832);
                C0663.m5893(false, f1058, 0, c0253);
                String str19 = f949;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str19, c0253.f1239.length);
                String str20 = f1175;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str20, c0253.f1239.length);
                String str21 = f993;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str21, 0);
                c0253.f1238 = 8;
                String str22 = f1121;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str22, c0253.f1239.length);
                String str23 = f1117;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str23, c0253.f1239.length);
                break;
            case 4:
                c0253.m3813(24577);
                c0253.m3815(24832);
                C0663.m5893(false, f1163, 0, c0253);
                String str24 = f965;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str24, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str25 = f1106;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str25, 0);
                c0253.f1238 = 4;
                Boolean.valueOf(false);
                c0253.f1233 = m3805("05", c0253.f1239.length);
                String str26 = f962;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str26, c0253.f1239.length);
                break;
            case 5:
                c0253.m3815(24832);
                c0253.m3813(24577);
                C0663.m5893(false, f1183, 0, c0253);
                String str27 = f1069;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str27, c0253.f1239.length);
                String str28 = f1103;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str28, c0253.f1239.length);
                String str29 = f925;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str29, 0);
                c0253.f1238 = 1;
                String str30 = f1173;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str30, c0253.f1239.length);
                String str31 = f1053;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str31, c0253.f1239.length);
                String str32 = f1131;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str32, 0);
                break;
            case 6:
                c0253.m3815(24832);
                c0253.m3813(24577);
                C0663.m5893(false, f1183, 0, c0253);
                String str33 = f1213;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str33, c0253.f1239.length);
                String str34 = f963;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str34, c0253.f1239.length);
                String str35 = f1063;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str35, 0);
                c0253.f1238 = 4;
                String str36 = f1030;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str36, c0253.f1239.length);
                String str37 = f1078;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str37, c0253.f1239.length);
                String str38 = f1179;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str38, 0);
                break;
            case 7:
                c0253.m3815(24832);
                c0253.m3813(24577);
                String str39 = f1138;
                Boolean.valueOf(false);
                c0253.m3816(m3805(str39, 0));
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("07", c0253.f1239.length);
                String str40 = f1073;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str40, 0);
                c0253.f1238 = 1;
                String str41 = f1025;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str41, c0253.f1239.length);
                String str42 = f1068;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str42, c0253.f1239.length);
                break;
            case 8:
                c0253.m3815(24832);
                c0253.m3813(24577);
                C0663.m5893(false, f1159, 0, c0253);
                String str43 = f1051;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str43, c0253.f1239.length);
                String str44 = f920;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str44, c0253.f1239.length);
                String str45 = f1104;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str45, 0);
                c0253.f1238 = 1;
                String str46 = f991;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str46, c0253.f1239.length);
                String str47 = f1042;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str47, c0253.f1239.length);
                String str48 = f1086;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str48, 0);
                break;
            case 9:
                c0253.m3815(24832);
                c0253.m3813(24577);
                C0663.m5893(false, f1138, 0, c0253);
                String str49 = f1212;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str49, c0253.f1239.length);
                String str50 = f1198;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str50, c0253.f1239.length);
                String str51 = f1022;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str51, 0);
                c0253.f1238 = 1;
                String str52 = f1221;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str52, c0253.f1239.length);
                String str53 = f1098;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str53, c0253.f1239.length);
                String str54 = f1074;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str54, 0);
                break;
            case 10:
                c0253.m3815(24832);
                c0253.m3813(24577);
                String str55 = f1006;
                Boolean.valueOf(false);
                c0253.m3816(m3805(str55, 0));
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("03", c0253.f1239.length);
                String str56 = f1153;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str56, 0);
                c0253.f1238 = 1;
                String str57 = f1080;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str57, c0253.f1239.length);
                String str58 = f955;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str58, c0253.f1239.length);
                break;
            case 11:
                c0253.m3815(24833);
                String str59 = f1177;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str59, c0253.f1239.length);
                String str60 = f979;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str60, c0253.f1239.length);
                String str61 = f1011;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str61, 0);
                c0253.f1238 = 1;
                String str62 = f1120;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str62, c0253.f1239.length);
                String str63 = f1204;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str63, c0253.f1239.length);
                String str64 = f1211;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str64, 0);
                break;
            case 12:
                c0253.m3815(24832);
                c0253.m3813(24577);
                String str65 = f1180;
                Boolean.valueOf(false);
                c0253.m3816(m3805(str65, 0));
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("05", c0253.f1239.length);
                String str66 = f1137;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str66, 0);
                c0253.f1238 = 1;
                String str67 = f983;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str67, c0253.f1239.length);
                String str68 = f1115;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str68, c0253.f1239.length);
                break;
            case 13:
                c0253.m3815(24834);
                String str69 = f1094;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str69, c0253.f1239.length);
                String str70 = f1148;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str70, c0253.f1239.length);
                String str71 = f947;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str71, 0);
                c0253.f1238 = 1;
                String str72 = f1170;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str72, c0253.f1239.length);
                String str73 = f1000;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str73, c0253.f1239.length);
                String str74 = f919;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str74, 0);
                break;
            case 14:
                c0253.m3815(24832);
                c0253.m3813(24577);
                String str75 = f929;
                Boolean.valueOf(false);
                c0253.m3816(m3805(str75, 0));
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("07", c0253.f1239.length);
                String str76 = f1157;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str76, 0);
                c0253.f1238 = 1;
                String str77 = f954;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str77, c0253.f1239.length);
                String str78 = f1190;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str78, c0253.f1239.length);
                break;
            case 15:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(113);
                c0253.m3810(9);
                c0253.m3811(0);
                c0253.m3807(0);
                String str79 = f1034;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str79, c0253.f1239.length);
                String str80 = f1088;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str80, c0253.f1239.length);
                String str81 = f1208;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str81, 0);
                c0253.f1238 = 2;
                String str82 = f1165;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str82, c0253.f1239.length);
                String str83 = f1002;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str83, c0253.f1239.length);
                String str84 = f1072;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str84, 0);
                break;
            case 16:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(113);
                c0253.m3810(9);
                c0253.m3811(0);
                c0253.m3807(0);
                String str85 = f1155;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str85, c0253.f1239.length);
                String str86 = f944;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str86, c0253.f1239.length);
                String str87 = f1084;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str87, 0);
                c0253.f1238 = 2;
                String str88 = f975;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str88, c0253.f1239.length);
                String str89 = f1112;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str89, c0253.f1239.length);
                String str90 = f1054;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str90, 0);
                break;
            case 17:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(131);
                c0253.m3810(2);
                c0253.m3811(3);
                c0253.m3807(8);
                String str91 = f995;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str91, c0253.f1239.length);
                String str92 = f1149;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str92, c0253.f1239.length);
                String str93 = f1196;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str93, 0);
                c0253.f1238 = 2;
                String str94 = f948;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str94, c0253.f1239.length);
                String str95 = f1141;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str95, c0253.f1239.length);
                String str96 = f1064;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str96, 0);
                break;
            case 18:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(131);
                c0253.m3810(2);
                c0253.m3811(3);
                c0253.m3807(8);
                String str97 = f952;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str97, c0253.f1239.length);
                String str98 = f1152;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str98, c0253.f1239.length);
                String str99 = f958;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str99, 0);
                c0253.f1238 = 2;
                String str100 = f976;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str100, c0253.f1239.length);
                String str101 = f1219;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str101, c0253.f1239.length);
                String str102 = f1099;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str102, 0);
                break;
            case 19:
                c0253.m3815(24838);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str103 = f974;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str103, 0);
                c0253.f1238 = 2;
                String str104 = f971;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str104, c0253.f1239.length);
                String str105 = f933;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str105, c0253.f1239.length);
                break;
            case 20:
                c0253.m3815(24838);
                String str106 = f928;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str106, c0253.f1239.length);
                String str107 = f1071;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str107, c0253.f1239.length);
                String str108 = f998;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str108, 0);
                c0253.f1238 = 2;
                String str109 = f1031;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str109, c0253.f1239.length);
                String str110 = f1156;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str110, c0253.f1239.length);
                String str111 = f1140;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str111, 0);
                break;
            case 21:
                c0253.m3815(24838);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                String str112 = f1195;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str112, c0253.f1239.length);
                String str113 = f1018;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str113, 0);
                c0253.f1238 = 2;
                String str114 = f1197;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str114, c0253.f1239.length);
                String str115 = f1043;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str115, c0253.f1239.length);
                String str116 = f1093;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str116, 0);
                break;
            case 22:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(193);
                c0253.m3810(15);
                c0253.m3811(0);
                c0253.m3807(0);
                String str117 = f1109;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str117, c0253.f1239.length);
                String str118 = f1133;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str118, c0253.f1239.length);
                String str119 = f1146;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str119, 0);
                c0253.f1238 = 2;
                String str120 = f982;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str120, c0253.f1239.length);
                String str121 = f1056;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str121, c0253.f1239.length);
                String str122 = f1123;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str122, 0);
                break;
            case 23:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(193);
                c0253.m3810(15);
                c0253.m3811(0);
                c0253.m3807(0);
                String str123 = f957;
                Boolean.valueOf(false);
                c0253.f1235 = m3805(str123, c0253.f1239.length);
                String str124 = f1036;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str124, c0253.f1239.length);
                String str125 = f1174;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str125, 0);
                c0253.f1238 = 2;
                String str126 = f1223;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str126, c0253.f1239.length);
                String str127 = f1046;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str127, c0253.f1239.length);
                String str128 = f1062;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str128, 0);
                break;
            case 24:
                c0253.m3815(24839);
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str129 = f1119;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str129, 0);
                c0253.f1238 = 4;
                String str130 = f1181;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str130, c0253.f1239.length);
                String str131 = f1028;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str131, c0253.f1239.length);
                break;
            case 25:
                c0253.m3815(24839);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                String str132 = f1130;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str132, c0253.f1239.length);
                String str133 = f1017;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str133, 0);
                c0253.f1238 = 2;
                String str134 = f918;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str134, c0253.f1239.length);
                String str135 = f1151;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str135, c0253.f1239.length);
                String str136 = f1218;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str136, 0);
                break;
            case 26:
                c0253.m3813(24578);
                c0253.m3815(24832);
                c0253.m3808(239);
                c0253.m3810(158);
                c0253.m3811(0);
                c0253.m3807(0);
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str137 = f938;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str137, 0);
                c0253.f1238 = 4;
                String str138 = f973;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str138, c0253.f1239.length);
                String str139 = f1171;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str139, c0253.f1239.length);
                break;
            case 27:
                c0253.m3815(24840);
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str140 = f1027;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str140, 0);
                c0253.f1238 = 4;
                String str141 = f943;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str141, c0253.f1239.length);
                String str142 = f967;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str142, c0253.f1239.length);
                break;
            case 28:
                c0253.m3815(24840);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                String str143 = f946;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str143, c0253.f1239.length);
                String str144 = f935;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str144, 0);
                c0253.f1238 = 2;
                String str145 = f1186;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str145, c0253.f1239.length);
                String str146 = f966;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str146, c0253.f1239.length);
                String str147 = f1007;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str147, 0);
                break;
            case 29:
                c0253.m3815(24841);
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str148 = f1139;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str148, 0);
                c0253.f1238 = 4;
                String str149 = f1024;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str149, c0253.f1239.length);
                String str150 = f1217;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str150, c0253.f1239.length);
                break;
            case 30:
                c0253.m3815(24841);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                String str151 = f1089;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str151, c0253.f1239.length);
                String str152 = f1052;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str152, 0);
                c0253.f1238 = 2;
                String str153 = f922;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str153, c0253.f1239.length);
                String str154 = f1091;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str154, c0253.f1239.length);
                String str155 = f1145;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str155, 0);
                break;
            case 31:
                c0253.m3815(24842);
                Boolean.valueOf(false);
                c0253.f1235 = m3805(Constants.FORT_STATUS.INVALID_REQUEST, c0253.f1239.length);
                Boolean.valueOf(false);
                c0253.f1227 = m3805("01", c0253.f1239.length);
                String str156 = f1032;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str156, 0);
                c0253.f1238 = 4;
                String str157 = f1116;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str157, c0253.f1239.length);
                String str158 = f985;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str158, c0253.f1239.length);
                break;
            case 32:
                c0253.m3815(24842);
                Boolean.valueOf(false);
                c0253.f1235 = m3805("01", c0253.f1239.length);
                String str159 = f1029;
                Boolean.valueOf(false);
                c0253.f1227 = m3805(str159, c0253.f1239.length);
                String str160 = f1040;
                Boolean.valueOf(false);
                c0253.f1226 = m3805(str160, 0);
                c0253.f1238 = 2;
                String str161 = f1075;
                Boolean.valueOf(false);
                c0253.f1233 = m3805(str161, c0253.f1239.length);
                String str162 = f1012;
                Boolean.valueOf(false);
                c0253.f1225 = m3805(str162, c0253.f1239.length);
                String str163 = f1201;
                Boolean.valueOf(false);
                c0253.f1230 = m3805(str163, 0);
                break;
            default:
                switch (i) {
                    case 58:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        String str164 = f1188;
                        Boolean.valueOf(false);
                        c0253.m3816(m3805(str164, 0));
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805("07", c0253.f1239.length);
                        String str165 = f1101;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str165, c0253.f1239.length);
                        String str166 = f1154;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str166, 0);
                        c0253.f1238 = 2;
                        String str167 = f1193;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str167, c0253.f1239.length);
                        String str168 = f932;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str168, c0253.f1239.length);
                        break;
                    case 59:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1162, 0, c0253);
                        String str169 = f1044;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str169, c0253.f1239.length);
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805("A6", c0253.f1239.length);
                        String str170 = f1039;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str170, 0);
                        c0253.f1238 = 2;
                        String str171 = f959;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str171, c0253.f1239.length);
                        String str172 = f945;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str172, c0253.f1239.length);
                        break;
                    case 60:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1003, 0, c0253);
                        String str173 = f1129;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str173, c0253.f1239.length);
                        String str174 = f1057;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str174, c0253.f1239.length);
                        String str175 = f937;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str175, 0);
                        c0253.f1238 = 2;
                        String str176 = f927;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str176, c0253.f1239.length);
                        String str177 = f942;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str177, c0253.f1239.length);
                        break;
                    case LockFreeTaskQueueCore.CLOSED_SHIFT:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1048, 0, c0253);
                        String str178 = f994;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str178, c0253.f1239.length);
                        String str179 = f968;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str179, c0253.f1239.length);
                        String str180 = f1060;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str180, 0);
                        c0253.f1238 = 2;
                        String str181 = f1010;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str181, c0253.f1239.length);
                        String str182 = f1037;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str182, c0253.f1239.length);
                        break;
                    case Elf64.Ehdr.E_SHSTRNDX:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f981, 0, c0253);
                        String str183 = f953;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str183, c0253.f1239.length);
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805("A6", c0253.f1239.length);
                        String str184 = f1102;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str184, 0);
                        c0253.f1238 = 2;
                        String str185 = f1013;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str185, c0253.f1239.length);
                        String str186 = f1126;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str186, c0253.f1239.length);
                        break;
                    case HtmlCompat.FROM_HTML_MODE_COMPACT:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f931, 0, c0253);
                        String str187 = f988;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str187, c0253.f1239.length);
                        String str188 = f1182;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str188, c0253.f1239.length);
                        String str189 = f1090;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str189, 0);
                        c0253.f1238 = 2;
                        String str190 = f1203;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str190, c0253.f1239.length);
                        String str191 = f961;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str191, c0253.f1239.length);
                        break;
                    case 64:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1092, 0, c0253);
                        String str192 = f977;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str192, c0253.f1239.length);
                        String str193 = f956;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str193, c0253.f1239.length);
                        String str194 = f960;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str194, 0);
                        c0253.f1238 = 1;
                        String str195 = f1009;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str195, c0253.f1239.length);
                        String str196 = f1014;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str196, c0253.f1239.length);
                        break;
                    case 65:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1192, 0, c0253);
                        String str197 = f1020;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str197, c0253.f1239.length);
                        String str198 = f1045;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str198, c0253.f1239.length);
                        String str199 = f951;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str199, 0);
                        c0253.f1238 = 1;
                        String str200 = f950;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str200, c0253.f1239.length);
                        String str201 = f941;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str201, c0253.f1239.length);
                        break;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1008, 0, c0253);
                        String str202 = f989;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str202, c0253.f1239.length);
                        String str203 = f1206;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str203, c0253.f1239.length);
                        String str204 = f1110;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str204, 0);
                        c0253.f1238 = 1;
                        String str205 = f978;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str205, c0253.f1239.length);
                        String str206 = f1067;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str206, c0253.f1239.length);
                        break;
                    case ConstraintLayout.LayoutParams.Table.GUIDELINE_USE_RTL:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f987, 0, c0253);
                        String str207 = f917;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str207, c0253.f1239.length);
                        String str208 = f1021;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str208, c0253.f1239.length);
                        String str209 = f1107;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str209, 0);
                        c0253.f1238 = 1;
                        String str210 = f1081;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str210, c0253.f1239.length);
                        String str211 = f1050;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str211, c0253.f1239.length);
                        break;
                    case BuildConfig.VERSION_CODE:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1096, 0, c0253);
                        String str212 = f1055;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str212, c0253.f1239.length);
                        String str213 = f1015;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str213, c0253.f1239.length);
                        String str214 = f1016;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str214, 0);
                        c0253.f1238 = 1;
                        String str215 = f1128;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str215, c0253.f1239.length);
                        String str216 = f1200;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str216, c0253.f1239.length);
                        break;
                    case UCrop.REQUEST_CROP:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f916, 0, c0253);
                        String str217 = f986;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str217, c0253.f1239.length);
                        String str218 = f1082;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str218, c0253.f1239.length);
                        String str219 = f934;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str219, 0);
                        c0253.f1238 = 1;
                        String str220 = f1041;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str220, c0253.f1239.length);
                        String str221 = f1079;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str221, c0253.f1239.length);
                        break;
                    case CoreConstants.OOS_RESET_FREQUENCY:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f930, 0, c0253);
                        String str222 = f1114;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str222, c0253.f1239.length);
                        String str223 = f1076;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str223, c0253.f1239.length);
                        String str224 = f1160;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str224, 0);
                        c0253.f1238 = 1;
                        String str225 = f1210;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str225, c0253.f1239.length);
                        String str226 = f1144;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str226, c0253.f1239.length);
                        break;
                    case 71:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1214, 0, c0253);
                        String str227 = f1113;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str227, c0253.f1239.length);
                        String str228 = f1176;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str228, c0253.f1239.length);
                        String str229 = f992;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str229, 0);
                        c0253.f1238 = 1;
                        String str230 = f1004;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str230, c0253.f1239.length);
                        String str231 = f1142;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str231, c0253.f1239.length);
                        break;
                    case SyslogConstants.LOG_CRON:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1035, 0, c0253);
                        String str232 = f1066;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str232, c0253.f1239.length);
                        String str233 = f972;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str233, c0253.f1239.length);
                        String str234 = f1026;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str234, 0);
                        c0253.f1238 = 1;
                        String str235 = f1049;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str235, c0253.f1239.length);
                        String str236 = f1087;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str236, c0253.f1239.length);
                        break;
                    case 73:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1083, 0, c0253);
                        String str237 = f1001;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str237, c0253.f1239.length);
                        String str238 = f1158;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str238, c0253.f1239.length);
                        String str239 = f970;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str239, 0);
                        c0253.f1238 = 1;
                        String str240 = f1207;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str240, c0253.f1239.length);
                        String str241 = f1194;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str241, c0253.f1239.length);
                        break;
                    case 74:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1059, 0, c0253);
                        String str242 = f1166;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str242, c0253.f1239.length);
                        String str243 = f1122;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str243, c0253.f1239.length);
                        String str244 = f999;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str244, 0);
                        c0253.f1238 = 1;
                        String str245 = f940;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str245, c0253.f1239.length);
                        String str246 = f1167;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str246, c0253.f1239.length);
                        break;
                    case 75:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1169, 0, c0253);
                        String str247 = f1038;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str247, c0253.f1239.length);
                        String str248 = f1185;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str248, c0253.f1239.length);
                        String str249 = f1147;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str249, 0);
                        c0253.f1238 = 1;
                        String str250 = f996;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str250, c0253.f1239.length);
                        String str251 = f1047;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str251, c0253.f1239.length);
                        break;
                    case Base64.mimeLineLength:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f1191, 0, c0253);
                        String str252 = f1070;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str252, c0253.f1239.length);
                        String str253 = f1161;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str253, c0253.f1239.length);
                        String str254 = f1150;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str254, 0);
                        c0253.f1238 = 1;
                        String str255 = f964;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str255, c0253.f1239.length);
                        String str256 = f1065;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str256, c0253.f1239.length);
                        break;
                    case 77:
                        c0253.m3813(24577);
                        c0253.m3815(24832);
                        C0663.m5893(false, f936, 0, c0253);
                        String str257 = f1220;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str257, c0253.f1239.length);
                        String str258 = f969;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str258, c0253.f1239.length);
                        String str259 = f1124;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str259, 0);
                        c0253.f1238 = 1;
                        String str260 = f939;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str260, c0253.f1239.length);
                        String str261 = f1172;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str261, c0253.f1239.length);
                        break;
                    case 78:
                        c0253.m3815(24832);
                        c0253.m3813(24577);
                        C0663.m5893(false, f1205, 0, c0253);
                        String str262 = f1125;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str262, c0253.f1239.length);
                        String str263 = f926;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str263, c0253.f1239.length);
                        String str264 = f1127;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str264, 0);
                        c0253.f1238 = 1;
                        String str265 = f1105;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str265, c0253.f1239.length);
                        String str266 = f1132;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str266, c0253.f1239.length);
                        String str267 = f921;
                        Boolean.valueOf(false);
                        c0253.f1230 = m3805(str267, 0);
                        break;
                    case 79:
                        c0253.m3815(24832);
                        c0253.m3813(24577);
                        C0663.m5893(false, f1205, 0, c0253);
                        String str268 = f1111;
                        Boolean.valueOf(false);
                        c0253.f1235 = m3805(str268, c0253.f1239.length);
                        String str269 = f1222;
                        Boolean.valueOf(false);
                        c0253.f1227 = m3805(str269, c0253.f1239.length);
                        String str270 = f990;
                        Boolean.valueOf(false);
                        c0253.f1226 = m3805(str270, 0);
                        c0253.f1238 = 4;
                        String str271 = f980;
                        Boolean.valueOf(false);
                        c0253.f1233 = m3805(str271, c0253.f1239.length);
                        String str272 = f1033;
                        Boolean.valueOf(false);
                        c0253.f1225 = m3805(str272, c0253.f1239.length);
                        String str273 = f984;
                        Boolean.valueOf(false);
                        c0253.f1230 = m3805(str273, 0);
                        break;
                    default:
                        throw new C0537(C0642.m5854(116, 13, 25));
                }
                break;
        }
        c0253.f1234 = i;
        return c0253;
    }

    public void m3807(int i) throws C0537 {
        if (i < 0) {
            return;
        }
        this.f1236 = i;
        if (this.f1231 == 24578) {
            m3809();
        }
    }

    public void m3808(int i) throws C0537 {
        this.f1228 = i;
        if (this.f1231 == 24578) {
            m3809();
        }
    }

    public void m3810(int i) throws C0537 {
        if (i < 0) {
            return;
        }
        this.f1229 = i;
        if (this.f1231 == 24578) {
            m3809();
        }
    }

    public void m3811(int i) throws C0537 {
        if (i < 0) {
            return;
        }
        this.f1232 = i;
        if (this.f1231 == 24578) {
            m3809();
        }
    }

    public void m3813(int i) {
        this.f1231 = i;
    }

    public int m3814() {
        if (this.f1234 == -1) {
            C0324 c0324M5484 = C0558.m5484(f1189);
            while (c0324M5484.m4313()) {
                int iIntValue = ((Integer) c0324M5484.f1735).intValue();
                C0253 c0253 = (C0253) f1189.get(Integer.valueOf(iIntValue));
                if (m3804(c0253.f1239, this.f1239) && m3804(c0253.f1235, this.f1235) && m3804(c0253.f1227, this.f1227) && m3804(c0253.f1233, this.f1233) && m3804(c0253.f1225, this.f1225) && m3804(c0253.f1226, this.f1226)) {
                    byte[] bArr = c0253.f1239;
                    if (bArr != null) {
                        this.f1239 = (byte[]) bArr.clone();
                    }
                    byte[] bArr2 = c0253.f1235;
                    if (bArr2 != null) {
                        this.f1235 = (byte[]) bArr2.clone();
                    }
                    byte[] bArr3 = c0253.f1227;
                    if (bArr3 != null) {
                        this.f1227 = (byte[]) bArr3.clone();
                    }
                    byte[] bArr4 = c0253.f1233;
                    if (bArr4 != null) {
                        this.f1233 = (byte[]) bArr4.clone();
                    }
                    byte[] bArr5 = c0253.f1225;
                    if (bArr5 != null) {
                        this.f1233 = (byte[]) bArr5.clone();
                    }
                    byte[] bArr6 = c0253.f1226;
                    if (bArr6 != null) {
                        this.f1226 = (byte[]) bArr6.clone();
                    }
                    byte[] bArr7 = c0253.f1230;
                    if (bArr7 != null) {
                        this.f1230 = (byte[]) bArr7.clone();
                    }
                    this.f1238 = c0253.f1238;
                    this.f1228 = c0253.f1228;
                    this.f1229 = c0253.f1229;
                    this.f1232 = c0253.f1232;
                    this.f1236 = c0253.f1236;
                    this.f1237 = c0253.f1237;
                    this.f1231 = c0253.f1231;
                    int i = c0253.f1234;
                    this.f1234 = iIntValue;
                    return iIntValue;
                }
            }
            this.f1234 = 80;
        }
        return this.f1234;
    }

    public int m3812() {
        return this.f1231 == 24577 ? this.f1239.length : (this.f1228 + 7) >>> 3;
    }

    public static int m3801(byte[] bArr) {
        int i = 0;
        if (bArr != null && bArr.length != 0) {
            int length = bArr.length;
            while (i < length - 1 && bArr[i] == 0) {
                i++;
            }
            i = ((length - i) - 1) << 3;
            for (int i2 = bArr[i] & 255; i2 > 0; i2 >>= 1) {
                i++;
            }
        }
        return i;
    }

    public final void m3809() throws C0537 {
        C0184 c0184 = new C0184();
        C0261.m3924(c0184, this.f1228, this.f1229, this.f1232, this.f1236);
        this.f1239 = C0261.m3942(c0184, (C0184.m3587(c0184) + 7) / 8);
    }

    public static byte[] m3799(byte[] bArr) {
        int i = 0;
        while (i < bArr.length && bArr[i] == 0) {
            i++;
        }
        if (i == 0) {
            return bArr;
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }

    public C0253(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        this.f1239 = null;
        this.f1235 = null;
        this.f1227 = null;
        this.f1233 = null;
        this.f1225 = null;
        this.f1226 = null;
        this.f1230 = null;
        this.f1238 = 1;
        this.f1228 = 0;
        this.f1229 = 0;
        this.f1232 = 0;
        this.f1236 = 0;
        this.f1237 = 24576;
        this.f1231 = 24576;
        this.f1234 = -1;
        this.f1239 = C0259.m3845(bArr);
        this.f1235 = C0259.m3845(bArr2);
        this.f1227 = C0259.m3845(bArr3);
        this.f1233 = C0259.m3845(bArr4);
        this.f1225 = C0259.m3845(bArr5);
        this.f1226 = C0259.m3845(bArr6);
        this.f1230 = C0259.m3845(bArr7);
        this.f1234 = m3814();
    }

    public void m3815(int i) throws C0537 {
        switch (i) {
            case 24832:
                break;
            case 24833:
                this.f1231 = 24577;
                C0663.m5893(false, f1134, 0, this);
                break;
            case 24834:
                this.f1231 = 24577;
                C0663.m5893(false, f1005, 0, this);
                break;
            case 24835:
                this.f1231 = 24577;
                C0663.m5893(false, f1108, 0, this);
                break;
            case 24836:
                this.f1231 = 24577;
                C0663.m5893(false, f924, 0, this);
                break;
            case 24837:
                this.f1231 = 24577;
                C0663.m5893(false, f1164, 0, this);
                break;
            case 24838:
                this.f1231 = 24578;
                C0663.m5893(false, f1199, 0, this);
                break;
            case 24839:
                this.f1231 = 24578;
                C0663.m5893(false, f1097, 0, this);
                break;
            case 24840:
                this.f1231 = 24578;
                C0663.m5893(false, f1023, 0, this);
                break;
            case 24841:
                this.f1231 = 24578;
                C0663.m5893(false, f1143, 0, this);
                break;
            case 24842:
                this.f1231 = 24578;
                C0663.m5893(false, f1168, 0, this);
                break;
            default:
                throw new C0537(C0642.m5854(36, 13, 105));
        }
        this.f1237 = i;
    }

    public void m3816(byte[] bArr) throws C0537 {
        byte[] bArrM3845 = C0259.m3845(bArr);
        this.f1239 = bArrM3845;
        if (bArrM3845.length == 0) {
            this.f1228 = 0;
            this.f1229 = 0;
            this.f1232 = 0;
            this.f1236 = 0;
            return;
        }
        if (this.f1231 == 24578) {
            C0184 c0184 = new C0184();
            C0184.m3594(this.f1239, c0184);
            int[] iArr = {this.f1228};
            int[] iArr2 = {this.f1229};
            int[] iArr3 = {this.f1232};
            int[] iArr4 = {this.f1236};
            C0261.m3938(c0184, iArr, iArr2, iArr3, iArr4);
            this.f1228 = iArr[0];
            this.f1229 = iArr2[0];
            this.f1232 = iArr3[0];
            this.f1236 = iArr4[0];
        }
    }

    public static byte[] m3806(byte[] bArr, byte[] bArr2, C0253 c0253, boolean z, boolean z2) throws C0537 {
        int iM3923;
        if (c0253 != null) {
            int iM3812 = c0253.m3812();
            int length = bArr.length;
            int length2 = bArr2.length;
            if (length > 0 && length2 > 0 && length <= iM3812 && length2 <= iM3812) {
                int i = (!z || z2) ? (iM3812 << 1) + 1 : iM3812 + 1;
                if (z) {
                    int i2 = c0253.f1231;
                    if (i2 == 24577) {
                        iM3923 = bArr2[length2 - 1] & 1;
                    } else if (i2 == 24578) {
                        C0184 c0184 = new C0184();
                        C0184 c0185 = new C0184();
                        C0184 c0186 = new C0184();
                        C0184.m3593(bArr, 0, bArr.length, c0184);
                        C0184.m3593(bArr2, 0, bArr2.length, c0185);
                        C0184.m3594(c0253.f1239, c0186);
                        iM3923 = C0261.m3923(c0184, c0185, c0186, c0253.f1237);
                    } else {
                        throw new C0537(C0642.m5854(87, 29, 79));
                    }
                } else {
                    iM3923 = 0;
                }
                byte[] bArr3 = new byte[i];
                bArr3[0] = (byte) (z ? !z2 ? iM3923 + 2 : iM3923 + 6 : 4);
                for (int i3 = 1; i3 < iM3812 - length; i3++) {
                    bArr3[i3] = 0;
                }
                System.arraycopy(bArr, 0, bArr3, (iM3812 + 1) - length, length);
                if (z && !z2) {
                    return bArr3;
                }
                for (int i4 = 1; i4 <= iM3812 - length2; i4++) {
                    bArr3[iM3812 + i4] = 0;
                }
                System.arraycopy(bArr2, 0, bArr3, i - length2, length2);
                return bArr3;
            }
            throw new C0537(C0642.m5854(74, 13, 20));
        }
        throw new C0537(C0642.m5854(49, 25, 122));
    }

    public static boolean m3803(byte[] bArr, int i, int i2, C0253 c0253, byte[][] bArr2, byte[][] bArr3) throws C0537 {
        int i3;
        int iM3812 = c0253.m3812();
        if (i2 < 1) {
            return false;
        }
        byte b = bArr[i];
        if (b == 0) {
            byte[] bArr4 = f1100;
            bArr2[0] = bArr4;
            bArr3[0] = bArr4;
            return true;
        }
        if (b == 4 || b == 6 || b == 7) {
            if ((i2 & 1) != 1 || ((i2 - 1) >>> 1) != iM3812) {
                return false;
            }
            System.arraycopy(bArr, i + 1, bArr2[0], 0, iM3812);
            System.arraycopy(bArr, i + iM3812 + 1, bArr3[0], 0, iM3812);
            return true;
        }
        if ((b != 2 && b != 3) || (i3 = i2 - 1) != iM3812) {
            return false;
        }
        int i4 = c0253.f1231;
        if (i4 == 24577) {
            C0184 c0184 = new C0184();
            C0184 c0185 = new C0184();
            C0184 c0186 = new C0184();
            C0184 c0187 = new C0184();
            C0184 c0188 = new C0184();
            m3802(c0253.f1239, null, c0184);
            m3802(c0253.f1235, c0184, c0187);
            m3802(c0253.f1227, c0184, c0188);
            byte[] bArr5 = new byte[i3];
            System.arraycopy(bArr, i + 1, bArr5, 0, iM3812);
            m3802(bArr5, c0184, c0185);
            if (!C0261.m3919(b - 2, c0185, c0187, c0188, c0184, c0253.f1237, c0186)) {
                return false;
            }
            bArr3[0] = C0261.m3942(c0186, iM3812);
            byte[] bArr6 = new byte[iM3812];
            bArr2[0] = bArr6;
            System.arraycopy(bArr5, 0, bArr6, 0, iM3812);
            return true;
        }
        if (i4 == 24578) {
            C0184 c0189 = new C0184();
            C0184 c01810 = new C0184();
            C0184 c01811 = new C0184();
            C0184 c01812 = new C0184();
            C0184 c01813 = new C0184();
            m3802(c0253.f1239, null, c0189);
            m3802(c0253.f1235, c0189, c01812);
            m3802(c0253.f1227, c0189, c01813);
            byte[] bArr7 = new byte[iM3812];
            System.arraycopy(bArr, i + 1, bArr7, 0, iM3812);
            m3802(bArr7, c0189, c01810);
            if (C0261.m3939(b - 2, c01810, c01812, c01813, c0189, c0253.f1237, c01811)) {
                bArr3[0] = C0261.m3942(c01811, iM3812);
                byte[] bArr8 = new byte[iM3812];
                bArr2[0] = bArr8;
                System.arraycopy(bArr7, 0, bArr8, 0, iM3812);
                return true;
            }
        }
        return false;
    }

    public static void m3802(byte[] bArr, C0184 c0184, C0184 c0185) throws C0537 {
        C0184.m3593(bArr, 0, bArr.length, c0185);
        if (c0184 == null) {
            return;
        }
        int i = c0185.f625;
        while (true) {
            int i2 = c0184.f625;
            if (i < i2) {
                c0185.f624[i] = 0;
                i++;
            } else {
                c0185.f625 = i2;
                return;
            }
        }
    }

    public static byte[] m3805(String str, int i) {
        byte[] bArr;
        int i2;
        if ((str.length() & 1) != 0) {
            str = "0" + str;
        }
        int length = str.length() >>> 1;
        int i3 = 0;
        if (i > length) {
            bArr = new byte[i];
            i2 = 0;
            while (i2 < i - length) {
                bArr[i2] = 0;
                i2++;
            }
        } else {
            bArr = new byte[length];
            i2 = 0;
        }
        while (i3 < str.length()) {
            int i4 = i3 + 2;
            bArr[i2] = (byte) C0259.m3860(C0259.m3889(str, i3, i4));
            i2++;
            i3 = i4;
        }
        return bArr;
    }

    public static boolean m3804(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null) {
            return false;
        }
        return C0301.m4164(m3799(bArr), m3799(bArr2));
    }
}
