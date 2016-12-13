package com.dgmpp.edview.base.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dgmpp.edview.base.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "base/home";
	}
	
	@RequestMapping(value = "/UserCreationForm", method = RequestMethod.GET)
	public ModelAndView userCreation () {
		
		return new ModelAndView("base/UserCreation", "userVO", new UserVO());
	}
	
	@RequestMapping(value = "/HomeControllerMapping", method = RequestMethod.POST)
	public ModelAndView homeController (HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userVO") UserVO userVO) {
		//WebUtils.getSessionAttribute(request, name);
		System.out.println("Inside Home Controller  : " + userVO.getUserName());
		return new ModelAndView("base/UserCreation", "userVO", new UserVO());
	}
	
	@RequestMapping(value = "/HomeControllerAjaxMapping", method = RequestMethod.POST)
	public ModelAndView homeAjaxController (HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userVO") UserVO userVO) {
		System.out.println("Inside Home Ajax Controller  : " + userVO.getUserName());
		return new ModelAndView("base/UserCreation", "userVO", userVO);
	}
	
	@RequestMapping(value = "/base/DashboardHome", method = RequestMethod.GET)
	public String dashboardHome (HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userVO") UserVO userVO) {
		System.out.println("inside dashboard");
		return "base/Dashboard";
	}
	
}