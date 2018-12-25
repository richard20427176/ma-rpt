package com.test.marpt.common.components.shiro.bean;

import com.test.marpt.common.components.shiro.RptShiroRealm;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by James at 2018/11/2 10:41
 **/
@Configuration
public class ShiroConfig {

    /**
     * @param securityManager
     * @return
     */
    @Bean(name = "shiroFilter")
    public ShiroFilterFactoryBean shiroFilterFactoryBean(@Qualifier("securityManager")SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();

        shiroFilterFactoryBean.setSecurityManager(securityManager);
        shiroFilterFactoryBean.setLoginUrl("/");
        shiroFilterFactoryBean.setSuccessUrl("/home/index");

        Map<String, Filter> filterMap = new HashMap();
        filterMap.put("authc", new FormAuthenticationFilter());
        shiroFilterFactoryBean.setFilters(filterMap);

        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        filterChainDefinitionMap.put("/","anon");
        filterChainDefinitionMap.put("/auth/login", "anon");
        filterChainDefinitionMap.put("/auth/userlogin", "anon");
        filterChainDefinitionMap.put("/auth/logout", "logout");
        filterChainDefinitionMap.put("/assets/**","anon");
        filterChainDefinitionMap.put("/pages/**","anon");

        filterChainDefinitionMap.put("/**", "authc");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);


        return shiroFilterFactoryBean;
    }

    /**
     * 安全管理器
     * Shiro核心模块。通过它来链接Realm和用户（文档中称之为Subject）
     * @return
     */
    @Bean(name = "securityManager")
    public SecurityManager securityManager(@Qualifier("rptShiroRealm")RptShiroRealm rptShiroRealm) {
        DefaultWebSecurityManager defaultWebSecurityManager =  new DefaultWebSecurityManager();
        defaultWebSecurityManager.setRealm(rptShiroRealm);

        return defaultWebSecurityManager;
    }






//    @Bean
//    public SessionManager webSessionManager(){
//        DefaultWebSessionManager manager = new DefaultWebSessionManager();
//        //设置session过期时间为1小时(单位：毫秒)，默认为30分钟
//        manager.setGlobalSessionTimeout(60 * 60 * 1000);
//        manager.setSessionValidationSchedulerEnabled(true);
//        //manager.setSessionDAO(redisSessionDAO());
//        return manager;
//    }

    /**
     * AOP式方法级权限检查
     * @return
     */
//    @Bean
//    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator(){
//        DefaultAdvisorAutoProxyCreator creator = new DefaultAdvisorAutoProxyCreator();
//        creator.setProxyTargetClass(true);
//
//        return creator;
//    }

    /**
     *  保证实现了Shiro内部lifecycle函数的bean执行
     * @return
     */
//    @Bean
//    public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor(){
//        return new LifecycleBeanPostProcessor();
//    }

//    @Bean
//    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(@Qualifier("rptShiroRealm")RptShiroRealm rptShiroRealm) {
//        SecurityManager manager = securityManager(rptShiroRealm);
//        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
//        advisor.setSecurityManager(manager);
//
//        return advisor;
//    }


}
