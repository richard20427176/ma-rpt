package com.test.marpt.module.bases.auth.controller;

import com.test.marpt.module.bases.auth.model.dto.LoginDto;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by James at 2018/11/1 17:24
 **/
@Controller
public class AuthController {

    /**
     * Start page
     * @return
     */
    @RequestMapping({"/","/index"})
    public String index() {
        return "forward:/auth/login";
    }

    /**
     * Login page
     * @return
     */
    @RequestMapping("/auth/login")
    public String login()  {
        return "auth/login";
    }

    /**
     * auth
     * @param loginDto
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("/auth/userlogin")
    public String userLogin(LoginDto loginDto, Model model, HttpServletRequest request) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(loginDto.getUserName(), loginDto.getPassword().toCharArray(), false);

        try {
            subject.login(token);
            subject.getSession().setAttribute("login", subject.getPrincipal());
        } catch (Exception e) {


        } finally {
            return "home/index";
        }
    }

    /**
     * @return
     */
    @RequestMapping("/auth/logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            subject.logout();
        }
        return "auth/login";
    }

    @RequestMapping("/403")
    public String unauthorizedRole(){
        return "403";
    }

}
