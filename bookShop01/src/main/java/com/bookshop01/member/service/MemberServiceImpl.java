package com.bookshop01.member.service;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bookshop01.member.dao.MemberDAO;
import com.bookshop01.member.vo.MemberVO;

@Service("memberService")
@Transactional(propagation=Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO login(Map  loginMap) throws Exception{
		return memberDAO.login(loginMap);
	}
	
	@Override
	public String getSalt(String id) throws Exception {
		return memberDAO.selectSalt(id);
	}
	
	@Override
	public void addMember(MemberVO memberVO) throws Exception{
		memberDAO.insertNewMember(memberVO);
	}
	
	@Override
	public String overlapped(String id) throws Exception{
		return memberDAO.selectOverlappedID(id);
	}
	
	@Override
	public MemberVO searchMemberID(MemberVO memberVO) throws Exception {
		return memberDAO.selectMemberID(memberVO);
	}
	
	@Override
	public MemberVO searchMemberPW(MemberVO memberVO) throws Exception {
		return memberDAO.selectMemberPW(memberVO);
	}
	
	@Override
	public MemberVO changeMemberPW(MemberVO memberVO) throws Exception {
		return memberDAO.updateMemberPW(memberVO);
	}
	// 아이디 찾기
	@Override
	public String find_id(HttpServletResponse response,MemberVO memberVO) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = memberDAO.find_id(memberVO);
		
		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}
}
