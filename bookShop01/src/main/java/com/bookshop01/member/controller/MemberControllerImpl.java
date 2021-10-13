package com.bookshop01.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.common.SHA256.SHA256Util;
import com.bookshop01.common.base.BaseController;
import com.bookshop01.goods.vo.GoodsVO;
import com.bookshop01.member.service.MemberService;
import com.bookshop01.member.vo.MemberVO;

@Controller("memberController")
@RequestMapping(value="/member")
public class MemberControllerImpl extends BaseController implements MemberController{
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	
	@Override
	@RequestMapping(value="/login.do" ,method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		//입력받은 비밀번호 와 salt 취득
		String password = loginMap.get("member_pw");
		String salt = memberService.getSalt(loginMap.get("member_id"));
		
		//비밀번호와 salt를 사용하여 암호화
		if(salt != null) {
			loginMap.put("member_pw",SHA256Util.getEncrypt(password, salt));
		}
		
		//DB 확인
		memberVO=memberService.login(loginMap);
		if(memberVO!= null && memberVO.getMember_id()!=null){
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo",memberVO);
			
			String action=(String)session.getAttribute("action");
			if(action!=null && action.equals("/order/orderEachGoods.do")){
				mav.setViewName("forward:"+action);
			}else{
				mav.setViewName("redirect:/main/main.do");	
			}
		}else{
			String message="아이디나  비밀번호가 틀립니다. 다시 로그인해주세요";
			mav.addObject("message", message);
			mav.setViewName("/member/loginForm");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value="/logout.do" ,method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session=request.getSession();
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		mav.setViewName("redirect:/main/main.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/addMember.do" ,method = RequestMethod.POST)
	public ResponseEntity addMember(@ModelAttribute("memberVO") MemberVO _memberVO,
			                HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		String email2Str = _memberVO.getEmail2().replace(",", "");
		_memberVO.setEmail2(email2Str);
		try {
			//암호화를 위한 salt 생성
			String salt = SHA256Util.generateSalt();
			_memberVO.setSalt(salt);
			//salt와 비밀번호를 조합하여 암호화 실행
			String password = _memberVO.getMember_pw();
			password = SHA256Util.getEncrypt(password, salt);
			_memberVO.setMember_pw(password);
			//DB에 입력
		    memberService.addMember(_memberVO);
		    message  = "<script>";
		    message +=" alert('회원 가입을 마쳤습니다.로그인창으로 이동합니다.');";
		    message += " location.href='"+request.getContextPath()+"/member/loginForm.do';";
		    message += " </script>";
		    
		}catch(Exception e) {
			message  = "<script>";
		    message +=" alert('작업 중 오류가 발생했습니다. 다시 시도해 주세요');";
		    message += " location.href='"+request.getContextPath()+"/member/memberForm.do';";
		    message += " </script>";
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value="/overlapped.do" ,method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception{
		ResponseEntity resEntity = null;
		String result = memberService.overlapped(id);
		resEntity =new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value="/searchMember.do" ,method = RequestMethod.POST)
	public ModelAndView searchMember(@ModelAttribute("memberVO") MemberVO _memberVO , HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView();
		try {
			String searchValue = request.getParameter("searchValue");
			_memberVO.setEmail2(_memberVO.getEmail2().replace(",", ""));
			MemberVO memberInfo;
			String message="계정이 존재하지 않습니다. 다시 한번 확인해주세요";
			if(searchValue.equals("idc")) {
				memberInfo = memberService.searchMemberID(_memberVO);
				if(memberInfo != null) {
					mav.addObject("member_id",memberInfo.getMember_id().toString());
					mav.addObject("searchValue", searchValue);
					mav.setViewName("/member/searchForm");
				}else {
					mav.addObject("message", message);
					mav.addObject("searchValue", "id");
					mav.setViewName("/member/searchForm");
				}
			}else {
				memberInfo = memberService.searchMemberPW(_memberVO);
				if(memberInfo != null) {
					mav.addObject("memberInfo",memberInfo);
					mav.setViewName("/member/changeForm");
				}else {
					mav.addObject("message", message);
					mav.addObject("searchValue", "pw");
					mav.setViewName("/member/loginForm");
				}
			}
		}catch(Exception e) {
			mav.addObject("message", "예기치 못한 오류가 발생했습니다.");
			mav.setViewName("/member/searchForm");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value="/changeMemberPW.do" ,method = RequestMethod.POST)
	public ResponseEntity changeMemberPW(@ModelAttribute("memberVO") MemberVO _memberVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
			//암호화를 위한 salt 생성
			String salt = SHA256Util.generateSalt();
			_memberVO.setSalt(salt);
			//salt와 비밀번호를 조합하여 암호화 실행
			String password = _memberVO.getMember_pw();
			password = SHA256Util.getEncrypt(password, salt);
			_memberVO.setMember_pw(password);
			//DB입력
			memberService.changeMemberPW(_memberVO);
		    message  = "<script>";
		    message +=" alert('비밀번호를 변경하였습니다. 로그인창으로 이동합니다.');";
		    message += " location.href='"+request.getContextPath()+"/member/loginForm.do';";
		    message += " </script>";
		}catch(Exception e) {
			message  = "<script>";
		    message +=" alert('작업 중 오류가 발생했습니다. 다시 시도해 주세요');";
		    message += " location.href='"+request.getContextPath()+"/member/loginForm.do';";
		    message += " </script>";
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
}
