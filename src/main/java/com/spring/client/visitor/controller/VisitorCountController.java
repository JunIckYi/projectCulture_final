package com.spring.client.visitor.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.client.visitor.service.VisitorCountService;

@RestController
@RequestMapping("/visitor")
public class VisitorCountController {
	 private final VisitorCountService visitorCountService;

	    @Autowired
	    public VisitorCountController(VisitorCountService visitorCountService) {
	        this.visitorCountService = visitorCountService;
	    }

	    @PostMapping("/increase")
	    public void increaseVisitorCount(@RequestParam("date") Date date) {
	        visitorCountService.increaseDailyVisitorCount(date);
	    }

	    @GetMapping("/daily-count")
	    public Integer getDailyVisitorCount(@RequestParam("date") Date date) {
	        return visitorCountService.getDailyVisitorCount(date);
	    }

	    @GetMapping("/total-count")
	    public Integer getTotalVisitorCount(@RequestParam("date") Date date) {
	        return visitorCountService.getTotalVisitorCount(date);
	    }

}
