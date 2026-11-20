package nts;

import java.io.Serializable;
import java.security.spec.AlgorithmParameterSpec;

public class C0144 implements AlgorithmParameterSpec, Serializable {

    public int f328;

    public C0144(int i) {
        if (i != 3 && i != 4 && i != 5 && i != 6) {
            throw new C0414(280, C0164.m3495(19751, 24, 83));
        }
        this.f328 = i;
    }
}
