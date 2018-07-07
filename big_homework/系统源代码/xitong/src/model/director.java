package model;

//平台主任
public class director {
	private String director_name;// 姓名
	private String director_sex;// 性别
	private String director_birthday;// 出生年月
	private String job_title;// 职称
	private String director_professional;// 所学专业
	private String education_background;// 学历
	private String degree;// 学位
	private String office_phone;// 办公电话
	private String director_phone;// 手机
	private String director_Email;// E_mail
	private String user_Email;//关键字
	
    
	public director(String director_name, String director_sex, String director_birthday, String job_title,
			String director_professional, String education_background, String degree, String office_phone,
			String director_phone, String director_Email, String user_Email) {
		this.director_name = director_name;
		this.director_sex = director_sex;
		this.director_birthday = director_birthday;
		this.job_title = job_title;
		this.director_professional = director_professional;
		this.education_background = education_background;
		this.degree = degree;
		this.office_phone = office_phone;
		this.director_phone = director_phone;
		this.director_Email = director_Email;
		this.user_Email = user_Email;
	}
	public director() {
		// TODO Auto-generated constructor stub
	}

	public String getUser_Email() {
		return user_Email;
	}

	public void setUser_Email(String user_Email) {
		this.user_Email = user_Email;
	}

	public String getDirector_name() {
		return director_name;
	}

	public void setDirector_name(String director_name) {
		
		this.director_name = director_name;
	}

	public String getDirector_sex() {
		return director_sex;
	}

	public void setDirector_sex(String director_sex) {
		this.director_sex = director_sex;
	}

	public String getDirector_birthday() {
		return director_birthday;
	}

	public void setDirector_birthday(String director_birthday) {
		this.director_birthday = director_birthday;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getDirector_professional() {
		return director_professional;
	}

	public void setDirector_professional(String director_professional) {
		this.director_professional = director_professional;
	}

	public String getEducation_background() {
		return education_background;
	}

	public void setEducation_background(String education_background) {
		this.education_background = education_background;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getOffice_phone() {
		return office_phone;
	}

	public void setOffice_phone(String office_phone) {
		this.office_phone = office_phone;
	}

	public String getDirector_phone() {
		return director_phone;
	}

	public void setDirector_phone(String director_phone) {
		this.director_phone = director_phone;
	}

	public String getDirector_Email() {
		return director_Email;
	}

	public void setDirector_Email(String director_Email) {
		this.director_Email = director_Email;
	}

}
