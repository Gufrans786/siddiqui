package com.payfort.fortpaymentsdk.presentation.stc.pay;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.util.HashMap;

public class StcPayFragmentArgs implements NavArgs {
    private final HashMap arguments;

    private StcPayFragmentArgs() {
        this.arguments = new HashMap();
    }

    private StcPayFragmentArgs(HashMap map) {
        HashMap map2 = new HashMap();
        this.arguments = map2;
        map2.putAll(map);
    }

    public static StcPayFragmentArgs fromBundle(Bundle bundle) {
        StcPayFragmentArgs stcPayFragmentArgs = new StcPayFragmentArgs();
        bundle.setClassLoader(StcPayFragmentArgs.class.getClassLoader());
        if (bundle.containsKey("mobileNumber")) {
            String string = bundle.getString("mobileNumber");
            if (string != null) {
                stcPayFragmentArgs.arguments.put("mobileNumber", string);
                return stcPayFragmentArgs;
            }
            throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"mobileNumber\" is missing and does not have an android:defaultValue");
    }

    public static StcPayFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        StcPayFragmentArgs stcPayFragmentArgs = new StcPayFragmentArgs();
        if (savedStateHandle.contains("mobileNumber")) {
            String str = (String) savedStateHandle.get("mobileNumber");
            if (str != null) {
                stcPayFragmentArgs.arguments.put("mobileNumber", str);
                return stcPayFragmentArgs;
            }
            throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"mobileNumber\" is missing and does not have an android:defaultValue");
    }

    public String getMobileNumber() {
        return (String) this.arguments.get("mobileNumber");
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.arguments.containsKey("mobileNumber")) {
            bundle.putString("mobileNumber", (String) this.arguments.get("mobileNumber"));
        }
        return bundle;
    }

    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.arguments.containsKey("mobileNumber")) {
            savedStateHandle.set("mobileNumber", (String) this.arguments.get("mobileNumber"));
        }
        return savedStateHandle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StcPayFragmentArgs stcPayFragmentArgs = (StcPayFragmentArgs) obj;
        if (this.arguments.containsKey("mobileNumber") != stcPayFragmentArgs.arguments.containsKey("mobileNumber")) {
            return false;
        }
        return getMobileNumber() == null ? stcPayFragmentArgs.getMobileNumber() == null : getMobileNumber().equals(stcPayFragmentArgs.getMobileNumber());
    }

    public int hashCode() {
        return 31 + (getMobileNumber() != null ? getMobileNumber().hashCode() : 0);
    }

    public String toString() {
        return "StcPayFragmentArgs{mobileNumber=" + getMobileNumber() + "}";
    }

    public static final class Builder {
        private final HashMap arguments;

        public Builder(StcPayFragmentArgs stcPayFragmentArgs) {
            HashMap map = new HashMap();
            this.arguments = map;
            map.putAll(stcPayFragmentArgs.arguments);
        }

        public Builder(String str) {
            HashMap map = new HashMap();
            this.arguments = map;
            if (str == null) {
                throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
            }
            map.put("mobileNumber", str);
        }

        public StcPayFragmentArgs build() {
            return new StcPayFragmentArgs(this.arguments);
        }

        public Builder setMobileNumber(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put("mobileNumber", str);
            return this;
        }

        public String getMobileNumber() {
            return (String) this.arguments.get("mobileNumber");
        }
    }
}
