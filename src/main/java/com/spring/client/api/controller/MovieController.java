package com.spring.client.api.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.client.api.service.MovieService;
import com.spring.client.api.vo.MovieVO;


import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class MovieController {
	
	@Setter(onMethod_ = @Autowired)
	private MovieService movieService;
	
	@GetMapping("/")
	public String getNowPlaying(Model model) {

		List<MovieVO> movies = movieService.getNowPlayingMovies();
		List<MovieVO> popular = movieService.getPopularMovies();
		List<MovieVO> upcoming = movieService.getUpcomingMovies();
		
		model.addAttribute("movies",movies);
		model.addAttribute("popular",popular);
		model.addAttribute("upcoming",upcoming);

		return "index";
	}
	
	@PostMapping("/movieDetail/{id}")
	public String getDetail(@PathVariable String id, Model model) {
		MovieVO movie = movieService.getMovieDetail(id);
		String overview = movie.getOverview();
		if(overview=="") {
			overview = "준비중 입니다.";
		}
		movie.setOverview(overview);
		model.addAttribute("movie",movie);
	
		return "client/movie/movieDetail";
	}
	
	@PostMapping("/movieSearch")
	public String getMovieDetail(@RequestParam String title1, Model model) {
		log.info("title ", title1);
		
		List<MovieVO> searchMovie = movieService.searchMovie(title1);
		model.addAttribute("movies",searchMovie);
		return "client/movie/movieSearch";
	}
}
