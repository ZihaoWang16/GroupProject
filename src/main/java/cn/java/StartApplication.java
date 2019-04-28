/**
 * Project Name:XMAP
 * File Name:StartApplication.java
 * Package Name:cn.java
 * Date:2019年3月27日下午3:59:43
 * Copyright (c) 2019, All Rights Reserved.
 *
*/

package cn.java;

import org.mybatis.spring.annotation.MapperScan;
/**
 * Description:	   <br/>
 * Date:     2019年3月27日 下午3:59:43 <br/>
 * @author   asus
 * @version  
 * @see 	 
 */
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "cn.java.controller", "cn.java.service.impl" })
@EnableAutoConfiguration
@MapperScan(basePackages = { "cn.java.mapper" })
public class StartApplication {
    // Sidahuang
    // ZhengWu
    // wqriugasdjiasf
    // zjw
    // dai
    // zihao
	// Lsg
    public static void main(String[] args) {
        SpringApplication.run(StartApplication.class, args);
    }
}
