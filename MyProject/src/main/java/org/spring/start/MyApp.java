package org.spring.start;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages="org.spring.start.*")
public class MyApp {
	
	public static void main(String args[]) {
		SpringApplication.run(MyApp.class, args);
	}

}
