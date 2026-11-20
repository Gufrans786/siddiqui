package com.payfort.fortpaymentsdk.presentation.stc.generate_otp;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import com.payfort.fortpaymentsdk.R;
import java.util.HashMap;

public class StcGenerateOtpFragmentDirections {
    private StcGenerateOtpFragmentDirections() {
    }

    public static ActionStcGenerateOtpFragmentToStcPayFragment actionStcGenerateOtpFragmentToStcPayFragment(String str) {
        return new ActionStcGenerateOtpFragmentToStcPayFragment(str);
    }

    public static class ActionStcGenerateOtpFragmentToStcPayFragment implements NavDirections {
        private final HashMap arguments;

        private ActionStcGenerateOtpFragmentToStcPayFragment(String str) {
            HashMap map = new HashMap();
            this.arguments = map;
            if (str == null) {
                throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
            }
            map.put("mobileNumber", str);
        }

        public ActionStcGenerateOtpFragmentToStcPayFragment setMobileNumber(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put("mobileNumber", str);
            return this;
        }

        @Override
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.arguments.containsKey("mobileNumber")) {
                bundle.putString("mobileNumber", (String) this.arguments.get("mobileNumber"));
            }
            return bundle;
        }

        @Override
        public int getActionId() {
            return R.id.action_stcGenerateOtpFragment_to_stcPayFragment;
        }

        public String getMobileNumber() {
            return (String) this.arguments.get("mobileNumber");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ActionStcGenerateOtpFragmentToStcPayFragment actionStcGenerateOtpFragmentToStcPayFragment = (ActionStcGenerateOtpFragmentToStcPayFragment) obj;
            if (this.arguments.containsKey("mobileNumber") != actionStcGenerateOtpFragmentToStcPayFragment.arguments.containsKey("mobileNumber")) {
                return false;
            }
            if (getMobileNumber() == null ? actionStcGenerateOtpFragmentToStcPayFragment.getMobileNumber() == null : getMobileNumber().equals(actionStcGenerateOtpFragmentToStcPayFragment.getMobileNumber())) {
                return getActionId() == actionStcGenerateOtpFragmentToStcPayFragment.getActionId();
            }
            return false;
        }

        public int hashCode() {
            return (((getMobileNumber() != null ? getMobileNumber().hashCode() : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ActionStcGenerateOtpFragmentToStcPayFragment(actionId=" + getActionId() + "){mobileNumber=" + getMobileNumber() + "}";
        }
    }
}
