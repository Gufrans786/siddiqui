package com.microsoft.codepush.react;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;

public class CodePushDialog extends BaseJavaModule {
    public CodePushDialog(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
    }

    @ReactMethod
    public void showDialog(final String str, final String str2, final String str3, final String str4, final Callback callback, Callback callback2) {
        Activity currentActivity = getReactApplicationContext().getCurrentActivity();
        if (currentActivity == null || currentActivity.isFinishing()) {
            getReactApplicationContext().addLifecycleEventListener(new LifecycleEventListener() {
                @Override
                public void onHostDestroy() {
                }

                @Override
                public void onHostPause() {
                }

                @Override
                public void onHostResume() {
                    Activity currentActivity2 = CodePushDialog.this.getReactApplicationContext().getCurrentActivity();
                    if (currentActivity2 != null) {
                        CodePushDialog.this.getReactApplicationContext().removeLifecycleEventListener(this);
                        CodePushDialog.this.showDialogInternal(str, str2, str3, str4, callback, currentActivity2);
                    }
                }
            });
        } else {
            showDialogInternal(str, str2, str3, str4, callback, currentActivity);
        }
    }

    public void showDialogInternal(String str, String str2, String str3, String str4, final Callback callback, Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setCancelable(false);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    dialogInterface.cancel();
                    if (i == -2) {
                        callback.invoke(1);
                    } else {
                        if (i == -1) {
                            callback.invoke(0);
                            return;
                        }
                        throw new CodePushUnknownException("Unknown button ID pressed.");
                    }
                } catch (Throwable th) {
                    CodePushUtils.log(th);
                }
            }
        };
        if (str != null) {
            builder.setTitle(str);
        }
        if (str2 != null) {
            builder.setMessage(str2);
        }
        if (str3 != null) {
            builder.setPositiveButton(str3, onClickListener);
        }
        if (str4 != null) {
            builder.setNegativeButton(str4, onClickListener);
        }
        builder.create().show();
    }

    @Override
    public String getName() {
        return "CodePushDialog";
    }
}
