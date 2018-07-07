//20163623 鐜嬭帀

package dao;

import java.util.List;


import model.User;
import model.authorize;
import model.director;
import model.platform;
import model.support;
import model.user_unit;

public interface IUserDao {
	public void add_user(User user);//澧�
/*	public void delete(String username);//鍒�
	public void update(User user);//鏀�
	public User load(int id);//鏌�
	
	List<User> load_users();
*/

	void add_authorize(authorize authorize);

	void add_platofrm(platform platform);

	String load_password(String user_Email);

	platform load_basic1(String user_Email);

	authorize load_authorize(String authorize_number);

	director load_director(String director_phone);

	support load_support(String user_Email);

	platform load_basic2(String user_Email);

	int load_count(String user_Email);

	void add_director(director director);

	void add_platform2(platform platform);

	void add_support(support support);

	void add_user_unit(user_unit user_unit);

	void update_platform(platform platform);

	int load_count2(String user_Email);

	List<User> load_users();

	List<String> load_builds(String user_Email);

	int load_maxBuild();


	User load_user(String user_Email);

	List<String> load_Emails();

	List<authorize> load_authorizes();

	List<platform> load_platforms();
}
