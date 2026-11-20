package com.oppwa.mobile.connect.threeds.constant;

import java.util.EnumSet;
import java.util.Iterator;

public enum ChallengeUiType {
    TEXT(1),
    SINGLE_SELECT(2),
    MULTI_SELECT(4),
    OOB(8),
    HTML(16);

    private final int a;

    ChallengeUiType(int i) {
        this.a = i;
    }

    public static int toInt(EnumSet<ChallengeUiType> enumSet) {
        Iterator it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((ChallengeUiType) it.next()).a;
        }
        return i;
    }

    public int getValue() {
        return this.a;
    }
}
