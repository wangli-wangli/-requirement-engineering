package dao;

import java.util.List;

import model.User;
import model.authorize;
import model.platform;

public interface IContentDao {
	
	List<User> content_user(String content);

	List<String> content_all(String content);

	List<authorize> content_authorize(String content);

	List<platform> content_platform(String content);

	List<String> conten1(String conten1, String conten2);

	List<String> conten3(String conten2);

	List<String> conten2(String conten1);


	List<String> load_Emails3(String occupation);

	

	

	List<String> load_content2(String[] occupation2);

	List<String> load_occupation(String parameter);

	String load_minAuthorizeDate();

	
	List<String> load_content1(String[] type, String[] content1, String[] way, String[] content2, String[] is_accurate,
			String[] way2, String[] occupation2, String start_authorizeDate, String end_authorizeDate,
			String[] platform_level, String platform_Texture_1, String platform_Texture_4);

	List<String> load_CountPlatformLevel();

	List<String> load_tu(String name);

}
