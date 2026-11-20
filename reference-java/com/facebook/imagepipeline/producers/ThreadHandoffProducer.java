package com.facebook.imagepipeline.producers;

import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import ch.qos.logback.core.CoreConstants;
import com.facebook.imagepipeline.instrumentation.FrescoInstrumenter;
import com.facebook.imagepipeline.systrace.FrescoSystrace;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u0012*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0012B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/facebook/imagepipeline/producers/Producer;", "inputProducer", "threadHandoffProducerQueue", "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;", "<init>", "(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;)V", "getInputProducer", "()Lcom/facebook/imagepipeline/producers/Producer;", "getThreadHandoffProducerQueue", "()Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;", "produceResults", "", "consumer", "Lcom/facebook/imagepipeline/producers/Consumer;", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/imagepipeline/producers/ProducerContext;", "Companion", "imagepipeline_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ThreadHandoffProducer<T> implements Producer<T> {

    public static final Companion INSTANCE = new Companion(null);
    public static final String PRODUCER_NAME = "BackgroundThreadHandoffProducer";
    private final Producer<T> inputProducer;
    private final ThreadHandoffProducerQueue threadHandoffProducerQueue;

    public ThreadHandoffProducer(Producer<T> inputProducer, ThreadHandoffProducerQueue threadHandoffProducerQueue) {
        Intrinsics.checkNotNullParameter(inputProducer, "inputProducer");
        Intrinsics.checkNotNullParameter(threadHandoffProducerQueue, "threadHandoffProducerQueue");
        this.inputProducer = inputProducer;
        this.threadHandoffProducerQueue = threadHandoffProducerQueue;
    }

    public final Producer<T> getInputProducer() {
        return this.inputProducer;
    }

    public final ThreadHandoffProducerQueue getThreadHandoffProducerQueue() {
        return this.threadHandoffProducerQueue;
    }

    @Override
    public void produceResults(final Consumer<T> consumer, final ProducerContext context) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(context, "context");
        FrescoSystrace frescoSystrace = FrescoSystrace.INSTANCE;
        if (!FrescoSystrace.isTracing()) {
            final ProducerListener2 producerListener = context.getProducerListener();
            Companion companion = INSTANCE;
            if (companion.shouldRunImmediately(context)) {
                producerListener.onProducerStart(context, PRODUCER_NAME);
                producerListener.onProducerFinishWithSuccess(context, PRODUCER_NAME, null);
                this.inputProducer.produceResults(consumer, context);
                return;
            } else {
                final StatefulProducerRunnable<T> statefulProducerRunnable = new StatefulProducerRunnable<T>(consumer, producerListener, context, this) {
                    final Consumer<T> $consumer;
                    final ProducerContext $context;
                    final ProducerListener2 $producerListener;
                    final ThreadHandoffProducer<T> this$0;

                    @Override
                    protected void disposeResult(T ignored) {
                    }

                    @Override
                    protected T getResult() throws Exception {
                        return null;
                    }

                    {
                        super(consumer, producerListener, context, ThreadHandoffProducer.PRODUCER_NAME);
                        this.$consumer = consumer;
                        this.$producerListener = producerListener;
                        this.$context = context;
                        this.this$0 = this;
                    }

                    @Override
                    protected void onSuccess(T ignored) {
                        this.$producerListener.onProducerFinishWithSuccess(this.$context, ThreadHandoffProducer.PRODUCER_NAME, null);
                        this.this$0.getInputProducer().produceResults(this.$consumer, this.$context);
                    }
                };
                context.addCallbacks(new BaseProducerContextCallbacks() {
                    @Override
                    public void onCancellationRequested() {
                        statefulProducerRunnable.cancel();
                        this.getThreadHandoffProducerQueue().remove(statefulProducerRunnable);
                    }
                });
                this.threadHandoffProducerQueue.addToQueueOrExecute(FrescoInstrumenter.decorateRunnable(statefulProducerRunnable, companion.getInstrumentationTag(context)));
                return;
            }
        }
        FrescoSystrace.beginSection("ThreadHandoffProducer#produceResults");
        try {
            final ProducerListener2 producerListener2 = context.getProducerListener();
            Companion companion2 = INSTANCE;
            if (companion2.shouldRunImmediately(context)) {
                producerListener2.onProducerStart(context, PRODUCER_NAME);
                producerListener2.onProducerFinishWithSuccess(context, PRODUCER_NAME, null);
                this.inputProducer.produceResults(consumer, context);
            } else {
                final StatefulProducerRunnable<T> statefulProducerRunnable2 = new StatefulProducerRunnable<T>(consumer, producerListener2, context, this) {
                    final Consumer<T> $consumer;
                    final ProducerContext $context;
                    final ProducerListener2 $producerListener;
                    final ThreadHandoffProducer<T> this$0;

                    @Override
                    protected void disposeResult(T ignored) {
                    }

                    @Override
                    protected T getResult() throws Exception {
                        return null;
                    }

                    {
                        super(consumer, producerListener2, context, ThreadHandoffProducer.PRODUCER_NAME);
                        this.$consumer = consumer;
                        this.$producerListener = producerListener2;
                        this.$context = context;
                        this.this$0 = this;
                    }

                    @Override
                    protected void onSuccess(T ignored) {
                        this.$producerListener.onProducerFinishWithSuccess(this.$context, ThreadHandoffProducer.PRODUCER_NAME, null);
                        this.this$0.getInputProducer().produceResults(this.$consumer, this.$context);
                    }
                };
                context.addCallbacks(new BaseProducerContextCallbacks() {
                    @Override
                    public void onCancellationRequested() {
                        statefulProducerRunnable2.cancel();
                        this.getThreadHandoffProducerQueue().remove(statefulProducerRunnable2);
                    }
                });
                this.threadHandoffProducerQueue.addToQueueOrExecute(FrescoInstrumenter.decorateRunnable(statefulProducerRunnable2, companion2.getInstrumentationTag(context)));
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            FrescoSystrace.endSection();
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/facebook/imagepipeline/producers/ThreadHandoffProducer$Companion;", "", "<init>", "()V", "PRODUCER_NAME", "", "getInstrumentationTag", CoreConstants.CONTEXT_SCOPE_VALUE, "Lcom/facebook/imagepipeline/producers/ProducerContext;", "shouldRunImmediately", "", "imagepipeline_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getInstrumentationTag(ProducerContext context) {
            if (!FrescoInstrumenter.isTracing()) {
                return null;
            }
            return "ThreadHandoffProducer_produceResults_" + context.getId();
        }

        public final boolean shouldRunImmediately(ProducerContext context) {
            return context.getImagePipelineConfig().getExperiments().getHandOffOnUiThreadOnly() && Looper.getMainLooper().getThread() != Thread.currentThread();
        }
    }
}
