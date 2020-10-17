package com.aaa.movie.service.impl;

import com.aaa.movie.dao.TypeDao;
import com.aaa.movie.service.TypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class TypeServiceImpl implements TypeService {
    @Resource
    private TypeDao typeDao;

    @Override
    public List<Map<String, Object>> findType() {
        return typeDao.findType();
    }
}
