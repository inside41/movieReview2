package com.bookshop01.member.service;

import java.util.Map;

import com.bookshop01.member.vo.MemberVO;

public interface MemberService {
	public MemberVO login(Map  loginMap) throws Exception;
	public String getSalt(String id) throws Exception;
	public void addMember(MemberVO memberVO) throws Exception;
	public String overlapped(String id) throws Exception;
	public String searchMemberID(MemberVO memberVO) throws Exception;
	public MemberVO searchMemberPW(MemberVO memberVO) throws Exception;
}
