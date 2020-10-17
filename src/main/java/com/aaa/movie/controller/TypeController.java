package com.aaa.movie.controller;

import com.aaa.movie.entity.Movie;
import com.aaa.movie.service.MovieService;
import com.aaa.movie.service.TypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class TypeController {
    @Resource
    private TypeService typeService;
    @Resource
    private MovieService movieService;
    @RequestMapping("ftype")
    public String findType(Model model,Integer movieid)
    {
        List<Map<String,Object>> typeList = typeService.findType();
        Movie movieList = movieService.findMovieid(movieid);
        System.out.println(typeList);
        model.addAttribute("typeList",typeList);
        model.addAttribute("movieByid",movieList);
        return  "UpdateMovie";
    }
}
