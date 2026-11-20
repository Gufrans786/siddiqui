package com.payfort.fortpaymentsdk.presentation.stc.generate_otp;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import java.io.Serializable;
import java.util.HashMap;

public class StcGenerateOtpFragmentArgs implements NavArgs {
    private final HashMap arguments;

    private StcGenerateOtpFragmentArgs() {
        this.arguments = new HashMap();
    }

    private StcGenerateOtpFragmentArgs(HashMap map) {
        HashMap map2 = new HashMap();
        this.arguments = map2;
        map2.putAll(map);
    }

    public static StcGenerateOtpFragmentArgs fromBundle(Bundle bundle) {
        StcGenerateOtpFragmentArgs stcGenerateOtpFragmentArgs = new StcGenerateOtpFragmentArgs();
        bundle.setClassLoader(StcGenerateOtpFragmentArgs.class.getClassLoader());
        if (bundle.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            String string = bundle.getString(Constants.EXTRAS.SDK_ENVIRONMENT);
            if (string != null) {
                stcGenerateOtpFragmentArgs.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, string);
                if (bundle.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                    if (Parcelable.class.isAssignableFrom(FortRequest.class) || Serializable.class.isAssignableFrom(FortRequest.class)) {
                        FortRequest fortRequest = (FortRequest) bundle.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
                        if (fortRequest != null) {
                            stcGenerateOtpFragmentArgs.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
                            if (!bundle.containsKey("isFromRepeat")) {
                                stcGenerateOtpFragmentArgs.arguments.put("isFromRepeat", false);
                                return stcGenerateOtpFragmentArgs;
                            }
                            stcGenerateOtpFragmentArgs.arguments.put("isFromRepeat", Boolean.valueOf(bundle.getBoolean("isFromRepeat")));
                            return stcGenerateOtpFragmentArgs;
                        }
                        throw new IllegalArgumentException("Argument \"merchantReq\" is marked as non-null but was passed a null value.");
                    }
                    throw new UnsupportedOperationException(FortRequest.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
                throw new IllegalArgumentException("Required argument \"merchantReq\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Argument \"environment\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"environment\" is missing and does not have an android:defaultValue");
    }

    public static StcGenerateOtpFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        StcGenerateOtpFragmentArgs stcGenerateOtpFragmentArgs = new StcGenerateOtpFragmentArgs();
        if (savedStateHandle.contains(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            String str = (String) savedStateHandle.get(Constants.EXTRAS.SDK_ENVIRONMENT);
            if (str != null) {
                stcGenerateOtpFragmentArgs.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, str);
                if (savedStateHandle.contains(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                    FortRequest fortRequest = (FortRequest) savedStateHandle.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
                    if (fortRequest != null) {
                        stcGenerateOtpFragmentArgs.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
                        if (!savedStateHandle.contains("isFromRepeat")) {
                            stcGenerateOtpFragmentArgs.arguments.put("isFromRepeat", false);
                            return stcGenerateOtpFragmentArgs;
                        }
                        stcGenerateOtpFragmentArgs.arguments.put("isFromRepeat", Boolean.valueOf(((Boolean) savedStateHandle.get("isFromRepeat")).booleanValue()));
                        return stcGenerateOtpFragmentArgs;
                    }
                    throw new IllegalArgumentException("Argument \"merchantReq\" is marked as non-null but was passed a null value.");
                }
                throw new IllegalArgumentException("Required argument \"merchantReq\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Argument \"environment\" is marked as non-null but was passed a null value.");
        }
        throw new IllegalArgumentException("Required argument \"environment\" is missing and does not have an android:defaultValue");
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

    public Bundle toBundle() {
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

    public SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            savedStateHandle.set(Constants.EXTRAS.SDK_ENVIRONMENT, (String) this.arguments.get(Constants.EXTRAS.SDK_ENVIRONMENT));
        }
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
            FortRequest fortRequest = (FortRequest) this.arguments.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
            if (Parcelable.class.isAssignableFrom(FortRequest.class) || fortRequest == null) {
                savedStateHandle.set(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Parcelable) Parcelable.class.cast(fortRequest));
            } else if (Serializable.class.isAssignableFrom(FortRequest.class)) {
                savedStateHandle.set(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Serializable) Serializable.class.cast(fortRequest));
            } else {
                throw new UnsupportedOperationException(FortRequest.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }
        if (this.arguments.containsKey("isFromRepeat")) {
            savedStateHandle.set("isFromRepeat", Boolean.valueOf(((Boolean) this.arguments.get("isFromRepeat")).booleanValue()));
            return savedStateHandle;
        }
        savedStateHandle.set("isFromRepeat", false);
        return savedStateHandle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StcGenerateOtpFragmentArgs stcGenerateOtpFragmentArgs = (StcGenerateOtpFragmentArgs) obj;
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT) != stcGenerateOtpFragmentArgs.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            return false;
        }
        if (getEnvironment() == null ? stcGenerateOtpFragmentArgs.getEnvironment() != null : !getEnvironment().equals(stcGenerateOtpFragmentArgs.getEnvironment())) {
            return false;
        }
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST) != stcGenerateOtpFragmentArgs.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
            return false;
        }
        if (getMerchantReq() == null ? stcGenerateOtpFragmentArgs.getMerchantReq() == null : getMerchantReq().equals(stcGenerateOtpFragmentArgs.getMerchantReq())) {
            return this.arguments.containsKey("isFromRepeat") == stcGenerateOtpFragmentArgs.arguments.containsKey("isFromRepeat") && getIsFromRepeat() == stcGenerateOtpFragmentArgs.getIsFromRepeat();
        }
        return false;
    }

    public int hashCode() {
        return (((((getEnvironment() != null ? getEnvironment().hashCode() : 0) + 31) * 31) + (getMerchantReq() != null ? getMerchantReq().hashCode() : 0)) * 31) + (getIsFromRepeat() ? 1 : 0);
    }

    public String toString() {
        return "StcGenerateOtpFragmentArgs{environment=" + getEnvironment() + ", merchantReq=" + getMerchantReq() + ", isFromRepeat=" + getIsFromRepeat() + "}";
    }

    public static final class Builder {
        private final HashMap arguments;

        public Builder(StcGenerateOtpFragmentArgs stcGenerateOtpFragmentArgs) {
            HashMap map = new HashMap();
            this.arguments = map;
            map.putAll(stcGenerateOtpFragmentArgs.arguments);
        }

        public Builder(String str, FortRequest fortRequest) {
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

        public StcGenerateOtpFragmentArgs build() {
            return new StcGenerateOtpFragmentArgs(this.arguments);
        }

        public Builder setEnvironment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Argument \"environment\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, str);
            return this;
        }

        public Builder setMerchantReq(FortRequest fortRequest) {
            if (fortRequest == null) {
                throw new IllegalArgumentException("Argument \"merchantReq\" is marked as non-null but was passed a null value.");
            }
            this.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
            return this;
        }

        public Builder setIsFromRepeat(boolean z) {
            this.arguments.put("isFromRepeat", Boolean.valueOf(z));
            return this;
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
    }
}
