package com.abien.patterns.business.httpevents.eventsource;

import java.util.Date;
import javax.ejb.Schedule;
import javax.ejb.Singleton;
import javax.ejb.Startup;
import javax.enterprise.event.Event;
import javax.inject.Inject;
import service.PositionEvent;

/**
 *
 * @author adam bien, adam-bien.com
 */
@Startup
@Singleton
public class EventGenerator {
    
    @Inject
    Event<PositionEvent> message;
    
    @Schedule(minute="*",second="*/5",hour="*")
    public void sendTime(){
        
        message.fire(new PositionEvent("-1", "Update"));
        //System.out.println("."+date);
    }
}
