package com.bookshop01.member.service;

import java.util.List;
import java.util.Map;

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
}
