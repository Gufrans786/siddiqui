package com.transistorsoft.locationmanager.adapter.callback;

import com.transistorsoft.locationmanager.scheduler.ScheduleEvent;

public interface TSScheduleCallback {
    void onSchedule(ScheduleEvent scheduleEvent);
}
