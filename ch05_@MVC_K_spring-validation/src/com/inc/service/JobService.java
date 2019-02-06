package com.inc.service;

import java.util.List;

import com.inc.dao.JobDao;
import com.inc.domain.Job;

public class JobService {
	
	private static JobDao jobDao;
	
	public void setJobDao(JobDao jobDao) {
		this.jobDao = jobDao;
	}
	
	public static List<Job> jobList() {
		List<Job> jobList = jobDao.jobList();
		return jobList;
	}

}
