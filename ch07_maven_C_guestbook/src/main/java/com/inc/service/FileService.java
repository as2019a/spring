package com.inc.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileService {
	
	public String saveFile(String path, MultipartFile file) {
		
		if(file.isEmpty()) {
			return "no_file";
		}
		String filename = file.getOriginalFilename();
		File f = new File(path, filename);
		while(f.exists()) {
			long time = System.currentTimeMillis();
			String ext = filename.substring(filename.indexOf("."));
			String name = filename.substring(0, filename.lastIndexOf("."));
			filename = name+"_"+time+ext;
			f = new File(path,filename);
		}
		try {
			file.transferTo(f);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return filename;	
	}
}
