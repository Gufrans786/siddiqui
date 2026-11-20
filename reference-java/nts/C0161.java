package nts;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;

public class C0161 implements InterfaceC0535 {

    public static int f512;

    @Override
    public void mo3461(DatagramSocket datagramSocket, int i) throws SocketException {
    }

    @Override
    public void mo3462(Socket socket, int i) throws SocketException {
    }

    @Override
    public DatagramSocket mo3464(InetAddress inetAddress, int i, boolean z) throws IOException {
        return new DatagramSocket(i, inetAddress);
    }

    @Override
    public void mo3466(DatagramSocket datagramSocket, int i) throws SocketException {
    }

    @Override
    public void mo3467(DatagramSocket datagramSocket, InetAddress inetAddress, int i) throws SecurityException, IllegalArgumentException {
    }

    @Override
    public void mo3468(Socket socket, int i) throws SocketException {
    }

    @Override
    public boolean mo3469(DatagramSocket datagramSocket) {
        return false;
    }

    @Override
    public void mo3465(DatagramPacket datagramPacket, byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        datagramPacket.setData(bArr2);
        datagramPacket.setLength(i2);
    }

    @Override
    public RandomAccessFile mo3463(String str, long j) throws IOException {
        boolean z;
        File file = new File(str);
        if (j == 0) {
            if (file.exists()) {
                file.delete();
            }
            return new RandomAccessFile(str, "rw");
        }
        if (file.exists()) {
            StringBuilder sbM5891 = C0663.m5891(str);
            int i = f512;
            f512 = i + 1;
            File file2 = new File(sbM5891.append(i).toString());
            file.renameTo(file2);
            FileInputStream fileInputStream = new FileInputStream(file2);
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            byte[] bArr = new byte[4096];
            do {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                long j2 = i2;
                z = j2 >= j;
                if (z) {
                    j2 = j;
                }
                fileOutputStream.write(bArr, 0, (int) j2);
            } while (!z);
            fileOutputStream.close();
            fileInputStream.close();
            file2.delete();
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        randomAccessFile.seek(j);
        return randomAccessFile;
    }
}
