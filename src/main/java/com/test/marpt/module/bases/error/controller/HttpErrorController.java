package com.test.marpt.module.bases.error.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;


/**
 * Created by James at 2018/11/14 20:50
 **/
@Controller
public class HttpErrorController implements ErrorController {

    /**
     * @param request
     * @return
     */
    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {

        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if(status != null) {
            Integer statusCode = Integer.valueOf(status.toString());

            if(statusCode == HttpStatus.UNAUTHORIZED.value()) {
                return "/error/401";
            }
            else if(statusCode == HttpStatus.NOT_FOUND.value()) {
                return "/error/404";
            }
            else if(statusCode == HttpStatus.FORBIDDEN.value() ) {
                return "/error/403";
            }
            else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                return "/error/500";
            }
        }

        return "/error/error";
    }

    /**
     * @return
     */
    @Override
    public String getErrorPath() {
        return "/error/error";
    }

}
