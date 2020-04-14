package net.room.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.room.entity.User;
import net.room.service.userServiceI;

@Controller
@RequestMapping("/user")
public class userController {

	@Autowired
	private userServiceI userService;
	@RequestMapping("select")
	public ModelAndView selectUser(@RequestParam("userName") String userName,@RequestParam("pwd") String pwd) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectUser(userName);
		if(user==null) {
			String msg="用户不存在";
			mv.addObject("msg", msg);
			mv.setViewName("login/login");
		}
		else if(user.getPassword().equals(pwd)){
			mv.setViewName("room/insertRoom");
		}
		else {
			String msg="密码错误";
			mv.addObject("msg", msg);
			mv.setViewName("login/login");
		}
		return mv;
	}
}
