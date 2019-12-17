package edu.hebeu.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.hebeu.po.User;
import edu.hebeu.po.Books;
import edu.hebeu.service.UserService;
@Controller
public class UserController {
    @Autowired
	private UserService userService;
    @RequestMapping("/regist")
	public String regist(User user,Model model){
		userService.regist(user);
		
		model.addAttribute("msg", "ע��ɹ�");
		//ע��ɹ�����תsuccess.jspҳ��
		return "login";
	}
    @RequestMapping("login")
    public String addBook1(Books books) {
    	return ("login");
    }
	@RequestMapping("/loginUser")
	public String login(HttpServletRequest request,HttpServletResponse response,String username,String password,Model model){
		User loginer = userService.login(username,password);
		if (loginer!=null) {
			  request.getSession().setAttribute("loginer", loginer);
/*				model.addAttribute("loginer", loginer);
*/				
				 return "forward:bookslist";
}else{
			/*request.getSession().setAttribute("msg", "�ֻ��Ż��û�������");*/
			model.addAttribute("msg", "�ֻ��Ż��û�������");
			return("redirect:login");
		}
		
	}

}
