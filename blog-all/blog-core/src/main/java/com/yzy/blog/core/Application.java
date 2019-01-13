package com.yzy.blog.core;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.yzy.blog")
public class Application {
    
    public static void main(String[] args){

        SpringApplication.run(Application.class);
    }
}
