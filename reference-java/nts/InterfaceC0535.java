package nts;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;

public interface InterfaceC0535 {
    void mo3461(DatagramSocket datagramSocket, int i) throws SocketException;

    void mo3462(Socket socket, int i) throws SocketException;

    RandomAccessFile mo3463(String str, long j) throws IOException;

    DatagramSocket mo3464(InetAddress inetAddress, int i, boolean z) throws IOException;

    void mo3465(DatagramPacket datagramPacket, byte[] bArr, int i, int i2);

    void mo3466(DatagramSocket datagramSocket, int i) throws SocketException;

    void mo3467(DatagramSocket datagramSocket, InetAddress inetAddress, int i) throws SecurityException, IllegalArgumentException;

    void mo3468(Socket socket, int i) throws SocketException;

    boolean mo3469(DatagramSocket datagramSocket);
}
