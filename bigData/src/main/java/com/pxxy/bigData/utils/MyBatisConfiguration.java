package com.pxxy.bigData.utils;

import java.util.Properties;

import org.springframework.context.annotation.Bean;

import com.github.pagehelper.PageHelper;
/**
 * 分页工具类
 * @author xzsoldier
 *
 */
public class MyBatisConfiguration {
	@Bean
    public PageHelper pageHelper() {
		System.out.println("MyBatisConfiguration.pageHelper()");
        PageHelper pageHelper = new PageHelper();
        Properties p = new Properties();
        p.setProperty("offsetAsPageNum", "true");
        p.setProperty("rowBoundsWithCount", "true");
        p.setProperty("reasonable", "true");
        pageHelper.setProperties(p);
        return pageHelper;
    }
}
