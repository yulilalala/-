package com.pxxy.bigData.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyConfig implements WebMvcConfigurer {
	/*
	 * public void addViewControllers(ViewControllerRegistry registry) {
	 * registry.addViewController("/").setViewName("admin/index"); }
	 */
    @Bean //将组件注册在容器
    public WebMvcConfigurer webMvcConfigurer(){
        //视图映射
        WebMvcConfigurer adapter = new WebMvcConfigurer() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
                registry.addViewController("/").setViewName("admin/login1");
                registry.addViewController("/index.html").setViewName("user/index");
                registry.addViewController("/main").setViewName("admin/index");
                registry.addViewController("/register").setViewName("user/register");
                registry.addViewController("/userRatin").setViewName("admin/userRatin");
                registry.addViewController("/index").setViewName("user/index");
                registry.addViewController("/course").setViewName("user/courseDetail");
                registry.addViewController("/search.html").setViewName("user/search");
                registry.addViewController("/courseDetail.html").setViewName("user/courseDetail");
                registry.addViewController("/course.html").setViewName("user/course.html");
                registry.addViewController("/hotCourse.html").setViewName("user/hotCourse.html");
                registry.addViewController("/userInfo.html").setViewName("user/userInfo.html");
                registry.addViewController("/aboutUS.html").setViewName("user/aboutUS.html");
                registry.addViewController("/login2").setViewName("user/login2.html");
            }

        };

        return adapter;
    }

}
