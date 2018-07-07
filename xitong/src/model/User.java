//20163623 王莉
package model;

public class User {
	private String user_name;
	private String user_department;
	private String user_phone;
	private String user_mobile;
	private String user_Email;
	private String user_password;
	
	
	
	public User() {
		
	}
	public User(String user_name, String user_department, String user_phone, String user_mobile, String user_Email,
			String user_password) {
	
		this.user_name = user_name;
		this.user_department = user_department;
		this.user_phone = user_phone;
		this.user_mobile = user_mobile;
		this.user_Email = user_Email;
		this.user_password = user_password;
	}
	public String getUser_mobile() {
		return user_mobile;
	}
	public void setUser_mobile(String user_mobile) {
		this.user_mobile = user_mobile;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_department() {
		return user_department;
	}
	public void setUser_department(String user_department) {
		this.user_department = user_department;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_Email() {
		return user_Email;
	}
	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	
	
}