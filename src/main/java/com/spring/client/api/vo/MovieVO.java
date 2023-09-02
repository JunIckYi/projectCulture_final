package com.spring.client.api.vo;

import com.spring.client.api.vo.MovieVO;

import lombok.Data;

@Data
public class MovieVO {
	
	private Boolean adult;
	private String backdrop_path;
//	private String genre_ids;
	private String id;
	private String overview;
	private String popularity;
	private String poster_path;
	private String release_date;
	private String title;
	private String vote_average;
	private int vote_count;
	private int rank;
	private String original_title;
}
