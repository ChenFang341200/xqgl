package com.nuc.admin.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nuc.admin.domain.Room;
import com.nuc.admin.domain.User;
import com.nuc.admin.manager.LoginManager;

@Controller
public class LoginAction {

	@Autowired
	LoginManager loginManager;
	public LoginManager getLoginManager() {
		return loginManager;
	}
	public void setLoginManager(LoginManager loginManager) {
		this.loginManager = loginManager;
	}

	/**
	 * @Title: InSystem
	 * @Description: 用户登录
	 * @return String
	 */
	@RequestMapping(value="admin/LoginInSystem.action",method=RequestMethod.POST)
	public String InSystem(User params,
			ModelMap model,HttpServletRequest request,HttpServletResponse response,HttpSession httpSession){
		try {
//			String random = (String)httpSession.getAttribute("random");
//			if (!random.equals(params.getRandom())) {
//				model.addAttribute("tip","验证码错误");
//				model.addAttribute("params",params);
//				return "login";
//			}
			
			//用户登录查询
			User admin = loginManager.getUser(params);
			if (admin!=null) {
				httpSession.setAttribute("admin", admin);
				
				//查询房屋字典
				Room room = new Room();
				room.setStart(-1);
				List<Room> rooms = loginManager.listRooms(room, null);
				if (rooms==null) {
					rooms = new ArrayList<Room>();
				}
				httpSession.setAttribute("rooms", rooms);
			}else {
				model.addAttribute("tip","用户名或密码错误");
				model.addAttribute("params",params);
				return "login";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("tip","登录异常，请稍后重试");
			model.addAttribute("params",params);
			return "login";
		}
		
		return "redirect:index.jsp"; 
	}
	
	/**
	 * @Title: OutSystem
	 * @Description: 退出登录
	 * @return String
	 */
	@RequestMapping(value="admin/LoginOutSystem.action",method=RequestMethod.GET)
	public String OutSystem(HttpSession httpSession){
		try {
			//用户查询
			User user = (User)httpSession.getAttribute("admin");
			if (user!=null) {
				//退出登录
				httpSession.removeAttribute("admin");
				httpSession.invalidate();
			}
			
		} catch (Exception e) {
			return "login";
		}
		
		return "login";
	}
	
}
