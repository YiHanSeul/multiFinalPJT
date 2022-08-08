package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.telegram.telegrambots.meta.TelegramBotsApi;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;
import org.telegram.telegrambots.updatesreceivers.DefaultBotSession;

@SpringBootApplication
public class Demo2Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo2Application.class, args);
		
		
		try {
			TelegramBotsApi api = new  TelegramBotsApi(DefaultBotSession.class);
			api.registerBot(new simpleBot());
		} catch (TelegramApiException e) {
			e.printStackTrace();
		}
	}

}


