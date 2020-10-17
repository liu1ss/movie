package com.aaa.movie.dao;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface TypeDao {
    List<Map<String,Object>>findType();
}
