package com.smile;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class K8sScGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(K8sScGatewayApplication.class, args);
    }



}
