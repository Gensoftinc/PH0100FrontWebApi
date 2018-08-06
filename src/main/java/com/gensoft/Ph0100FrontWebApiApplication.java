package com.gensoft;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class Ph0100FrontWebApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(Ph0100FrontWebApiApplication.class, args);
	}
}
