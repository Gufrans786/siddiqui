package com.johnsonsu.rnsoundplayer;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.caverock.androidsvg.SVGParser;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.IOException;
import javax.annotation.Nullable;

public class RNSoundPlayerModule extends ReactContextBaseJavaModule implements LifecycleEventListener {
    public static final String EVENT_FINISHED_LOADING = "FinishedLoading";
    public static final String EVENT_FINISHED_LOADING_FILE = "FinishedLoadingFile";
    public static final String EVENT_FINISHED_LOADING_URL = "FinishedLoadingURL";
    public static final String EVENT_FINISHED_PLAYING = "FinishedPlaying";
    public static final String EVENT_SETUP_ERROR = "OnSetupError";
    private AudioManager audioManager;
    private MediaPlayer mediaPlayer;
    private final ReactApplicationContext reactContext;
    private float volume;

    @ReactMethod
    public void addListener(String str) {
    }

    @Override
    public void onHostPause() {
    }

    @Override
    public void onHostResume() {
    }

    @ReactMethod
    public void removeListeners(Integer num) {
    }

    public RNSoundPlayerModule(ReactApplicationContext reactApplicationContext) {
        super(reactApplicationContext);
        this.reactContext = reactApplicationContext;
        this.volume = 1.0f;
        this.audioManager = (AudioManager) reactApplicationContext.getSystemService("audio");
        reactApplicationContext.addLifecycleEventListener(this);
    }

    @Override
    public String getName() {
        return "RNSoundPlayer";
    }

    @ReactMethod
    public void setSpeaker(Boolean bool) {
        this.audioManager.setMode(3);
        this.audioManager.setSpeakerphoneOn(bool.booleanValue());
    }

