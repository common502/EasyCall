/**
 * System Architect & Designer: He Guokun
 */
package com.team502.easycall.common.web;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team502.easycall.common.dao.UserMapper;
import com.team502.easycall.common.domain.User;

/**
 * 用户管理控制器
 * @author tangyunliang
 * @date 2013-12-22
 *
 */
@Controller
@RequestMapping("/admin/user")
public class UserController {
	private static Log log = LogFactory.getLog(UserController.class);
	@Autowired private UserMapper userMapper;
	
	@RequestMapping(method=RequestMethod.GET)
	public String showList(Model model){
		List<User> userList = userMapper.selectByAll();
		model.addAttribute("userList", userList);
		return "user.UserList";
	}
	
}
