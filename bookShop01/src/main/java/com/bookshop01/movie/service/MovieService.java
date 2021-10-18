package com.bookshop01.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bookshop01.movie.dao.MovieDAO;
import com.bookshop01.movie.vo.MovieVO;

@Service("movieService")
@Transactional(propagation=Propagation.REQUIRED)
public class MovieService {
	@Autowired
	private MovieDAO movieDAO;
	
	@Autowired
	private MovieVO movieVO;
	
	public List<MovieVO> searchMovieRanking() throws Exception{
		return movieDAO.selectMovieRanking();
	}
	
	public List<MovieVO> searchMovieRelease() throws Exception{
		return movieDAO.selectReleaseDate();
	}
}
