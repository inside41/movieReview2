package com.bookshop01.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.bookshop01.member.vo.MemberVO;

public interface MemberDAO {
	public MemberVO login(Map loginMap) throws DataAccessException;
	public String selectSalt(String id) throws DataAccessException;
	public void insertNewMember(MemberVO memberVO) throws DataAccessException;
	public String selectOverlappedID(String id) throws DataAccessException;
	public MemberVO selectMemberID(MemberVO memberVO) throws DataAccessException;
	public MemberVO selectMemberPW(MemberVO memberVO) throws DataAccessException;
	public MemberVO updateMemberPW(MemberVO memberVO) throws DataAccessException;
}
