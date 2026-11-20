package com.mapbox.maps.plugin.gestures;

import android.view.MotionEvent;
import com.mapbox.android.gestures.StandardGestureDetector;

class StandardGestureListenerShim extends StandardGestureDetector.SimpleStandardOnGestureListener {
    StandardGestureListenerShim() {
    }

    @Override
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return super.onSingleTapConfirmed(motionEvent);
    }

    @Override
    public boolean onDoubleTap(MotionEvent motionEvent) {
        return super.onDoubleTap(motionEvent);
    }

    @Override
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return super.onDoubleTapEvent(motionEvent);
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        return super.onDown(motionEvent);
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
        super.onShowPress(motionEvent);
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return super.onSingleTapUp(motionEvent);
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return super.onScroll(motionEvent, motionEvent2, f, f2);
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
        super.onLongPress(motionEvent);
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }
}
