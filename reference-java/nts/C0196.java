package nts;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;

public class C0196 implements InterfaceC0535 {
    @Override
    public void mo3462(Socket socket, int i) throws SocketException {
        if (i > 2048) {
            socket.setSendBufferSize(i);
        }
    }

    @Override
    public void mo3468(Socket socket, int i) throws SocketException {
        if (i > 2048) {
            socket.setReceiveBufferSize(i);
        }
    }

    @Override
    public boolean mo3469(DatagramSocket datagramSocket) {
        return false;
    }

    @Override
    public void mo3461(DatagramSocket datagramSocket, int i) throws SocketException {
        if (i > 2048) {
            datagramSocket.setSendBufferSize(i);
        }
    }

    @Override
    public DatagramSocket mo3464(InetAddress inetAddress, int i, boolean z) throws IOException {
        return new DatagramSocket(i, inetAddress);
    }

    @Override
    public void mo3467(DatagramSocket datagramSocket, InetAddress inetAddress, int i) throws SecurityException, IllegalArgumentException {
        datagramSocket.connect(inetAddress, i);
    }

    @Override
    public void mo3466(DatagramSocket datagramSocket, int i) throws SocketException {
        if (i > 2048) {
            datagramSocket.setReceiveBufferSize(i);
        }
    }

    @Override
    public void mo3465(DatagramPacket datagramPacket, byte[] bArr, int i, int i2) {
        datagramPacket.setData(bArr, i, i2);
    }

    @Override
    public RandomAccessFile mo3463(String str, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        randomAccessFile.seek(j);
        randomAccessFile.setLength(j);
        return randomAccessFile;
    }
}
