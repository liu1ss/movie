package com.aaa.movie.dao;

import com.aaa.movie.entity.Movie;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface MovieDao {
    List<Movie> findMovie();
    Movie findMovieid(@Param(value = "movieid") Integer movieid);
    Integer UpdateMovie(Movie movie);
}
