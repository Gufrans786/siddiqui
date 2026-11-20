package com.payfort.fortpaymentsdk.presentation.stc.stc_token;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import com.payfort.fortpaymentsdk.constants.Constants;
import com.payfort.fortpaymentsdk.domain.model.FortRequest;
import java.io.Serializable;
import java.util.HashMap;

public class RepeatStcFragmentArgs implements NavArgs {
    private final HashMap arguments;

    private RepeatStcFragmentArgs() {
        this.arguments = new HashMap();
    }

    private RepeatStcFragmentArgs(HashMap map) {
        HashMap map2 = new HashMap();
        this.arguments = map2;
        map2.putAll(map);
    }

    public static RepeatStcFragmentArgs fromBundle(Bundle bundle) {
        RepeatStcFragmentArgs repeatStcFragmentArgs = new RepeatStcFragmentArgs();
        bundle.setClassLoader(RepeatStcFragmentArgs.class.getClassLoader());
        if (bundle.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            String string = bundle.getString(Constants.EXTRAS.SDK_ENVIRONMENT);
            if (string != null) {
                repeatStcFragmentArgs.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, string);
                if (bundle.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                    if (Parcelable.class.isAssignableFrom(FortRequest.class) || Serializable.class.isAssignableFrom(FortRequest.class)) {
                        FortRequest fortRequest = (FortRequest) bundle.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
                        if (fortRequest != null) {
                            repeatStcFragmentArgs.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
                            return repeatStcFragmentArgs;
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

    public static RepeatStcFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        RepeatStcFragmentArgs repeatStcFragmentArgs = new RepeatStcFragmentArgs();
        if (savedStateHandle.contains(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            String str = (String) savedStateHandle.get(Constants.EXTRAS.SDK_ENVIRONMENT);
            if (str != null) {
                repeatStcFragmentArgs.arguments.put(Constants.EXTRAS.SDK_ENVIRONMENT, str);
                if (savedStateHandle.contains(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
                    FortRequest fortRequest = (FortRequest) savedStateHandle.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
                    if (fortRequest != null) {
                        repeatStcFragmentArgs.arguments.put(Constants.EXTRAS.SDK_MERCHANT_REQUEST, fortRequest);
                        return repeatStcFragmentArgs;
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

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            bundle.putString(Constants.EXTRAS.SDK_ENVIRONMENT, (String) this.arguments.get(Constants.EXTRAS.SDK_ENVIRONMENT));
        }
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
            FortRequest fortRequest = (FortRequest) this.arguments.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
            if (Parcelable.class.isAssignableFrom(FortRequest.class) || fortRequest == null) {
                bundle.putParcelable(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Parcelable) Parcelable.class.cast(fortRequest));
            } else {
                if (Serializable.class.isAssignableFrom(FortRequest.class)) {
                    bundle.putSerializable(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Serializable) Serializable.class.cast(fortRequest));
                    return bundle;
                }
                throw new UnsupportedOperationException(FortRequest.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
        }
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
            } else {
                if (Serializable.class.isAssignableFrom(FortRequest.class)) {
                    savedStateHandle.set(Constants.EXTRAS.SDK_MERCHANT_REQUEST, (Serializable) Serializable.class.cast(fortRequest));
                    return savedStateHandle;
                }
                throw new UnsupportedOperationException(FortRequest.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
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
        RepeatStcFragmentArgs repeatStcFragmentArgs = (RepeatStcFragmentArgs) obj;
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT) != repeatStcFragmentArgs.arguments.containsKey(Constants.EXTRAS.SDK_ENVIRONMENT)) {
            return false;
        }
        if (getEnvironment() == null ? repeatStcFragmentArgs.getEnvironment() != null : !getEnvironment().equals(repeatStcFragmentArgs.getEnvironment())) {
            return false;
        }
        if (this.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST) != repeatStcFragmentArgs.arguments.containsKey(Constants.EXTRAS.SDK_MERCHANT_REQUEST)) {
            return false;
        }
        return getMerchantReq() == null ? repeatStcFragmentArgs.getMerchantReq() == null : getMerchantReq().equals(repeatStcFragmentArgs.getMerchantReq());
    }

    public int hashCode() {
        return (((getEnvironment() != null ? getEnvironment().hashCode() : 0) + 31) * 31) + (getMerchantReq() != null ? getMerchantReq().hashCode() : 0);
    }

    public String toString() {
        return "RepeatStcFragmentArgs{environment=" + getEnvironment() + ", merchantReq=" + getMerchantReq() + "}";
    }

    public static final class Builder {
        private final HashMap arguments;

        public Builder(RepeatStcFragmentArgs repeatStcFragmentArgs) {
            HashMap map = new HashMap();
            this.arguments = map;
            map.putAll(repeatStcFragmentArgs.arguments);
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

        public RepeatStcFragmentArgs build() {
            return new RepeatStcFragmentArgs(this.arguments);
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

        public String getEnvironment() {
            return (String) this.arguments.get(Constants.EXTRAS.SDK_ENVIRONMENT);
        }

        public FortRequest getMerchantReq() {
            return (FortRequest) this.arguments.get(Constants.EXTRAS.SDK_MERCHANT_REQUEST);
        }
    }
}
