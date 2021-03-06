package com.app.entity.sys;

public class JdbcInfo {
	private String driverName;
	private String url;
	private String username;
	private String password;

	public String getDriverName() {
		return driverName;
	}

	public JdbcInfo(String driverName, String url, String username,
			String password) {
		this.driverName=driverName;
		this.url=url;
		this.username=username;
		this.password=password;

	}

	public JdbcInfo() {
	}

	@Override
	public String toString() {
		return "JdbcInfo [driverName=" + driverName + ", password=" + password
				+ ", url=" + url + ", username=" + username + "]";
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
