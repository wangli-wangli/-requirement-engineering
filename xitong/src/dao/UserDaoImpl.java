//20163623 鐜嬭帀
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletSecurityElement;

import org.eclipse.jdt.internal.compiler.lookup.ReductionResult;

import Util.DBUtil;


import model.User;
import model.authorize;
import model.director;
import model.platform;
import model.support;
import model.user_unit;

public class UserDaoImpl implements IUserDao{

	@Override
	public void add_user(User user) {
		//鑾峰緱閾炬帴瀵硅薄
		
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into t_user(user_name,user_department,user_phone,user_Email,user_password,user_mobile) values(?,?,?,?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, user.getUser_name());
					preparedStatement.setString(2, user.getUser_department());
					preparedStatement.setString(3, user.getUser_phone());
					preparedStatement.setString(4, user.getUser_Email());
					preparedStatement.setString(5, user.getUser_password());
					preparedStatement.setString(6, user.getUser_mobile());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	
	@Override
	public void add_authorize(authorize authorize) {
		//鑾峰緱閾炬帴瀵硅薄
		
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into authorize(authorize_number,authorize_date,user_Email) values(?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, authorize.getAuthorize_number());
					preparedStatement.setString(2, authorize.getAuthorize_date());
					preparedStatement.setString(3, authorize.getUser_E_mail());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	@Override
	public void add_director(director director) {
		//鑾峰緱閾炬帴瀵硅薄
		       
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into director(director_name,director_sex,director_birthday,"
						+ "job_title,director_professional,education_background,office_phone,"
						+ "director_phone,director_Email,degree,user_Email) values(?,?,?,?,?,?,?,?,?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, director.getDirector_name());
					preparedStatement.setString(2, director.getDirector_sex());
					preparedStatement.setString(3, director.getDirector_birthday());
					preparedStatement.setString(4, director.getJob_title());
					preparedStatement.setString(5, director.getDirector_professional());
					preparedStatement.setString(6, director.getEducation_background());
					preparedStatement.setString(7, director.getOffice_phone());
					preparedStatement.setString(8, director.getDirector_phone());
					preparedStatement.setString(9, director.getDirector_Email());
					preparedStatement.setString(10, director.getDegree());
					preparedStatement.setString(11, director.getUser_Email());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	@Override
	public void add_platform2(platform platform) {
		//鑾峰緱閾炬帴瀵硅薄
		       
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into platform(platform_type,platform_name,platform_level,"
						+ "platform_Texture,platform_address,"
						+ "platform_postcode,user_Email,technology_field,platform_number,"
						+ "platform_webname,platform_weburl,big_occupation,middle_occupation,small_occupation,"
						+ "big_subject,middle_subject,small_subject) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,platform.getPlatform_type());
					preparedStatement.setString(2,platform.getPlatform_name());
					preparedStatement.setString(3, platform.getPlatform_level());
					preparedStatement.setString(4,platform.getPlatform_Texture() );
					preparedStatement.setString(5,platform.getPlatform_address());
					preparedStatement.setString(6,platform.getPlatform_postcode());
					preparedStatement.setString(7, platform.getUser_Email());
					preparedStatement.setString(8,platform.getTechnology_field() );
					preparedStatement.setString(9,platform.getPlatform_number() );
					preparedStatement.setString(10,platform.getPlatform_webname() );
					preparedStatement.setString(11,platform.getPlatform_weburl() );
					preparedStatement.setString(12,platform.getBig_occupation() );
					preparedStatement.setString(13,platform.getMiddle_occupation() );
					preparedStatement.setString(14,platform.getSmall_occupation() );
					preparedStatement.setString(15,platform.getBig_subject() );
					preparedStatement.setString(16,platform.getMiddle_subject() );
					preparedStatement.setString(17,platform.getSmall_subject() );
				
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	@Override
	public void add_support(support support) {
		//鑾峰緱閾炬帴瀵硅薄
		
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into support(support_number,support_name,legalperson_name,support_phone,user_Email,support_type) values(?,?,?,?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,support.getSupport_number());
					preparedStatement.setString(2,support.getSupport_name() );
					preparedStatement.setString(3, support.getLegalperson_name());
					preparedStatement.setString(4, support.getSupport_phone());
					preparedStatement.setString(5, support.getUser_Email());
					preparedStatement.setString(6, support.getSupport_type());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	
	@Override
	public void add_user_unit(user_unit user_unit) {
		//鑾峰緱閾炬帴瀵硅薄
		
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into user_unit(user_Email,build_unit) values(?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,user_unit.getUser_Email());
					preparedStatement.setString(2,user_unit.getBuild_unit());
					
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	
	
	
	@Override
	public int load_count(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select count(user_Email) from t_user where user_Email =?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int count=0;
		//platform platform= null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
		
			if(resultSet.next()) {
		       count=resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return count;
	}

	@Override
	public int load_count2(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select count(user_Email) from director where user_Email =?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int count=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
		
			if(resultSet.next()) {
		       count=resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return count;
	}
	@Override
	public int load_maxBuild() {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select count(c) from (select count(build_unit) as c from user_unit group by user_Email) user_unit group by c";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int max=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
		
			if(resultSet.next()) {
			   if(resultSet.getInt(1)>max)
		          max=resultSet.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return max;
	}
	@Override
	public void add_platofrm(platform platform) {
		//鑾峰緱閾炬帴瀵硅薄
		
				Connection connection = DBUtil.getConnection();
				//鍑嗗sql璇彞
				String sql = "insert into platform(platform_name,user_Email,technology_field,platform_number) values(?,?,?,?)";
				//鍒涘缓璇彞浼犺緭瀵硅薄
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
			
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, platform.getPlatform_name());
					preparedStatement.setString(2, platform.getUser_Email());
					preparedStatement.setString(3, platform.getTechnology_field());
					preparedStatement.setString(4, platform.getPlatform_number());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
					
				}finally {
					//鍏抽棴璧勬簮
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
			
			}
	
	@Override
	public void update_platform(platform platform) {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "update platform set platform_level=?,platform_Texture=?,platform_address=?" + 
					",platform_webname=?,platform_weburl=?,contactAddress=?,platform_postcode=? "
					+ ",big_occupation=?,middle_occupation=?,small_occupation=?,big_subject=?,middle_subject=?,small_subject=?"
					+ " where user_Email = ?";
					
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		try {
			System.out.println(platform.getBig_occupation()+"&"+platform.getBig_subject());
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, platform.getPlatform_level());
			preparedStatement.setString(2,platform.getPlatform_Texture() );
			preparedStatement.setString(3,platform.getPlatform_address());
			preparedStatement.setString(4,platform.getPlatform_webname() );
			preparedStatement.setString(5,platform.getPlatform_weburl() );
			preparedStatement.setString(6,platform.getContactAddress() );
			preparedStatement.setString(7,platform.getPlatform_postcode());
			preparedStatement.setString(8,platform.getBig_occupation() );
			preparedStatement.setString(9,platform.getMiddle_occupation() );
			preparedStatement.setString(10,platform.getSmall_occupation() );
			preparedStatement.setString(11,platform.getBig_subject() );
			preparedStatement.setString(12,platform.getMiddle_subject() );
			preparedStatement.setString(13,platform.getSmall_subject() );
			preparedStatement.setString(14, platform.getUser_Email());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}
	@Override
	public List<User>  load_users() {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from t_user";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<User> users=new ArrayList<User>();
		platform platform= new platform();
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
		
			while(resultSet.next()) {
		        User user=new User();
		       user.setUser_name(resultSet.getString("user_name"));
		       user.setUser_department(resultSet.getString("user_department"));
		       user.setUser_phone(resultSet.getString("user_phone"));
		       user.setUser_Email(resultSet.getString("user_Email"));
		       user.setUser_password(resultSet.getString("user_password"));
		       user.setUser_mobile(resultSet.getString("user_mobile"));
		       users.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return users;
	}
	
	@Override
	public List<String>   load_builds(String user_Email) {//鏌ヨ鍑簎ser_Email鐨勬墍鏈夊叡寤哄崟浣�
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select build_unit from user_unit where user_Email=?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> builds=new ArrayList<>();
		
		platform platform= new platform();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
		        String build=resultSet.getString("build_unit");
		        builds.add(build);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return builds;
	}
	
	@Override
	public platform load_basic2(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select platform_name,technology_field,platform_number from platform where user_Email =?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		platform platform= new platform();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
		
			while(resultSet.next()) {
		        platform.setPlatform_name(resultSet.getString("platform_name"));
		        platform.setTechnology_field(resultSet.getString("technology_field"));
		        platform.setPlatform_number(resultSet.getString("platform_number"));
		        platform.setUser_Email(user_Email);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return platform;
	}
	
	@Override
	public platform load_basic1(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from platform where user_Email =?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		platform platform= new platform();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				platform.setPlatform_level(resultSet.getString("platform_level"));
				platform.setPlatform_Texture(resultSet.getString("platform_Texture"));
				platform.setBig_occupation(resultSet.getString("big_occupation"));
				platform.setMiddle_occupation(resultSet.getString("middle_occupation"));
				platform.setSmall_occupation(resultSet.getString("Small_occupation"));
				platform.setBig_subject(resultSet.getString("big_subject"));
				platform.setMiddle_subject(resultSet.getString("middle_subject"));
				platform.setSmall_subject(resultSet.getString("small_subject"));
				platform.setPlatform_address(resultSet.getString("platform_address"));
				platform.setPlatform_postcode(resultSet.getString("platform_postcode"));
				platform.setPlatform_name(resultSet.getString("platform_name"));
				platform.setTechnology_field(resultSet.getString("technology_field"));
				platform.setPlatform_number(resultSet.getString("platform_number"));
				platform.setUser_Email(user_Email);
				platform.setPlatform_webname(resultSet.getString("platform_webname"));
				platform.setPlatform_weburl("platform_weburl");
				platform.setContactAddress(resultSet.getString("contactAddress"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return platform;
	}
	
	@Override
	public List<platform> load_platforms() {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from platform";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<platform> platforms=new ArrayList<platform>();
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				platform platform= new platform();
				platform.setPlatform_level(resultSet.getString("platform_level"));
				platform.setPlatform_Texture(resultSet.getString("platform_Texture"));
				platform.setBig_occupation(resultSet.getString("big_occupation"));
				platform.setMiddle_occupation(resultSet.getString("middle_occupation"));
				platform.setSmall_occupation(resultSet.getString("Small_occupation"));
				platform.setBig_subject(resultSet.getString("big_subject"));
				platform.setMiddle_subject(resultSet.getString("middle_subject"));
				platform.setSmall_subject(resultSet.getString("small_subject"));
				platform.setPlatform_address(resultSet.getString("platform_address"));
				platform.setPlatform_postcode(resultSet.getString("platform_postcode"));
				platform.setPlatform_name(resultSet.getString("platform_name"));
				platform.setTechnology_field(resultSet.getString("technology_field"));
				platform.setPlatform_number(resultSet.getString("platform_number"));
				platform.setUser_Email(resultSet.getString("user_Email"));
				platform.setPlatform_webname(resultSet.getString("platform_webname"));
				platform.setPlatform_weburl("platform_weburl");
				platform.setContactAddress(resultSet.getString("contactAddress"));
				platforms.add(platform);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return platforms;
	}
	
	@Override
	public authorize load_authorize(String user_Email) {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select authorize_number,authorize_date from authorize where  user_Email= ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		authorize authorize=new authorize();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				authorize.setAuthorize_date(resultSet.getString("authorize_date"));
				authorize.setAuthorize_number(resultSet.getString("authorize_number"));
				authorize.setUser_E_mail(user_Email);
	
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return authorize;
	}
	
	@Override
	public List<authorize> load_authorizes() {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from authorize";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<authorize> authorizes=new ArrayList<authorize>();
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				authorize authorize=new authorize();
				authorize.setAuthorize_date(resultSet.getString("authorize_date"));
				authorize.setAuthorize_number(resultSet.getString("authorize_number"));
				authorize.setUser_E_mail(resultSet.getString("user_Email"));
	            authorizes.add(authorize);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return authorizes;
	}
	
	@Override
	public User load_user(String user_Email) {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from t_user where user_Email=?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user=new User();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
			       user.setUser_name(resultSet.getString("user_name"));
			       user.setUser_department(resultSet.getString("user_department"));
			       user.setUser_phone(resultSet.getString("user_phone"));
			       user.setUser_Email(resultSet.getString("user_Email"));
			       user.setUser_password(resultSet.getString("user_password"));
			       user.setUser_mobile(resultSet.getString("user_mobile"));
	
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return user;
	}
	
	
	@Override
	public support load_support(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select support_number,support_name,legalperson_name,support_phone,support_type from support where user_Email=?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		support support=new support();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				support.setSupport_number(resultSet.getString("support_number"));	
				support.setSupport_name(resultSet.getString("support_name"));
				support.setLegalperson_name(resultSet.getString("legalperson_name"));
				support.setSupport_phone(resultSet.getString("support_phone"));
				support.setUser_Email(user_Email);
				support.setSupport_type(resultSet.getString("support_type"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return support;
	}
	
	@Override
	public director load_director(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select director_name,director_sex,director_birthday,job_title,director_professional,"
				+ "education_background,office_phone,director_phone,director_Email,degree from director where  user_Email= ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		director director=new director();
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				director.setDirector_name(resultSet.getString("director_name"));
				director.setDirector_sex(resultSet.getString("director_sex"));
				director.setDirector_birthday(resultSet.getString("director_birthday"));
				director.setJob_title(resultSet.getString("job_title"));
				director.setDirector_professional(resultSet.getString("director_professional"));
				director.setEducation_background(resultSet.getString("education_background"));
				director.setOffice_phone(resultSet.getString("office_phone"));
				director.setDirector_phone(resultSet.getString("director_phone"));
				director.setDirector_Email(resultSet.getString("degree"));
				director.setDegree(resultSet.getString("degree"));
				director.setUser_Email(user_Email);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return director;
	}
	
	@Override
	public String load_password(String user_Email) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select user_password from t_user  where user_Email = ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String password = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,user_Email);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				password=resultSet.getString("user_password");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		if(password==null)
		{
		return " ";
		}
		return password;
	}
	
	
	
	
	@Override
	public List<String> load_Emails() {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select user_Email from t_user";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> emails=new ArrayList<String>();
		try {
			preparedStatement = connection.prepareStatement(sql);
			
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
			      String Email=new String();
			      Email=resultSet.getString("user_Email");
			      emails.add(Email);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		return emails;
	}
	
	

	/*@Override
	public void delete(String username) {
		Connection connection = DBUtil.getConnection();
		String sql = "delete from test where user_name = ?";
		PreparedStatement preparedStatement = null;
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,username);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
		
	}
	*/

	/*@Override
	public void update(User user) {
		
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "update test set user_name = ? , password=? ,type=?,professical=?,class=?锛宐umen=? where user_id = ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		try {
			
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setInt(3, user.getType());
			preparedStatement.setString(4, user.getProfessical());
			preparedStatement.setString(5, user.getS_class());
			preparedStatement.setString(6, user.getBumen());
			preparedStatement.setInt(7, user.getUserId());
		
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}

	@Override
	public User load(int user_id) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from test  where user_id = ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,user_id);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				user = new User();
			
				user.setUserId(user_id);
				user.setUsername(resultSet.getString("user_name"));
				user.setPassword(resultSet.getString("password"));
				user.setProfessical(resultSet.getString("professical"));
				user.setType(resultSet.getInt("type"));
				user.setS_class(resultSet.getString("class"));
				user.setBumen(resultSet.getString("bumen"));
				System.out.println("閮ㄩ棬:"+user.getBumen());
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  user;
	}
	@Override
	public Chengji load_chengji(int user_id) {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from chengji  where user_id = ?";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		Chengji chengji = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,user_id);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				chengji=new Chengji();
				chengji.setUser_id(user_id);
				chengji.setLisanshuxue(resultSet.getString("lisanshuxue"));
				chengji.setC_yuyan(resultSet.getString("c_yuyan"));
				chengji.setJava_web(resultSet.getString("java_web"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  chengji;
	}
	@Override
	public 	List<User> load_users() {
		Connection connection = DBUtil.getConnection();
		//鍑嗗sql璇彞
		String sql = "select * from test";
		//鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<User> users = new ArrayList<User>();
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				user = new User();
			
				user.setUserId(resultSet.getInt("user_id"));
				user.setUsername(resultSet.getString("user_name"));
				user.setPassword(resultSet.getString("password"));
				user.setProfessical(resultSet.getString("professical"));
				user.setType(resultSet.getInt("type"));
				user.setS_class(resultSet.getString("class"));
				user.setBumen(resultSet.getString("bumen"));
				users.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  users;
	}*/
	
}

		
	


