package com.team502.easycall.common.domain;
/**
 * 
 * @author tangyunliang
 * @date 2013-12-23
 *
 */
public class Stat {
	
	private Integer pkStatDay;
	private Integer pkStatType;
	private String description;
	
	public Integer getPkStatDay() {
		return pkStatDay;
	}
	public void setPkStatDay(Integer pkStatDay) {
		this.pkStatDay = pkStatDay;
	}
	public Integer getPkStatType() {
		return pkStatType;
	}
	public void setPkStatType(Integer pkStatType) {
		this.pkStatType = pkStatType;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
