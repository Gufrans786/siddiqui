package im.zego.connection;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.CellSignalStrength;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.reactnativecommunity.netinfo.BroadcastReceiverConnectivityReceiver;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class NetworkStateChangeReceiver48048 extends BroadcastReceiver {
    private static final int TYPE_CELLULAR = 2;
    private static final int TYPE_ETHERNET = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_OTHERS = 32;
    private static final int TYPE_WIFI = 1;
    private ZNetworkCallback mCellularNetworkCallback;
    private ConnectivityManager mConnectivityManager;
    private Context mContext;
    private NetworkInfo mDefaultNetworkInfo;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private PhoneStateListener mPhoneStateListener;
    private TelephonyManager mTelephonyManager;
    private long mThis;
    private ZNetworkCallback mWifiNetworkCallback;
    private Intent mIntent = new Intent();
    private int mCellSignalDbm = 0;
    private int mCellSignalLevel = 0;
    private HashMap<Long, ZNetworkInfo> mNetworks = new HashMap<>();
    private long mDefaultNetId = 0;

    private int calculateCdmaSignalLevel(int dbm) {
        if (dbm >= -89) {
            return 4;
        }
        if (dbm >= -97) {
            return 3;
        }
        if (dbm >= -105) {
            return 2;
        }
        return dbm >= -113 ? 1 : 0;
    }

    private int calculateGsmSignalLevel(int asu) {
        if (asu <= 2 || asu == 99) {
            return 0;
        }
        if (asu >= 12) {
            return 4;
        }
        if (asu >= 8) {
            return 3;
        }
        return asu >= 5 ? 2 : 1;
    }

    static native void onNetTypeChanged(long pThis, int nt, int active_vpn, String ni);

    static native void onNetworkInfoChanged(long pThis, ZNetworkInfo[] networkInfos);

    private void registerPhoneStateListener() {
    }

    static native void setNativeLog(String log);

    private void unregisterPhoneStateListener() {
    }

    static class ZNetworkInfo {
        long netId;
        int type;

        ZNetworkInfo() {
        }
    }

    public void setThis(long pThis) {
        this.mThis = pThis;
    }

    public synchronized int init(Context ctx) {
        this.mContext = ctx;
        if (ctx == null) {
            return -1;
        }
        this.mConnectivityManager = (ConnectivityManager) ctx.getSystemService("connectivity");
        this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BroadcastReceiverConnectivityReceiver.CONNECTIVITY_ACTION);
        this.mContext.registerReceiver(this, intentFilter);
        CheckNotify();
        return 0;
    }

    public synchronized int uninit() {
        Context context = this.mContext;
        if (context == null) {
            return -1;
        }
        context.unregisterReceiver(this);
        ZNetworkCallback zNetworkCallback = this.mWifiNetworkCallback;
        if (zNetworkCallback != null) {
            ConnectivityManager connectivityManager = this.mConnectivityManager;
            if (connectivityManager != null) {
                try {
                    connectivityManager.unregisterNetworkCallback(zNetworkCallback);
                } catch (Exception unused) {
                }
            }
            this.mWifiNetworkCallback = null;
        }
        cancelCellularNetwork();
        this.mHandler = null;
        HandlerThread handlerThread = this.mHandlerThread;
        if (handlerThread != null) {
            handlerThread.quitSafely();
            this.mHandlerThread = null;
        }
        this.mContext = null;
        return 0;
    }

    public void checkCurrentNetType() {
        CheckNotify();
    }

    public synchronized void CheckNotify() {
        NetworkCapabilities networkCapabilities;
        int i;
        String string;
        if (this.mContext == null) {
            return;
        }
        ConnectivityManager connectivityManager = this.mConnectivityManager;
        int netTypeDetail = 0;
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                Network activeNetwork = this.mConnectivityManager.getActiveNetwork();
                if (activeNetwork == null || (networkCapabilities = this.mConnectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasTransport(4)) {
                    i = 0;
                } else {
                    i = 1;
                }
            } catch (Exception e) {
                setNativeLog("getActiveNetworkInfo failed. " + e.toString());
            }
            string = "";
            if (activeNetworkInfo == null) {
                string = activeNetworkInfo.toString();
                netTypeDetail = getNetTypeDetail(activeNetworkInfo);
            }
            onNetTypeChanged(this.mThis, netTypeDetail, i, string);
            return;
        }
        i = 0;
        string = "";
        if (activeNetworkInfo == null) {
            string = activeNetworkInfo.toString();
            netTypeDetail = getNetTypeDetail(activeNetworkInfo);
        }
        onNetTypeChanged(this.mThis, netTypeDetail, i, string);
        return;
        throw th;
    }

    @Override
    public synchronized void onReceive(Context context, Intent intent) {
        CheckNotify();
    }

    private int getNetTypeDetail(NetworkInfo ni) {
        int type = ni.getType();
        if (type != 0) {
            if (type != 1) {
                return type != 9 ? 32 : 1;
            }
            return 2;
        }
        switch (ni.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 3;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
            case 18:
                return 5;
            case 19:
            default:
                return 32;
            case 20:
                return 6;
        }
    }

    public int getWifiSignalDbm() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        if (wifiManager == null || !wifiManager.isWifiEnabled() || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return 0;
        }
        return connectionInfo.getRssi();
    }

    public int getWifiSignalLevel() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        if (wifiManager == null || !wifiManager.isWifiEnabled() || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return 0;
        }
        return WifiManager.calculateSignalLevel(connectionInfo.getRssi(), 5);
    }

    public int getCellSignalDbm() {
        return this.mCellSignalDbm;
    }

    public int getCellSignalLevel() {
        return this.mCellSignalLevel;
    }

    private void getCachedCellSignalInfo() {
        TelephonyManager telephonyManager;
        if (Build.VERSION.SDK_INT < 28 || (telephonyManager = this.mTelephonyManager) == null) {
            return;
        }
        try {
            SignalStrength signalStrength = telephonyManager.getSignalStrength();
            if (signalStrength != null) {
                int[] cellSignalDetail = getCellSignalDetail(signalStrength);
                this.mCellSignalDbm = cellSignalDetail[0];
                this.mCellSignalLevel = cellSignalDetail[1];
            }
        } catch (Exception unused) {
        }
    }

    private int[] getCellSignalDetail(SignalStrength signalStrength) {
        int iCalculateCdmaSignalLevel;
        int level;
        int i = 0;
        if (signalStrength == null) {
            return new int[]{0, 0};
        }
        try {
            int i2 = Build.VERSION.SDK_INT;
            try {
                if (i2 >= 29) {
                    List<CellSignalStrength> cellSignalStrengths = signalStrength.getCellSignalStrengths();
                    if (cellSignalStrengths.size() > 0) {
                        int dbm = cellSignalStrengths.get(0).getDbm();
                        level = cellSignalStrengths.get(0).getLevel();
                        i = dbm;
                    } else {
                        level = 0;
                    }
                } else {
                    if (signalStrength.isGsm()) {
                        int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                        if (gsmSignalStrength < 0 || gsmSignalStrength > 31) {
                            iCalculateCdmaSignalLevel = 0;
                        } else {
                            int i3 = (gsmSignalStrength * 2) - 113;
                            try {
                                iCalculateCdmaSignalLevel = calculateGsmSignalLevel(gsmSignalStrength);
                                i = i3;
                            } catch (Exception unused) {
                                iCalculateCdmaSignalLevel = 0;
                                i = i3;
                                return new int[]{i, iCalculateCdmaSignalLevel};
                            } catch (Throwable unused2) {
                                iCalculateCdmaSignalLevel = 0;
                                i = i3;
                                return new int[]{i, iCalculateCdmaSignalLevel};
                            }
                        }
                    } else {
                        int cdmaDbm = signalStrength.getCdmaDbm();
                        iCalculateCdmaSignalLevel = calculateCdmaSignalLevel(cdmaDbm);
                        i = cdmaDbm;
                    }
                    try {
                        level = signalStrength.getLevel();
                    } catch (Exception unused3) {
                        return new int[]{i, iCalculateCdmaSignalLevel};
                    } catch (Throwable unused4) {
                        return new int[]{i, iCalculateCdmaSignalLevel};
                    }
                }
                return new int[]{i, level};
            } catch (Exception unused5) {
                iCalculateCdmaSignalLevel = 0;
                i = i2;
            } catch (Throwable unused6) {
                iCalculateCdmaSignalLevel = 0;
                i = i2;
            }
        } catch (Exception unused7) {
            iCalculateCdmaSignalLevel = 0;
        } catch (Throwable unused8) {
            iCalculateCdmaSignalLevel = 0;
        }
    }

    void CallbackOnNetworkInfoChanged() {
        UpdateDefaultNetwork();
        onNetworkInfoChanged(this.mThis, (ZNetworkInfo[]) this.mNetworks.values().toArray(new ZNetworkInfo[0]));
    }

    public int requestCellularNetwork() {
        if (Build.VERSION.SDK_INT >= 26) {
            synchronized (this) {
                if (this.mConnectivityManager == null) {
                    return -1;
                }
                HandlerThread handlerThread = new HandlerThread("zego_net_monitor_thread");
                this.mHandlerThread = handlerThread;
                handlerThread.start();
                this.mHandler = new Handler(this.mHandlerThread.getLooper());
                if (this.mWifiNetworkCallback == null) {
                    try {
                        this.mWifiNetworkCallback = new ZNetworkCallback();
                        this.mConnectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), this.mWifiNetworkCallback, this.mHandler);
                    } catch (Throwable unused) {
                        this.mCellularNetworkCallback = null;
                        return -1;
                    }
                }
                if (this.mCellularNetworkCallback == null) {
                    try {
                        this.mCellularNetworkCallback = new ZNetworkCallback();
                        this.mConnectivityManager.requestNetwork(new NetworkRequest.Builder().addTransportType(0).addCapability(12).build(), this.mCellularNetworkCallback, this.mHandler);
                    } catch (Throwable unused2) {
                        this.mCellularNetworkCallback = null;
                        return -1;
                    }
                }
                CheckNetworkInfoNotify();
            }
        }
        return 0;
    }

    public int cancelCellularNetwork() {
        synchronized (this) {
            ZNetworkCallback zNetworkCallback = this.mCellularNetworkCallback;
            if (zNetworkCallback != null) {
                ConnectivityManager connectivityManager = this.mConnectivityManager;
                if (connectivityManager != null) {
                    try {
                        connectivityManager.unregisterNetworkCallback(zNetworkCallback);
                    } catch (Exception e) {
                        setNativeLog("cancelCellularNetwork failed. " + e.toString());
                    }
                }
                this.mCellularNetworkCallback = null;
            }
        }
        return 0;
    }

    class ZNetworkCallback extends ConnectivityManager.NetworkCallback {
        ZNetworkCallback() {
        }

        @Override
        public void onAvailable(Network network) {
            super.onAvailable(network);
        }

        @Override
        public void onLosing(Network network, int maxMsToLive) {
            super.onLosing(network, maxMsToLive);
        }

        @Override
        public void onLost(Network network) {
            super.onLost(network);
            if (NetworkStateChangeReceiver48048.this.mNetworks.remove(Long.valueOf(network.getNetworkHandle())) != null) {
                NetworkStateChangeReceiver48048.this.CallbackOnNetworkInfoChanged();
            }
        }

        @Override
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            if (networkCapabilities.hasCapability(12)) {
                ZNetworkInfo zNetworkInfo = new ZNetworkInfo();
                zNetworkInfo.netId = network.getNetworkHandle();
                if (networkCapabilities.hasTransport(0)) {
                    zNetworkInfo.type = 2;
                } else if (networkCapabilities.hasTransport(1)) {
                    zNetworkInfo.type = 1;
                } else if (networkCapabilities.hasTransport(3)) {
                    zNetworkInfo.type = 3;
                } else {
                    zNetworkInfo.type = 32;
                }
                if (NetworkStateChangeReceiver48048.this.mNetworks.put(Long.valueOf(zNetworkInfo.netId), zNetworkInfo) == null) {
                    NetworkStateChangeReceiver48048.this.CallbackOnNetworkInfoChanged();
                }
            }
        }

        @Override
        public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            super.onLinkPropertiesChanged(network, linkProperties);
        }

        @Override
        public void onBlockedStatusChanged(Network network, boolean blocked) {
            super.onBlockedStatusChanged(network, blocked);
        }
    }

    boolean UpdateDefaultNetwork() {
        Network activeNetwork;
        if (this.mConnectivityManager == null) {
            return false;
        }
        try {
            activeNetwork = this.mConnectivityManager.getActiveNetwork();
        } catch (Exception e) {
            setNativeLog("getActiveNetwork failed. " + e.toString());
            activeNetwork = null;
        }
        long networkHandle = activeNetwork != null ? activeNetwork.getNetworkHandle() : 0L;
        if (networkHandle == this.mDefaultNetId) {
            return false;
        }
        this.mDefaultNetId = networkHandle;
        return true;
    }

    public synchronized void CheckNetworkInfoNotify() {
        if (this.mContext != null && this.mConnectivityManager != null) {
            UpdateDefaultNetwork();
            int i = 0;
            if (Build.VERSION.SDK_INT < 26) {
                try {
                    Network[] allNetworks = this.mConnectivityManager.getAllNetworks();
                    HashSet hashSet = new HashSet();
                    int length = allNetworks.length;
                    int i2 = 0;
                    while (i < length) {
                        try {
                            Network network = allNetworks[i];
                            NetworkInfo networkInfo = this.mConnectivityManager.getNetworkInfo(network);
                            if (networkInfo != null && networkInfo.isConnected()) {
                                hashSet.add(Long.valueOf(network.getNetworkHandle()));
                                if (!this.mNetworks.containsKey(Long.valueOf(network.getNetworkHandle()))) {
                                    ZNetworkInfo zNetworkInfo = new ZNetworkInfo();
                                    zNetworkInfo.netId = network.getNetworkHandle();
                                    zNetworkInfo.type = GetNetType(networkInfo);
                                    this.mNetworks.put(Long.valueOf(zNetworkInfo.netId), zNetworkInfo);
                                    i2 = 1;
                                }
                            }
                            i++;
                        } catch (Exception e) {
                            e = e;
                            i = i2;
                            setNativeLog("CheckNetworkInfoNotify failed. " + e.toString());
                            if (i != 0) {
                                CallbackOnNetworkInfoChanged();
                            }
                        }
                    }
                    HashSet hashSet2 = new HashSet(this.mNetworks.keySet());
                    hashSet2.removeAll(hashSet);
                    if (!hashSet2.isEmpty()) {
                        Iterator it = hashSet2.iterator();
                        while (it.hasNext()) {
                            this.mNetworks.remove((Long) it.next());
                            i2 = 1;
                        }
                    }
                    i = i2;
                } catch (Exception e2) {
                    e = e2;
                }
            }
            if (i != 0) {
                CallbackOnNetworkInfoChanged();
            }
        }
    }

    static int GetNetType(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return 0;
        }
        int type = networkInfo.getType();
        if (type == 0) {
            return 2;
        }
        if (type != 1) {
            return type != 9 ? 32 : 3;
        }
        return 1;
    }
}
