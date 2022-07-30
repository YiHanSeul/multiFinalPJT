package com.petcare.home;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;



@SpringBootApplication
public class PetCareApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetCareApplication.class, args);
	}
	
	@Bean 
	  public ServerEndpointExporter serverEndpointExporter() { 
		  return new ServerEndpointExporter(); 
	}

	
}