    @Override
    public void onHostDestroy() {
        stop();
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mediaPlayer = null;
        }
    }

    @ReactMethod
    public void playSoundFile(String str, String str2) throws IOException {
        mountSoundFile(str, str2);
        resume();
    }

    @ReactMethod
    public void loadSoundFile(String str, String str2) throws IOException {
        mountSoundFile(str, str2);
    }

    @ReactMethod
    public void playUrl(String str) throws IOException {
        prepareUrl(str);
        resume();
    }

    @ReactMethod
    public void loadUrl(String str) throws IOException {
        prepareUrl(str);
    }

    @ReactMethod
    public void pause() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
    }

    @ReactMethod
    public void resume() throws IllegalStateException, IOException {
        if (this.mediaPlayer != null) {
            setVolume(this.volume);
            this.mediaPlayer.start();
        }
    }

    @ReactMethod
    public void stop() throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
    }

    @ReactMethod
    public void seek(float f) throws IllegalStateException {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.seekTo(((int) f) * 1000);
        }
    }

    @ReactMethod
    public void setVolume(float f) throws IOException {
        this.volume = f;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
        }
    }

    @ReactMethod
    public void setNumberOfLoops(int i) {
        Boolean bool;
        if (i == 0) {
            bool = false;
        } else {
            bool = true;
        }
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(bool.booleanValue());
        }
    }

    @ReactMethod
    public void getInfo(Promise promise) {
        if (this.mediaPlayer == null) {
            promise.resolve(null);
            return;
        }
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putDouble("currentTime", ((double) this.mediaPlayer.getCurrentPosition()) / 1000.0d);
        writableMapCreateMap.putDouble(TypedValues.TransitionType.S_DURATION, ((double) this.mediaPlayer.getDuration()) / 1000.0d);
        promise.resolve(writableMapCreateMap);
    }

    public void sendEvent(ReactApplicationContext reactApplicationContext, String str, @Nullable WritableMap writableMap) {
        ((DeviceEventManagerModule.RCTDeviceEventEmitter) reactApplicationContext.getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)).emit(str, writableMap);
    }

    private void mountSoundFile(String str, String str2) throws IOException {
        Uri uriFromFile;
        try {
            if (getReactApplicationContext().getResources().getIdentifier(str, "raw", getReactApplicationContext().getPackageName()) > 0) {
                uriFromFile = Uri.parse("android.resource://" + getReactApplicationContext().getPackageName() + "/raw/" + str);
            } else {
                uriFromFile = getUriFromFile(str, str2);
            }
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                this.mediaPlayer = initializeMediaPlayer(uriFromFile);
            } else {
                mediaPlayer.reset();
                this.mediaPlayer.setDataSource(getCurrentActivity(), uriFromFile);
                this.mediaPlayer.prepare();
            }
            sendMountFileSuccessEvents(str, str2);
        } catch (IOException e) {
            sendErrorEvent(e);
        }
    }

    private Uri getUriFromFile(String str, String str2) {
        String absolutePath = getReactApplicationContext().getFilesDir().getAbsolutePath();
        if (!str2.isEmpty()) {
            str = str + "." + str2;
        }
        File file = new File(absolutePath + "/" + str);
        if (file.exists()) {
            file.setReadable(true, false);
        }
        return Uri.parse("file://" + absolutePath + "/" + str);
    }

    private void prepareUrl(final String str) throws IOException {
        try {
            if (this.mediaPlayer == null) {
                MediaPlayer mediaPlayerInitializeMediaPlayer = initializeMediaPlayer(Uri.parse(str));
                this.mediaPlayer = mediaPlayerInitializeMediaPlayer;
                mediaPlayerInitializeMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                    @Override
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        WritableMap writableMapCreateMap = Arguments.createMap();
                        writableMapCreateMap.putBoolean(FirebaseAnalytics.Param.SUCCESS, true);
                        writableMapCreateMap.putString(ImagesContract.URL, str);
                        RNSoundPlayerModule rNSoundPlayerModule = RNSoundPlayerModule.this;
                        rNSoundPlayerModule.sendEvent(rNSoundPlayerModule.getReactApplicationContext(), RNSoundPlayerModule.EVENT_FINISHED_LOADING_URL, writableMapCreateMap);
                    }
                });
            } else {
                Uri uri = Uri.parse(str);
                this.mediaPlayer.reset();
                this.mediaPlayer.setDataSource(getCurrentActivity(), uri);
                this.mediaPlayer.prepare();
            }
            WritableMap writableMapCreateMap = Arguments.createMap();
            writableMapCreateMap.putBoolean(FirebaseAnalytics.Param.SUCCESS, true);
            sendEvent(getReactApplicationContext(), EVENT_FINISHED_LOADING, writableMapCreateMap);
        } catch (IOException e) {
            WritableMap writableMapCreateMap2 = Arguments.createMap();
            writableMapCreateMap2.putString("error", e.getMessage());
            sendEvent(getReactApplicationContext(), EVENT_SETUP_ERROR, writableMapCreateMap2);
        }
    }

    private MediaPlayer initializeMediaPlayer(Uri uri) throws IOException {
        MediaPlayer mediaPlayerCreate = MediaPlayer.create(getCurrentActivity(), uri);
        if (mediaPlayerCreate == null) {
            throw new IOException("Failed to initialize MediaPlayer for URI: " + uri.toString());
        }
        mediaPlayerCreate.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public void onCompletion(MediaPlayer mediaPlayer) {
                WritableMap writableMapCreateMap = Arguments.createMap();
                writableMapCreateMap.putBoolean(FirebaseAnalytics.Param.SUCCESS, true);
                RNSoundPlayerModule rNSoundPlayerModule = RNSoundPlayerModule.this;
                rNSoundPlayerModule.sendEvent(rNSoundPlayerModule.getReactApplicationContext(), RNSoundPlayerModule.EVENT_FINISHED_PLAYING, writableMapCreateMap);
            }
        });
        return mediaPlayerCreate;
    }

    private void sendMountFileSuccessEvents(String str, String str2) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putBoolean(FirebaseAnalytics.Param.SUCCESS, true);
        sendEvent(this.reactContext, EVENT_FINISHED_LOADING, writableMapCreateMap);
        WritableMap writableMapCreateMap2 = Arguments.createMap();
        writableMapCreateMap2.putBoolean(FirebaseAnalytics.Param.SUCCESS, true);
        writableMapCreateMap2.putString("name", str);
        writableMapCreateMap2.putString(SVGParser.XML_STYLESHEET_ATTR_TYPE, str2);
        sendEvent(this.reactContext, EVENT_FINISHED_LOADING_FILE, writableMapCreateMap2);
    }

    private void sendErrorEvent(IOException iOException) {
        WritableMap writableMapCreateMap = Arguments.createMap();
        writableMapCreateMap.putString("error", iOException.getMessage());
        sendEvent(this.reactContext, EVENT_SETUP_ERROR, writableMapCreateMap);
    }
}
