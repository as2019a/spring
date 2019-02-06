package com.inc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inc.domain.Job;
import com.inc.service.JobService;

@Controller
@RequestMapping(value="/hello")
public class HelloJobController {
	
	@RequestMapping(value="/hellojob", method=RequestMethod.GET)
	@ResponseBody //페이지작업중...
	public String helljob(Model model) {
		List<Job> jobList = JobService.jobList();
		model.addAttribute("jobList", jobList); //U와 u는 다르다.("소문자(a~z)","a~z");
		return "/hello";
	}
}
