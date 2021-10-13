package com.bookshop01.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import com.bookshop01.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberVO login(Map loginMap) throws DataAccessException {
		MemberVO member = (MemberVO) sqlSession.selectOne("mapper.member.login", loginMap);
		return member;
	}

	@Override
	public String selectSalt(String id) throws DataAccessException {
		String salt = sqlSession.selectOne("mapper.member.selectSalt", id);
		return salt;
	}

	@Override
	public void insertNewMember(MemberVO memberVO) throws DataAccessException {
		sqlSession.insert("mapper.member.insertNewMember", memberVO);
	}

	@Override
	public String selectOverlappedID(String id) throws DataAccessException {
		String result = sqlSession.selectOne("mapper.member.selectOverlappedID", id);
		return result;
	}

	@Override
	public MemberVO selectMemberID(MemberVO memberVO) throws DataAccessException {
		MemberVO result = sqlSession.selectOne("mapper.member.selectMemberID", memberVO);
		return result;
	}

	@Override
	public MemberVO selectMemberPW(MemberVO memberVO) throws DataAccessException {
		MemberVO result = sqlSession.selectOne("mapper.member.selectMemberPW", memberVO);
		return result;
	}

	@Override
	public MemberVO updateMemberPW(MemberVO memberVO) throws DataAccessException {
		MemberVO result = sqlSession.selectOne("mapper.member.updateMemberPW", memberVO);
		return result;
	}
}
