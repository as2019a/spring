package com.inc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.inc.dao.UserDao;
import com.inc.domain.User;

@Service
public class UserService implements UserDetailsService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		//System.out.println(id);
		User user = userDao.selectOne(id);
		if(user == null) {
			throw new UsernameNotFoundException("아이디 또는 비밀번호가 올바르지 않습니다.");
		}
		return user;
	}
	
}
