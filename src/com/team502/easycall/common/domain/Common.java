package com.team502.easycall.common.domain;
/**
 * 业务公共表实体类
 * @author tangyunliang
 * @date 2013-12-22
 */
public class Common {
	
	private Integer pkId;
	private String serviceName;
	private String serviceIp;
	private String servicePort;
	
	public Integer getPkId() {
		return pkId;
	}
	public void setPkId(Integer pkId) {
		this.pkId = pkId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceIp() {
		return serviceIp;
	}
	public void setServiceIp(String serviceIp) {
		this.serviceIp = serviceIp;
	}
	public String getServicePort() {
		return servicePort;
	}
	public void setServicePort(String servicePort) {
		this.servicePort = servicePort;
	}
	
}
