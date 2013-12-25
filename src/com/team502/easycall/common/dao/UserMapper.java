package com.team502.easycall.common.dao;

import java.util.List;

import com.team502.easycall.common.domain.User;


public interface UserMapper {
	
	/**
	 * 查询所有的用户信息
	 * @return
	 */
	List<User> selectByAll();
	
}