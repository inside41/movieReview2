package com.bookshop01.main;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.common.base.BaseController;
import com.bookshop01.goods.service.GoodsService;
import com.bookshop01.goods.vo.GoodsVO;
import com.bookshop01.movie.service.MovieService;

@Controller("mainController")
@EnableAspectJAutoProxy
public class MainController extends BaseController {
	@Autowired
	private MovieService movieService;
	
	

//	@RequestMapping(value= "/main/main.do" ,method={RequestMethod.POST,RequestMethod.GET})
//	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		HttpSession session;
//		ModelAndView mav=new ModelAndView();
//		String viewName=(String)request.getAttribute("viewName");
//		mav.setViewName(viewName);
//		
//		session=request.getSession();
//		session.setAttribute("side_menu", "user");
//		Map<String,List<GoodsVO>> goodsMap=goodsService.listGoods();
//		mav.addObject("goodsMap", goodsMap);
//		return mav;
//	}
	
	@RequestMapping(value= "/main/main.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView movie(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session;
		session=request.getSession();
		session.setAttribute("side_menu", "user");
		ModelAndView mav = new ModelAndView();
		
		//??ŷ ?? ??????????ȭ ?????? ????
		searchMRAndMR(mav);
		
		mav.addObject("movieTrailer", movieService.searchTrailer());
		mav.addObject("movieFreshScore",movieService.searchsolt("fresh_score"));
		
		mav.setViewName("/main/main");
		return mav;
	}
	
	@RequestMapping(value= "/main/minhotest.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView minhotest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		//??ŷ ?? ??????????ȭ ?????? ????
		searchMRAndMR(mav);
		mav.setViewName("/main/test");
		return mav;
	}
	
	@RequestMapping(value= "/main/movieDetail.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView movieDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		//??ŷ ?? ??????????ȭ ?????? ????
		searchMRAndMR(mav);
		mav.setViewName("/main/movieDetail");
		return mav;
	}
	
	
}
