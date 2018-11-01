package com.tmkcomputers.springbootrestapimonolith;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class SpringBootRestApiMonolithApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootRestApiMonolithApplication.class, args);
		System.out.println("hi sujata");
	}
}
