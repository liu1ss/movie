package com.aaa.movie.service;

import com.aaa.movie.entity.Movie;

import java.util.List;

public interface MovieService {
    List<Movie> findMovie();
    Movie findMovieid(Integer movieid);
    Integer UpdateMovie(Movie movie);
}
