package com.mapbox.android.gestures;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;

public class StandardGestureDetector extends BaseGesture<StandardOnGestureListener> {
    private final GestureDetector gestureDetector;
    final StandardOnGestureListener innerListener;

    public static class SimpleStandardOnGestureListener implements StandardOnGestureListener {
        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public interface StandardOnGestureListener extends GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    }

    public StandardGestureDetector(Context context, AndroidGesturesManager androidGesturesManager) {
        super(context, androidGesturesManager);
        StandardOnGestureListener standardOnGestureListener = new StandardOnGestureListener() {
            @Override
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return StandardGestureDetector.this.canExecute(5) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onSingleTapUp(motionEvent);
            }

            @Override
            public void onLongPress(MotionEvent motionEvent) {
                if (StandardGestureDetector.this.canExecute(6)) {
                    ((StandardOnGestureListener) StandardGestureDetector.this.listener).onLongPress(motionEvent);
                }
            }

            @Override
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return StandardGestureDetector.this.canExecute(0) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onScroll(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return StandardGestureDetector.this.canExecute(7) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onFling(motionEvent, motionEvent2, f, f2);
            }

            @Override
            public void onShowPress(MotionEvent motionEvent) {
                if (StandardGestureDetector.this.canExecute(8)) {
                    ((StandardOnGestureListener) StandardGestureDetector.this.listener).onShowPress(motionEvent);
                }
            }

            @Override
            public boolean onDown(MotionEvent motionEvent) {
                return StandardGestureDetector.this.canExecute(9) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onDown(motionEvent);
            }

            @Override
            public boolean onDoubleTap(MotionEvent motionEvent) {
                return StandardGestureDetector.this.canExecute(10) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onDoubleTap(motionEvent);
            }

            @Override
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                return StandardGestureDetector.this.canExecute(11) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onDoubleTapEvent(motionEvent);
            }

            @Override
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return StandardGestureDetector.this.canExecute(12) && ((StandardOnGestureListener) StandardGestureDetector.this.listener).onSingleTapConfirmed(motionEvent);
            }
        };
        this.innerListener = standardOnGestureListener;
        this.gestureDetector = new GestureDetector(context, standardOnGestureListener);
    }

    @Override
    protected boolean analyzeEvent(MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }

    public boolean isLongpressEnabled() {
        return this.gestureDetector.isLongpressEnabled();
    }

    public void setIsLongpressEnabled(boolean z) {
        this.gestureDetector.setIsLongpressEnabled(z);
    }
}
