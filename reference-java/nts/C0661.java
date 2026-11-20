package nts;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

public class C0661 extends C0196 implements InterfaceC0535 {
    @Override
    public boolean mo3469(DatagramSocket datagramSocket) {
        try {
            return datagramSocket.getReuseAddress();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override
    public DatagramSocket mo3464(InetAddress inetAddress, int i, boolean z) throws IOException {
        try {
            DatagramSocket datagramSocket = new DatagramSocket((SocketAddress) null);
            datagramSocket.setReuseAddress(z);
            datagramSocket.bind(new InetSocketAddress(inetAddress, i));
            return datagramSocket;
        } catch (Throwable unused) {
            return new DatagramSocket(i, inetAddress);
        }
    }

    @Override
    public RandomAccessFile mo3463(String str, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        randomAccessFile.seek(j);
        randomAccessFile.setLength(j);
        return randomAccessFile;
    }
}
