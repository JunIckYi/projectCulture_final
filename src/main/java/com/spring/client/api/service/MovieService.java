package com.spring.client.api.service;

import java.util.List;

import com.spring.client.api.vo.MovieVO;

public interface MovieService {
	public List<MovieVO> getNowPlayingMovies();
	public List<MovieVO> getPopularMovies();
	public List<MovieVO> getUpcomingMovies();
	
	public MovieVO getMovieDetail(String id);
	public List<MovieVO>  searchMovie(String searchTitle);
	
}