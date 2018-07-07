package model;

import com.sun.jmx.snmp.tasks.ThreadService;

public class platform {

	private String platform_type;//平台类型
	private String platform_name;//平台名称
	private String platform_number;//编号
	private String platform_level;//级别,共有两位数字组成，第一位是国家级，第二位是省级，选中为1，没选中为0
	private String platform_Texture;//组织形态

	private String platform_address;//所在市县
	private String platform_postcode;//邮编
	private String technology_field;//技术领域
	private String management_department;//归口
	//服务的主要国民经济行业
	private String big_occupation;
	private String middle_occupation;
	private String small_occupation;
	//所属学科                                  
	private String big_subject;//大学科
	private String middle_subject;//中学科
	private String small_subject;//小学科
	
	
	private String contactAddress;//通讯地址
	private String platform_webname;//平台网站名称
	private String platform_weburl;//平台网址
	private String user_Email;//
	
	
	public platform() {
		
	}
	
	
	public platform(String platform_name, String platform_number, String technology_field, String user_Email) {
		
		this.platform_name = platform_name;
		this.platform_number = platform_number;
		this.technology_field = technology_field;
		this.user_Email = user_Email;
	}



	public platform(String platform_level, String platform_Texture, String big_subject,String middle_subject,
			String small_subject,String platform_address, String platform_postcode, 
			String big_occupation,String middle_occupation,String small_occupation, String contactAddress,
			String platform_webname, String platform_weburl, String user_Email) {

		this.platform_level = platform_level;
		this.platform_Texture = platform_Texture;
		this.big_subject=big_subject;
		this.middle_subject=middle_subject;
		this.small_subject=small_subject;
		this.platform_address = platform_address;
		this.platform_postcode = platform_postcode;
		this.big_occupation = big_occupation;
		this.middle_occupation = middle_occupation;
		this.small_occupation = small_occupation;
		this.contactAddress = contactAddress;
		this.platform_webname = platform_webname;
		this.platform_weburl = platform_weburl;
		this.user_Email = user_Email;
	}


	public String getContactAddress() {
		return contactAddress;
	}


	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
	}


	public String getPlatform_webname() {
		return platform_webname;
	}


	public void setPlatform_webname(String platform_webname) {
		this.platform_webname = platform_webname;
	}


	public String getPlatform_weburl() {
		return platform_weburl;
	}


	public void setPlatform_weburl(String platform_weburl) {
		this.platform_weburl = platform_weburl;
	}


	public String getPlatform_type() {
		return platform_type;
	}
	public void setPlatform_type(String platform_type) {
		this.platform_type = platform_type;
	}
	public String getPlatform_name() {
		return platform_name;
	}
	public void setPlatform_name(String platform_name) {
		this.platform_name = platform_name;
	}
	public String getPlatform_number() {
		return platform_number;
	}
	public void setPlatform_number(String platform_number) {
		this.platform_number = platform_number;
	}
	public String getPlatform_level() {
		return platform_level;
	}
	public void setPlatform_level(String platform_level) {
		this.platform_level = platform_level;
	}
	public String getPlatform_Texture() {
		return platform_Texture;
	}
	public void setPlatform_Texture(String platform_Texture) {
		this.platform_Texture = platform_Texture;
	}
	
	public String getPlatform_address() {
		return platform_address;
	}
	public void setPlatform_address(String platform_address) {
		this.platform_address = platform_address;
	}
	public String getPlatform_postcode() {
		return platform_postcode;
	}
	public void setPlatform_postcode(String platform_postcode) {
		this.platform_postcode = platform_postcode;
	}
	public String getTechnology_field() {
		return technology_field;
	}
	public void setTechnology_field(String technology_field) {
		this.technology_field = technology_field;
	}
	public String getManagement_department() {
		return management_department;
	}
	public void setManagement_department(String management_department) {
		this.management_department = management_department;
	}
	
	
	public String getUser_Email() {
		return user_Email;
	}



	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}


	public String getBig_occupation() {
		return big_occupation;
	}


	public void setBig_occupation(String big_occupation) {
		this.big_occupation = big_occupation;
	}


	public String getMiddle_occupation() {
		return middle_occupation;
	}


	public void setMiddle_occupation(String middle_occupation) {
		this.middle_occupation = middle_occupation;
	}


	public String getSmall_occupation() {
		return small_occupation;
	}


	public void setSmall_occupation(String small_occupation) {
		this.small_occupation = small_occupation;
	}


	public String getBig_subject() {
		return big_subject;
	}


	public void setBig_subject(String big_subject) {
		this.big_subject = big_subject;
	}


	public String getMiddle_subject() {
		return middle_subject;
	}


	public void setMiddle_subject(String middle_subject) {
		this.middle_subject = middle_subject;
	}


	public String getSmall_subject() {
		return small_subject;
	}


	public void setSmall_subject(String small_subject) {
		this.small_subject = small_subject;
	}
	




	
}
