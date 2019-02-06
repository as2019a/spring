package com.inc.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DefaultServletController {
	
	@RequestMapping(value="/public/css/style.css", method=RequestMethod.GET)
	@ResponseBody
	public void styleCss(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/css; charset=utf-8");
		String path = request.getServletContext().getRealPath("/css/style.css");
		//System.out.println(path);
		File cssFile = new File(path);
		System.out.println(cssFile.exists());
		try {
			FileReader reader = new FileReader(cssFile);
			int buffer = 0;
			while((buffer = reader.read()) != -1) {
				//System.out.print((char)buffer);
				response.getWriter().print((char)buffer);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
