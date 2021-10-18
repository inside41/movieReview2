package com.bookshop01.movie.dao;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bookshop01.movie.vo.MovieVO;
@Repository("movieDAO")
public class MovieDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public List<MovieVO> selectMovieRanking() throws DataAccessException {
		List<MovieVO> movieRanking = (ArrayList) sqlSession.selectList("mapper.movie.selectMovieRanking");
		return movieRanking;
	}
	
	public List<MovieVO> selectReleaseDate() throws DataAccessException{
		List<MovieVO> movieReleaseDate = (ArrayList) sqlSession.selectList("mapper.movie.selectReleaseMovie");
		return movieReleaseDate;
	}
}


