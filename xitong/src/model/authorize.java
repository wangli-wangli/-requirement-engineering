package model;

//批准
public class authorize {
     private String authorize_number;//批准文号
     private String authorize_date;//批准年月
     private String user_E_mail;//关键字
     public  authorize() {
    	 
     }
	public authorize(String authorize_number, String authorize_dat,String user_Email) {
		this.authorize_number = authorize_number;
		this.authorize_date = authorize_date;
		this.user_E_mail=user_Email;
	}
	
	public String getUser_E_mail() {
		return user_E_mail;
	}
	public void setUser_E_mail(String user_E_mail) {
		this.user_E_mail = user_E_mail;
	}
	public String getAuthorize_number() {
		return authorize_number;
	}
	public void setAuthorize_number(String authorize_number) {
		this.authorize_number = authorize_number;
	}
	public String getAuthorize_date() {
		return authorize_date;
	}
	public void setAuthorize_date(String authorize_date) {
		this.authorize_date = authorize_date;
	}
     
}
