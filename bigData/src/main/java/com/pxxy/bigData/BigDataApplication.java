package com.pxxy.bigData;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.pxxy.bigData.mapper")
public class BigDataApplication {

	public static void main(String[] args) {
		SpringApplication.run(BigDataApplication.class, args);
	}

}
