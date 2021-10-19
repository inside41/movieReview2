package com.bookshop01.movie.vo;

import org.springframework.stereotype.Component;

@Component("movieVO")
public class MovieVO {
	private String movie_id;
	private String ko_title;
	private String en_title;
	private String trailer;
	private String poster;
	private String releasedate;
	private String rating;
	private String genre;
	private String runtime;
	private String fresh_score;
	private String audience_score;
	private String story;
	private String producer;
	private String distributor;
	private String create_date;
	private String change_date;
	
	public String getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}
	public String getEn_title() {
		return en_title;
	}
	public void setEn_title(String en_title) {
		this.en_title = en_title;
	}
	public String getKo_title() {
		return ko_title;
	}
	public void setKo_title(String ko_title) {
		this.ko_title = ko_title;
	}
	public String getTrailer() {
		return trailer;
	}
	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}
	public String getReleasedate() {
		return releasedate;
	}
	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getFresh_score() {
		return fresh_score;
	}
	public void setFresh_score(String fresh_score) {
		this.fresh_score = fresh_score;
	}
	public String getAudience_score() {
		return audience_score;
	}
	public void setAudience_score(String audience_score) {
		this.audience_score = audience_score;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getDistributor() {
		return distributor;
	}
	public void setDistributor(String distributor) {
		this.distributor = distributor;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getChange_date() {
		return change_date;
	}
	public void setChange_date(String change_date) {
		this.change_date = change_date;
	}
	
}
