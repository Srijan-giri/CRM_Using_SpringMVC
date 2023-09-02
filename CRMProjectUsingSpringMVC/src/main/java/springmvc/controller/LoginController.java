package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import springmvc.model.LoginUser;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping("/registration")
	public String registration()
	{
		return "registration";
	}
	
	/*
   @RequestMapping("/login-handle")
   public RedirectView loginHandle(
		   @RequestParam("")
		   )
   {
	   System.out.println(login);
	   RedirectView redirect = new RedirectView();
	   if()
	   return redirect;
   }
   */
}
