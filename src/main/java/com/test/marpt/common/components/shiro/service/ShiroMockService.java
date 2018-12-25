package com.test.marpt.common.components.shiro.service;

import org.springframework.stereotype.Service;

/**
 * 模拟从数据库中取出用户信息
 * Created by James at 2018/11/2 10:45
 **/
@Service
public class ShiroMockService {

    public static String getPasswordByUsername(String username){
        switch (username){
            case "admin1":
                return "123456";
            case "admin6":
                return "654321";
            default:
                return null;
        }
    }
}
