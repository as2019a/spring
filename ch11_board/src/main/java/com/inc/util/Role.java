package com.inc.util;

import org.springframework.security.core.GrantedAuthority;

import com.inc.domain.User;

public class Role {
	
	public static boolean hasRole(User user, String role) {
		boolean hasRole = false;
		for(GrantedAuthority authority : user.getAuthorities()) {
			if(authority.getAuthority().equals("ROLE_ADMIN")) {
				hasRole = true;
				break;
			}
		}
		
		return hasRole;
	}
}
