package com.jzh.car;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 应用启动入口
 */
@SpringBootApplication(scanBasePackages = "com.jzh.car")
public class CarAdminApplication {
    public static void main(String[] args) {
        SpringApplication.run(CarAdminApplication.class, args);
    }
}
