package com.test.marpt.common.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.HashSet;
import java.util.Set;


/**
 * Created by James at 2018/11/6 22:17
 **/
@SpringBootConfiguration
public class SpringBootConfig implements WebMvcConfigurer {

    @Value("${spring.profiles.active}")
    private String env;


    /**
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
    }

    /**
     * @param configurer
     */
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        configurer.setUseSuffixPatternMatch(false);
        //configurer.setUseTrailingSlashMatch(false);
        configurer.setUseRegisteredSuffixPatternMatch(true);
    }

    /**
     * @param configurer
     */
    @Override
    public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
        configurer.favorPathExtension(true)
                .favorParameter(true)
                .parameterName("format")
                .ignoreAcceptHeader(true)
                .defaultContentType(MediaType.TEXT_HTML)
                .mediaType("html", MediaType.TEXT_HTML)
                .mediaType("json", MediaType.APPLICATION_JSON)
                .mediaType("xls", MediaType.valueOf("application/vnd.ms-excel"))
                .mediaType("xlsx", MediaType.valueOf("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"));
    }


    /**
     * @param registry
     */
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        Set<String> modelKeys=new HashSet<>();
        modelKeys.add("list");
        modelKeys.add("table");

        registry.jsp("/views/", ".jsp");
        registry.enableContentNegotiation(new MappingJackson2JsonView());

    }




    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
    }
}
