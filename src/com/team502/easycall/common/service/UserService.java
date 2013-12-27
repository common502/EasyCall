package com.team502.easycall.common.service;

import java.util.ArrayList;
import java.util.List;

import com.team502.easycall.common.domain.User;

/**
 * 用户业务处理类
 * @author antion
 */
public class UserService {
	
	/**
	 * 查询所有用户
	 * @return
	 */
	public List<User> selectByAll(){
		List<User> userList = new ArrayList<User>();
		return userList;
	}
	
	/**
	 * 通过ID查询用户
	 */
	public User getUserById(String userId){
		return null;
	}
	
	/**
	 * 删除用户
	 */
	public void deleteUser(User user){
		
	}
}
