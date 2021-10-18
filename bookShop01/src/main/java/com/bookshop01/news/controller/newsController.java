package com.bookshop01.news.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.common.base.BaseController;

@Controller("newsController")
@RequestMapping(value="/news")
public class newsController extends BaseController{

	@RequestMapping(value= "/news.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView news(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session;
		session=request.getSession();
		String newsTitle = request.getParameter("newsTitle");
		System.out.println(newsTitle);
		session.setAttribute("side_menu", "user");
		ModelAndView mav = new ModelAndView();
		mav.addObject("newsTitle", newsTitle );
		mav.setViewName("/news/news");
		return mav;
	}
	
	
	
}
