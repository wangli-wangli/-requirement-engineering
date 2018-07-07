package model;

//依托单位
public class support {
	private String support_number;//组织机构代码
	private String support_name;//依托名称
	private String legalperson_name;//法人代表姓名
	private String support_phone;//办公电话
	private String support_type;//依托单位类型
	private String user_Email;//关键字
	
	
	public support() {
		// TODO Auto-generated constructor stub
	}
	public support(String support_number, String support_name, String legalperson_name, String support_phone,
			String support_type, String user_Email) {
		
		this.support_number = support_number;
		this.support_name = support_name;
		this.legalperson_name = legalperson_name;
		this.support_phone = support_phone;
		this.support_type = support_type;
		this.user_Email = user_Email;
	}
	public String getSupport_type() {
		return support_type;
	}
	public void setSupport_type(String support_type) {
		this.support_type = support_type;
	}
	public String getUser_Email() {
		return user_Email;
	}
	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}
	public String getSupport_number() {
		return support_number;
	}
	public void setSupport_number(String support_number) {
		this.support_number = support_number;
	}
	public String getSupport_name() {
		return support_name;
	}
	public void setSupport_name(String support_name) {
		this.support_name = support_name;
	}
	public String getLegalperson_name() {
		return legalperson_name;
	}
	public void setLegalperson_name(String legalperson_name) {
		this.legalperson_name = legalperson_name;
	}
	public String getSupport_phone() {
		return support_phone;
	}
	public void setSupport_phone(String support_phone) {
		this.support_phone = support_phone;
	}
	

}
