package com.inc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.inc.domain.User;

@Component
public class AuthorityInterceptor extends HandlerInterceptorAdapter{
	
	
	@Override
	public boolean preHandle(HttpServletRequest httpRequest, 
							HttpServletResponse httpResponse, Object handler)
			throws Exception {
		HttpSession session = httpRequest.getSession();
		User user = (User)session.getAttribute("user");
		if(user == null) {
			httpRequest.setAttribute("msg", "로그인 후 이용가능합니다.");
			httpRequest.setAttribute("url", "/product/list?fail");
			httpRequest.getRequestDispatcher("/WEB-INF/views/etc/result.jsp").forward(httpRequest, httpResponse);
			return false;
		}else if(httpRequest.getRequestURI().indexOf("/manage") != -1
				 && !user.getId().equals("admin")) {
			httpRequest.setAttribute("msg", "관리자만 접근가능합니다.");
			httpRequest.setAttribute("url", "/product/list");
			httpRequest.getRequestDispatcher("/WEB-INF/views/etc/result.jsp").forward(httpRequest, httpResponse);
			return false;
		}
		
		return true;
	}
}
