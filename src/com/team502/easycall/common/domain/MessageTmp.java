package com.team502.easycall.common.domain;
/**
 * 消息模板
 * @author tangyunliang
 * @date 2013-12-23
 */
public class MessageTmp {
	
	private Integer pkId;
	private Integer messageType;
	private String messageContent;
	private String description;
	
	public Integer getPkId() {
		return pkId;
	}
	public void setPkId(Integer pkId) {
		this.pkId = pkId;
	}
	public Integer getMessageType() {
		return messageType;
	}
	public void setMessageType(Integer messageType) {
		this.messageType = messageType;
	}
	public String getMessageContent() {
		return messageContent;
	}
	public void setMessageContent(String messageContent) {
		this.messageContent = messageContent;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
