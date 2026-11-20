package com.payfort.fortpaymentsdk.presentation.init;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.payfort.fortpaymentsdk.domain.usecase.ValidateDataUseCase;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0002H\u0006\"\b\b\u0000\u0010\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00060\tH\u0016¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/payfort/fortpaymentsdk/presentation/init/ValidateViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "validateDataUseCase", "Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;", "(Lcom/payfort/fortpaymentsdk/domain/usecase/ValidateDataUseCase;)V", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ValidateViewModelFactory implements ViewModelProvider.Factory {
    private final ValidateDataUseCase validateDataUseCase;

    public ValidateViewModelFactory(ValidateDataUseCase validateDataUseCase) {
        Intrinsics.checkNotNullParameter(validateDataUseCase, "validateDataUseCase");
        this.validateDataUseCase = validateDataUseCase;
    }

    @Override
    public <T extends ViewModel> T create(Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        if (modelClass.isAssignableFrom(ValidateViewModel.class)) {
            return new ValidateViewModel(this.validateDataUseCase);
        }
        throw new IllegalArgumentException("Unable to construct viewmodel");
    }
}
