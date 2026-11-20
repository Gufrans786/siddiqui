package ch.qos.logback.core;

import androidx.webkit.internal.AssetHelper;
import ch.qos.logback.core.spi.ContextAwareBase;

public abstract class LayoutBase<E> extends ContextAwareBase implements Layout<E> {
    String fileFooter;
    String fileHeader;
    String presentationFooter;
    String presentationHeader;
    protected boolean started;

    public String getContentType() {
        return AssetHelper.DEFAULT_MIME_TYPE;
    }

    @Override
    public Context getContext() {
        return this.context;
    }

    @Override
    public String getFileFooter() {
        return this.fileFooter;
    }

    @Override
    public String getFileHeader() {
        return this.fileHeader;
    }

    @Override
    public String getPresentationFooter() {
        return this.presentationFooter;
    }

    @Override
    public String getPresentationHeader() {
        return this.presentationHeader;
    }

    @Override
    public boolean isStarted() {
        return this.started;
    }

    @Override
    public void setContext(Context context) {
        this.context = context;
    }

    public void setFileFooter(String str) {
        this.fileFooter = str;
    }

    public void setFileHeader(String str) {
        this.fileHeader = str;
    }

    public void setPresentationFooter(String str) {
        this.presentationFooter = str;
    }

    public void setPresentationHeader(String str) {
        this.presentationHeader = str;
    }

    public void start() {
        this.started = true;
    }

    @Override
    public void stop() {
        this.started = false;
    }
}
