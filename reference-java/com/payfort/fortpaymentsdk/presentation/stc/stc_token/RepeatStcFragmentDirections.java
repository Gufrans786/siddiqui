package com.payfort.fortpaymentsdk.presentation.stc.stc_token;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.payfort.fortpaymentsdk.R;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import java.io.Serializable;
import java.util.HashMap;

public class RepeatStcFragmentDirections {
    private RepeatStcFragmentDirections() {
    }

    public static ActionRepeatStcFragmentToStcGenerateOtpFragment actionRepeatStcFragmentToStcGenerateOtpFragment(String str, FortRequest fortRequest) {
        return new ActionRepeatStcFragmentToStcGenerateOtpFragment(str, fortRequest);
    }

    public static ActionRepeatStcFragmentToStcPayFragment actionRepeatStcFragmentToStcPayFragment(String str) {
        return new ActionRepeatStcFragmentToStcPayFragment(str);
    }

    public static class ActionRepeatStcFragmentToStcGenerateOtpFragment implements NavDirections {
        private final HashMap arguments;

        private ActionRepeatStcFragmentToStcGenerateOtpFragment(String str, FortRequest fortRequest) {
            HashMap map = new HashMap();
            this.arguments = map;
            if (str == null) {
                throw new IllegalArgumentException("Argument \"environment\" is marked as non-null but was passed a null value.");
            }
            map.put(Constants.EXTRAS.SDK_ENVIRONMENT, str);
            if (fortRequest == null) {
                throw new IllegalArgumentException("Argument \"merchantReq\" is marked as non-null but was passed a null value.");
            }
            map.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
        }

        public ActionRepeatStcFragmentToStcGenerateOtpFragment setEnvironment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"environment\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, str);
            return this;
        }

        public ActionRepeatStcFragmentToStcGenerateOtpFragment setMerchantReq(FortRequest fortRequest) {
            if (fortRequest == null) {
                throw new IllegalArgumentException("Argument \"merchantReq\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
            return this;
        }

        public ActionRepeatStcFragmentToStcGenerateOtpFragment setIsFromRepeat(boolean z) {
            this.arguments.put("isFromRepeat", Boolean.valueOf(z));
            return this;
        }

        @Override
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
                bundle.putString(Constants.EXTRAS.SDK_ENVIRONMENT, (String) this.arguments.get(Constants.EXTRAS.SDK_ENVIRONMENT));
            }
            if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                FortRequest fortRequest = (FortRequest) this.arguments.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
                if (Parcelable.class.isAssignableFrom(FortRequest.class) || fortRequest == null) {
                    bundle.putParcelable(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Parcelable) Parcelable.class.cast(fortRequest));
                } else if (Serializable.class.isAssignableFrom(FortRequest.class)) {
                    bundle.putSerializable(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Serializable) Serializable.class.cast(fortRequest));
                } else {
                    throw new UnsupportedOperationException(FortRequest.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            }
            if (this.arguments.containsKey("isFromRepeat")) {
                bundle.putBoolean("isFromRepeat", ((Boolean) this.arguments.get("isFromRepeat")).booleanValue());
                return bundle;
            }
            bundle.putBoolean("isFromRepeat", false);
            return bundle;
        }

        @Override
        public int getActionId() {
            return R.id.action_repeatStcFragment_to_stcGenerateOtpFragment;
        }

        public String getEnvironment() {
            return (String) this.arguments.get(Constants.EXTRAS.SDK_ENVIRONMENT);
        }

        public FortRequest getMerchantReq() {
            return (FortRequest) this.arguments.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
        }

        public boolean getIsFromRepeat() {
            return ((Boolean) this.arguments.get("isFromRepeat")).booleanValue();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ActionRepeatStcFragmentToStcGenerateOtpFragment actionRepeatStcFragmentToStcGenerateOtpFragment = (ActionRepeatStcFragmentToStcGenerateOtpFragment) obj;
            if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT) != actionRepeatStcFragmentToStcGenerateOtpFragment.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
                return false;
            }
            if (getEnvironment() == null ? actionRepeatStcFragmentToStcGenerateOtpFragment.getEnvironment() != null : !getEnvironment().equals(actionRepeatStcFragmentToStcGenerateOtpFragment.getEnvironment())) {
                return false;
            }
            if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST) != actionRepeatStcFragmentToStcGenerateOtpFragment.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                return false;
            }
            if (getMerchantReq() == null ? actionRepeatStcFragmentToStcGenerateOtpFragment.getMerchantReq() == null : getMerchantReq().equals(actionRepeatStcFragmentToStcGenerateOtpFragment.getMerchantReq())) {
                return this.arguments.containsKey("isFromRepeat") == actionRepeatStcFragmentToStcGenerateOtpFragment.arguments.containsKey("isFromRepeat") && getIsFromRepeat() == actionRepeatStcFragmentToStcGenerateOtpFragment.getIsFromRepeat() && getActionId() == actionRepeatStcFragmentToStcGenerateOtpFragment.getActionId();
            }
            return false;
        }

        public int hashCode() {
            return (((((((getEnvironment() != null ? getEnvironment().hashCode() : 0) + 31) * 31) + (getMerchantReq() != null ? getMerchantReq().hashCode() : 0)) * 31) + (getIsFromRepeat() ? 1 : 0)) * 31) + getActionId();
        }

        public String toString() {
            return "ActionRepeatStcFragmentToStcGenerateOtpFragment(actionId=" + getActionId() + "){environment=" + getEnvironment() + ", merchantReq=" + getMerchantReq() + ", isFromRepeat=" + getIsFromRepeat() + "}";
        }
    }

    public static class ActionRepeatStcFragmentToStcPayFragment implements NavDirections {
        private final HashMap arguments;

        private ActionRepeatStcFragmentToStcPayFragment(String str) {
            HashMap map = new HashMap();
            this.arguments = map;
            if (str == null) {
                throw new IllegalArgumentException("Argument \"mobileNumber\" is marked as non-null but was passed a null value.");
            }
            map.put("mobileNumber", str);
        }

        public ActionRepeatStcFragmentToStcPayFragment setMobileNumber(String str) {
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
            return R.id.action_repeatStcFragment_to_stcPayFragment;
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
            ActionRepeatStcFragmentToStcPayFragment actionRepeatStcFragmentToStcPayFragment = (ActionRepeatStcFragmentToStcPayFragment) obj;
            if (this.arguments.containsKey("mobileNumber") != actionRepeatStcFragmentToStcPayFragment.arguments.containsKey("mobileNumber")) {
                return false;
            }
            if (getMobileNumber() == null ? actionRepeatStcFragmentToStcPayFragment.getMobileNumber() == null : getMobileNumber().equals(actionRepeatStcFragmentToStcPayFragment.getMobileNumber())) {
                return getActionId() == actionRepeatStcFragmentToStcPayFragment.getActionId();
            }
            return false;
        }

        public int hashCode() {
            return (((getMobileNumber() != null ? getMobileNumber().hashCode() : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ActionRepeatStcFragmentToStcPayFragment(actionId=" + getActionId() + "){mobileNumber=" + getMobileNumber() + "}";
        }
    }
}
