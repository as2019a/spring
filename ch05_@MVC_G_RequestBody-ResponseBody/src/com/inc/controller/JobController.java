package com.inc.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JobController {
	private Map<String, List<String>> jobMap;

	public void setJobMap(Map<String, List<String>> jobMap) {
		this.jobMap = jobMap;
	}

	@RequestMapping(value="/job/biglist", method=RequestMethod.GET)
	@ResponseBody
	public Set<String> bigList() {
		return jobMap.keySet();
	}
	
	@RequestMapping(value="/job/smalllist", method=RequestMethod.GET)
	@ResponseBody
	public List<String> smallList(@RequestParam String bjob){
		return jobMap.get(bjob);
	}
}
