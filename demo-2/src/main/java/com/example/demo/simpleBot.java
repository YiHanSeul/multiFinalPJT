package com.example.demo;

import org.telegram.telegrambots.bots.TelegramLongPollingBot;
import org.telegram.telegrambots.meta.api.methods.send.SendMessage;
import org.telegram.telegrambots.meta.api.objects.Message;
import org.telegram.telegrambots.meta.api.objects.Update;
import org.telegram.telegrambots.meta.exceptions.TelegramApiException;

public class simpleBot extends TelegramLongPollingBot{



	 @Override
	    public String getBotUsername() {
	        return "MultiTestBot";
	    }

	    @Override
	    public void onUpdateReceived(Update update) {
	        Message message = update.getMessage();
	       
	        if (update.hasMessage() && update.getMessage().hasText()) {
	            SendMessage sendMessage = new SendMessage();
	            sendMessage.setChatId(update.getMessage().getChatId().toString());
	            sendMessage.setText("자동 응답으로 보낼 메시지");
	            try {
					execute(sendMessage);
				} catch (TelegramApiException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }
	    }

	    @Override
	    public String getBotToken() {
	        return "5533727333:AAH5l4wauRst50LGFnhEUlT2kM41pcYQ4ho";
	    }
	
	
	
}
