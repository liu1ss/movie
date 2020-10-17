package com.aaa.movie.service.impl;

import com.aaa.movie.dao.MovieDao;
import com.aaa.movie.entity.Movie;
import com.aaa.movie.service.MovieService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class MovieServiceImpl implements MovieService {
    @Resource
    private MovieDao movieDao;
    @Override
    public List<Movie> findMovie() {
        return movieDao.findMovie();
    }

    @Override
    public Movie findMovieid(Integer movieid) {
        return movieDao.findMovieid(movieid);
    }

    @Override
    public Integer UpdateMovie(Movie movie) {
        return movieDao.UpdateMovie(movie);
    }
}
