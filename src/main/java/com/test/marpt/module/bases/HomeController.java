package com.test.marpt.module.bases;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by James at 2018/11/2 9:56
 **/
@Controller
@RequestMapping("/home")
public class HomeController {

    /**
     * @return
     */
    @RequestMapping("/index")
    public String index()  {
        return "home/index";
    }

    /**
     * @return
     */
    @RequestMapping("/header")
    public String header()  {
        return "home/header";
    }

    /**
     * @return
     */
    @RequestMapping("/sidebar")
    public String sidebar()  {
        return "home/sidebar";
    }

    /**
     * @return
     */
    @RequestMapping("/content")
    public String content()  {
        return "home/content";
    }
}
