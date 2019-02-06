package com.inc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.inc.service.FileService;

@Controller
public class FileController {
	
	private FileService fileService;
	
	public void setFileService(FileService fileService) {
		this.fileService = fileService;
	}
	
	@RequestMapping(value="/fileupload", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> fileupload(@RequestParam MultipartFile upload,
										HttpServletRequest request) {
		String path = request.getServletContext().getRealPath("/upload");
		String filename = fileService.saveFile(path, upload);
		Map<String, String> map = new HashMap<>();
		map.put("url", "/upload/"+filename);
		return map;
	}
}
