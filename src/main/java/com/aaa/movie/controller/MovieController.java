package com.aaa.movie.controller;

import com.aaa.movie.dao.MovieDao;
import com.aaa.movie.entity.Movie;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.print.DocFlavor;
import java.util.List;

@Controller
public class MovieController {
    @Resource
    private MovieDao movieDao;

    @RequestMapping("fmovie")
    public String findfmovie(Model model)
    {
        List<Movie> movieList = movieDao.findMovie();
        model.addAttribute("mlist",movieList);
        return "FindMovie";
    }
    @RequestMapping("upmovie")
    public String updateMovie(Movie movie)
    {
        movieDao.UpdateMovie(movie);
        return "redirect:fmovie";
    }
    @RequestMapping("find")
    @ResponseBody
    public List<Movie> findShow()
    {

        return movieDao.findMovie();
    }
}
