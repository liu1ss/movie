package com.aaa.movie.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.text.SimpleDateFormat;
import java.util.Date;
@Data
public class Movie {
    private Integer movieid;
    private String Moviename;
    private String Movielang;
    private Integer Moviescore;
    private String Moviedesc;
    private Integer Typeid;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date Dmdate;
    private Type type;

    public String  getDmdate() {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String s= sdf.format(Dmdate);
        return s;
    }

    public void setDmdate(Date dmdate) {
        Dmdate = dmdate;
    }
}
