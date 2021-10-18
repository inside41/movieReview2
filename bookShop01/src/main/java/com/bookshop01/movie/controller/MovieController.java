package com.bookshop01.movie.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.common.base.BaseController;
import com.bookshop01.movie.service.MovieService;
import com.bookshop01.movie.vo.MovieVO;


@Controller("movieController")
@RequestMapping(value="/movie")
public class MovieController extends BaseController{
	@Autowired
	private MovieService movieService;
	@Autowired
	private MovieVO movieVO;
	
	@RequestMapping(value="/moviedetails.do" ,method = RequestMethod.POST)
	public ModelAndView movieDetails(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		

		return mav;
	}
	
	//DB 확인
//	memberVO=memberService.login(loginMap);
//	if(memberVO!= null && memberVO.getMember_id()!=null){
//		HttpSession session=request.getSession();
//		session=request.getSession();
//		session.setAttribute("isLogOn", true);
//		session.setAttribute("memberInfo",memberVO);
//		
//		String action=(String)session.getAttribute("action");
//		if(action!=null && action.equals("/order/orderEachGoods.do")){
//			mav.setViewName("forward:"+action);
//		}else{
//			mav.setViewName("/main/main");
//		}
//	}else{
//		String message="아이디나  비밀번호가 틀립니다. 다시 로그인해주세요";
//		mav.addObject("message", message);
//		mav.setViewName("/member/loginForm");
//	}
	
//	@RequestMapping(value="/logout.do" ,method={RequestMethod.POST,RequestMethod.GET})
//	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		ModelAndView mav = new ModelAndView();
//		HttpSession session=request.getSession();
//		session.setAttribute("isLogOn", false);
//		session.removeAttribute("memberInfo");
//		mav.setViewName("redirect:/main/main.do");
//		return mav;
//	}
	
}