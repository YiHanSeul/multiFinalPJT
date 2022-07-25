package com.petcare.home.api;

public class ChatMessage {
	private String content;
	private String sender;
	private MessageType type;
	
	public enum MessageType{
		CHAT, LEAVE, JOIN
	}

	public ChatMessage(String content, String sender, MessageType type) {
		super();
		this.content = content;
		this.sender = sender;
		this.type = type;
	}

	public ChatMessage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public MessageType getType() {
		return type;
	}

	public void setType(MessageType type) {
		this.type = type;
	}
	
	
}
