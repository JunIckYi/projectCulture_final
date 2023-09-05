package com.spring.client.visitor.service;

import java.util.Date;



public interface VisitorCountService {
    public void increaseDailyVisitorCount(Date date);
    public Integer getDailyVisitorCount(Date date);
    public Integer getTotalVisitorCount(Date date);

}
