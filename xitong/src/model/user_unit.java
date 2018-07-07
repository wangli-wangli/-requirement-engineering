package model;
//共建单位类
public class user_unit {
   private String user_Email;//关键字
   private String build_unit;//共建单位、
   
public user_unit(String user_Email, String build_unit) {

	this.user_Email = user_Email;
	this.build_unit = build_unit;
}
public String getUser_Email() {
	return user_Email;
}
public void setUser_Email(String user_Email) {
	this.user_Email = user_Email;
}
public String getBuild_unit() {
	return build_unit;
}
public void setBuild_unit(String build_unit) {
	this.build_unit = build_unit;
}
   
}
