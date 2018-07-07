package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import Util.DBUtil;
import jdk.internal.dynalink.linker.LinkerServices.Implementation;
import model.User;
import model.authorize;
import model.platform;

public class ContentDaoImpl implements IContentDao {
	@Override
	public List<String> content_all(String content) {
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select t_user.user_Email from t_user join authorize on"
				+ " authorize.user_Email=t_user.user_Email join director"
				+ " on director.user_Email=t_user.user_Email  join platform on"
				+ " platform.user_Email=t_user.user_Email join support on"
				+ " support.user_Email=t_user.user_Email where t_user.user_name like '%" + content + "%' "
				+ "or platform_name like  '%" + content + "%' or authorize_number like '%" + content + "%'"
				+ " or support_name like '%" + content + "%' or director_name like '%" + content + "%'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String Email = resultSet.getString(1);
				Emails.add(Email);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return Emails;
	}

	@Override
	public List<String> conten1(String conten1, String conten2) { // 两个条件查询
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select t_user.user_Email from t_user join authorize on"
				+ " authorize.user_Email=t_user.user_Email join director"
				+ " on director.user_Email=t_user.user_Email  join platform on"
				+ " platform.user_Email=t_user.user_Email join support on"
				+ " support.user_Email=t_user.user_Email where t_user.user_name='" + conten1 + "' "
				+ "and platform_name='" + conten2 + "'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String Email = resultSet.getString(1);
				Emails.add(Email);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return Emails;
	}

	@Override
	public List<String> conten2(String conten1) { // 单个条件查询
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select t_user.user_Email from t_user join authorize on"
				+ " authorize.user_Email=t_user.user_Email join director"
				+ " on director.user_Email=t_user.user_Email  join platform on"
				+ " platform.user_Email=t_user.user_Email join support on"
				+ " support.user_Email=t_user.user_Email where t_user.user_name='" + conten1 + "' ";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String Email = resultSet.getString(1);
				Emails.add(Email);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return Emails;
	}

	@Override
	public List<String> conten3(String conten2) { // 两个条件查询
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select t_user.user_Email from t_user join authorize on"
				+ " authorize.user_Email=t_user.user_Email join director"
				+ " on director.user_Email=t_user.user_Email  join platform on"
				+ " platform.user_Email=t_user.user_Email join support on"
				+ " support.user_Email=t_user.user_Email where platform_name='" + conten2 + "'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String Email = resultSet.getString(1);
				Emails.add(Email);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return Emails;
	}

	@Override
	public List<User> content_user(String content) {
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select user_name,user_department,user_phone,"
				+ "user_Email,user_password,user_mobile from t_user  where user_name like '%" + content + "%' "
				+ "or user_department like  '%" + content + "%'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<User> users = new ArrayList<User>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				User user = new User();
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
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return users;
	}

	@Override
	public List<authorize> content_authorize(String content) {
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select user_Email,authorize_number,authorize_date from authorize  where authorize_number like '%"
				+ content + "%' " + "or authorize_date like '%" + content + "%'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<authorize> authorizes = new ArrayList<authorize>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				authorize authorize = new authorize();
				authorize.setAuthorize_date(resultSet.getString("authorize_date"));
				authorize.setAuthorize_number(resultSet.getString("authorize_number"));
				authorize.setUser_E_mail(resultSet.getString("user_Email"));
				authorizes.add(authorize);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return authorizes;
	}

	@Override
	public List<platform> content_platform(String content) {
		Connection connection = DBUtil.getConnection();
		// 鍑嗗sql璇彞
		String sql = "select * from platform where  platform_level like '%" + content
				+ "%' or service_occupation like '%" + content + "%'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<platform> platforms = new ArrayList<platform>();
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				platform platform = new platform();
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
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}

		return platforms;
	}
    @Override
	public List<String> load_occupation(String parameter) {

		Connection connection = DBUtil.getConnection();
		String sql = "select distinct " + parameter + " from platform";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> results = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String result = resultSet.getString(1);
				results.add(result);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return results;
	}
    @Override
	public String load_minAuthorizeDate() {

		Connection connection = DBUtil.getConnection();
		String sql = "select min(authorize_date) from V_result ";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String min_date="0000-00-00";

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				min_date = resultSet.getString(1);
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return min_date;
	}

	public List<String> load_occupation2(String parameter1, String parameter2, String content1) {

		Connection connection = DBUtil.getConnection();
		String sql = "select distinct " + parameter2 + " from platform where " + parameter1 + "='" + content1 + "'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> results = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String result = resultSet.getString(1);
				results.add(result);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return results;
	}

	@Override
	public List<String> load_Emails3(String occupation) {// 分类查询国民经济行业

		Connection connection = DBUtil.getConnection();
		String sql = "select user_Email from platform where big_occupation='" + occupation + "'"
				+ " or middle_occupation='" + occupation + "' or small_occupation='" + occupation + "'"
				+ " or big_subject='" + occupation + "'" + " or middle_subject='" + occupation + "' or small_subject='"
				+ occupation + "'";
		// 鍒涘缓璇彞浼犺緭瀵硅薄
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> user_Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String user_Email = resultSet.getString("user_Email");
				user_Emails.add(user_Email);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return user_Emails;
	}

	@Override
	public List<String> load_content1(String[] type, String[] content1, String[] way, String[] content2,
			String[] is_accurate, String[] way2,String[] occupation2,String start_authorizeDate,
			String end_authorizeDate,String[] platform_level,String platform_Texture_1,String platform_Texture_4) {// 多条件查询和树状查询
		// type:查询类型//content1:第一个查询关键字//way:两个关键字之间的关系//content2:第二个关键字
		// is_accurate:精切查询还是模糊查询//way2:第一个与第n个查询条件的关系,occupation2:树状菜单条件 
		//start_authorizeDate,end_authorizeDate查询的批准日期范围
        //platform_level:平台级别；platform_Texture_1：内设机构相对独立(无法人资格)
		//platform_Texture_4:多单位联合共建 或依托单位独自建设
		
		
		
		// 创建视图语句
		/*
		 * create view
		 * V_result(user_name,platfrom_name,authorize_number,director_name,build_unit,
		 * support_name,user_Email) as select
		 * user_name,platform_name,authorize_number,director_name,build_unit,
		 * support_name,t_user.user_Email from t_user join authorize on
		 * authorize.user_Email=t_user.user_Email join director on
		 * director.user_Email=t_user.user_Email join platform on
		 * platform.user_Email=t_user.user_Email join support on
		 * support.user_Email=t_user.user_Email join user_unit on
		 * user_unit.user_Email=t_user.user_Email
		 */

		Connection connection = DBUtil.getConnection();
		String sql = "select user_Email from V_result ";
		if (content1[0].equals("") || "".equals(content1[0]))//煤油输入查询条件
		{      }
		else {// 用户输入了查询条件
			sql = sql + " where ";

			for (int i = 0; i < type.length; i++) {// i:代表第i+1个查询条件
				
				if (content2[i].equals("") || "".equals(content2[i])) {// 没有第二个关键字if()
			
					if (is_accurate[i].equals("like")) {
						
						if (i == 0) {
							
							sql = sql + " " + type + " like '%" + content1 + "%' ";
						} else {
							
							if (way2[i - 1].equals("and")) {
								sql = sql + " and " + type[i] + " like '%" + content1[i] + "%' ";
							} else if (way2[i - 1].equals("or")) {
								sql = sql + " or " + type[i] + " like '%" + content1[i] + "%' ";
							} else {
								sql = sql + " and " + type[i] + " not like '%" + content1[i] + "%' ";
							}
						}
					} else {
						
						if (i == 0) {
						
							sql = sql + " " + type[i] + "='" + content1[i] + "' ";
						} else {
							
							if (way2[i - 1].equals("and")) {
								sql = sql + " and " + type[i] + "='" + content1[i] + "' ";
							} else if (way2[i - 1].equals("or")) {
								sql = sql + " or " + type[i] + "='" + content1[i] + "' ";
							} else {
								sql = sql + " and " + type[i] + "!='" + content1[i] + "' ";
							}
						}

					}
				} else {
					
					if (is_accurate[i].equals("like")) {
						
						if (i == 0) {
							
							sql = sql + " " + type[i] + " like  '%" + content1[i] + "%' ";
							
							if (way[i].equals("and")) {
								
								sql = sql + " and  " + type[i] + " like '%" + content2[i] + "%' ";
							} else if (way[i].equals("or")) {
								sql = sql + " or " + type[i] + " like '%" + content2[i] + "%' ";
							} else {
								sql = sql + " and " + type[i] + " not like '%" + content2[i] + "%' ";
							}
						} else {
							
							if (way2[i - 1].equals("and")) {
								sql = sql + " and " + type[i] + " like '%" + content1[i] + "%' ";
								if (way[i].equals("and")) {
									sql = sql + " and  " + type[i] + " like '%" + content2[i] + "%' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + " like '%" + content2[i] + "%' ";
								} else {
									sql = sql + " and " + type[i] + " not like '%" + content2[i] + "%' ";
								}
							} else if (way2[i - 1].equals("or")) {
								sql = sql + " or " + type[i] + " like '%" + content1[i] + "%' ";
								if (way[i].equals("and")) {
									sql = sql + " or  " + type[i] + " like '%" + content2[i] + "%' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + " like '%" + content2[i] + "%' ";
								} else {
									sql = sql + " and " + type[i] + " not like '%" + content2[i] + "%' ";
								}
							} else {
								sql = sql + " and " + type[i] + " not like '%" + content1[i] + "%' ";
								if (way[i].equals("and")) {
									sql = sql + " and  " + type[i] + " not like '%" + content2[i] + "%' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + " not like '%" + content2[i] + "%' ";
								} else {
									sql = sql + " and " + type[i] + " not like '%" + content2[i] + "%' ";
								}
							}

						}

					} else {
						
						if (i == 0) {
							
							sql = sql + " " + type[i] + "='" + content1[i] + "'";
							if (way[i].equals("and")) { 
								sql = sql + " and  " + type[i] + "='" + content2[i] + "' ";
							} else if (way[i].equals("or")) {
								sql = sql + " or " + type[i] + "='" + content2[i] + "'";
							} else {
								sql = sql + " and " + type[i] + "!='" + content2[i] + "' ";
							}
						} else {
							
							if (way2[i - 1].equals("and")) {
								sql = sql + " and " + type[i] + "='" + content1[i] + "' ";
								if (way[i].equals("and")) {
									sql = sql + " and  " + type[i] + "='" + content2[i] + "' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + "='" + content2[i] + "' ";
								} else {
									sql = sql + " and " + type[i] + "!='" + content2[i] + "' ";
								}
							} else if (way2[i - 1].equals("or")) {
								sql = sql + " or " + type[i] + "='" + content1[i] + "' ";
								if (way[i].equals("and")) {
									sql = sql + " or  " + type[i] + "='" + content2[i] + "' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + "='" + content2[i] + "' ";
								} else {
									sql = sql + " and " + type[i] + "!='" + content2[i] + "' ";
								}
							} else {
								sql = sql + " and " + type[i] + "!='" + content1[i] + "' ";
								if (way[i].equals("and")) {
									sql = sql + " and  " + type[i] + "!='" + content2[i] + "' ";
								} else if (way[i].equals("or")) {
									sql = sql + " or " + type[i] + "!='" + content2[i] + "' ";
								} else {
									sql = sql + " and " + type[i] + "!='" + content2[i] + "' ";
								}
							}

						}

					}

				}
			}
		if(occupation2!=null) {
			sql=sql+" and user_Email in (select user_Email from  V_result where ";
			for(int i=0;i<occupation2.length;i++) {
				if(i==0) {
					sql=sql+" big_occupation='"+occupation2[i]+"' or middle_occupation='"+occupation2[i]+"'"
							+ " or small_occupation='"+occupation2[i]+"' or big_subject='"+occupation2[i]+"'"+
							"  or middle_subject='"+occupation2[i]+"' or small_subject='"+occupation2[i]+"'";	
				}
				else {
				sql=sql+"or big_occupation='"+occupation2[i]+"' or middle_occupation='"+occupation2[i]+"'"
						+ " or small_occupation='"+occupation2[i]+"' or big_subject='"+occupation2[i]+"'"+
						"  or middle_subject='"+occupation2[i]+"' or small_subject='"+occupation2[i]+"'";
				}
			}
			sql=sql+")";
		}
		}
		if(occupation2!=null&&(content1[0].equals("") || "".equals(content1[0]))) {//没有输入多条件查询条件，但选择了树状菜单条件
			sql=sql+" user_Email in (select user_Email from  V_result where ";
		for(int i=0;i<occupation2.length;i++) {
			
			sql=sql+" big_occupation='"+occupation2[i]+"' or middle_occupation='"+occupation2[i]+"'"
					+ " or small_occupation='"+occupation2[i]+"' or big_subject='"+occupation2[i]+"'"+
					"  or middle_subject='"+occupation2[i]+"' or small_subject='"+occupation2[i]+"'";
			
		}
		sql=sql+")";
			
		}
		if(occupation2==null&&(content1[0].equals("") || "".equals(content1[0]))) {//没有输入多条件和没有选择树状菜单
			sql=sql+" where ";
		}
		else {
			sql=sql+" and ";
		}
		//日期范围查询
		sql=sql+"  user_Email in (select  user_Email from  V_result where authorize_date between '"+start_authorizeDate+"' and '"+end_authorizeDate+"')";
		
		//查询国家级别
		if(platform_level==null) {//没有选择国家级别
			
		}
		else if(platform_level.length==1) {
			if(platform_level[0].equals("guojia")) {
				sql=sql+" and platform_level='&国家级'  ";
			}
			else{
				sql=sql+" and platform_level='&省级'  ";
			}
		}
		else if(platform_level.length==2) {
			sql=sql+" and platform_level='&国家级&省级'  ";
		}
		
		//查询是否内设机构相对独立(无法人资格) 
		if(platform_Texture_1!=null) {
			sql=sql+" and platform_Texture like '%内设机构相对独立(无法人资格)%' ";
		}
		
		if(platform_Texture_4!=null) {
			if(platform_Texture_4.equals("duo")) {
				sql=sql+" and platform_Texture like '%多单位联合共建%' ";
			}
			else if(platform_Texture_4.equals("yi")) {
				sql=sql+" and platform_Texture like '%依托单位独自建设%' ";
			}
		}
		
		
		
		System.out.println("sql语句：" + sql);
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> user_Emails = new ArrayList<String>();
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String user_Email = resultSet.getString("user_Email");
				
				user_Emails.add(user_Email);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	
		return user_Emails;
	}
	@Override
	public List<String> load_content2(String[] occupation2) {// 多个树状条件查询
		System.out.println("load_content2");
		Connection connection = DBUtil.getConnection();
		String sql = "select user_Email from V_result where ";
		for(int i=0;i<occupation2.length;i++) {
			if(i==0) {
				sql=sql+" big_occupation='"+occupation2[i]+"' or middle_occupation='"+occupation2[i]+"'"
						+ " or small_occupation='"+occupation2[i]+"' or big_subject='"+occupation2[i]+"'"+
						"  or middle_subject='"+occupation2[i]+"' or small_subject='"+occupation2[i]+"'";	
			}
			else {
			sql=sql+"or big_occupation='"+occupation2[i]+"' or middle_occupation='"+occupation2[i]+"'"
					+ " or small_occupation='"+occupation2[i]+"' or big_subject='"+occupation2[i]+"'"+
					"  or middle_subject='"+occupation2[i]+"' or small_subject='"+occupation2[i]+"'";
			}
		}
		
		
		System.out.println("sql语句：" + sql);
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> user_Emails = new ArrayList<String>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String user_Email = resultSet.getString("user_Email");
				user_Emails.add(user_Email);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return user_Emails;
	}
	
	@Override
	public List<String> load_CountPlatformLevel() {// 多个树状条件查询
		Connection connection = DBUtil.getConnection();
		String[] sql=new String[4];
		 sql[0] = "select count(*) from V_result ";
		sql[1] = "select count(*) from V_result where platform_level='&国家级&省级' ";
		sql[2] = "select count(*) from V_result where platform_level='&国家级' ";
		sql[3] = "select count(*) from V_result where platform_level='&省级' ";
	
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> counts = new ArrayList<String>();

		try {
			
			for(int i=0;i<sql.length;i++) {
			preparedStatement = connection.prepareStatement(sql[i]);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String count1 = resultSet.getString(1);
				counts.add(count1);
			}
			
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return counts;
	}
	
	@Override
	public List<String> load_tu(String name) {// 多个树状条件查询
		Connection connection = DBUtil.getConnection();
		String sql="select distinct '"+name+"' from V_result";
		 
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		List<String> chaxun_names = new ArrayList<String>();
		List<String> counts=new ArrayList<String>();
 
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				String chaxun_name = resultSet.getString(1);
				chaxun_names.add(chaxun_name);
			}
			
			
			String[] sql2=new String[4];
			sql2[0]="select count(*) from V_result ";
			int i=1;
			for(String chaxun_name:chaxun_names) {
				sql2[i]="select count(*) from V_result where name='"+chaxun_name+"' " ;
			    i++;
			}
			
			for(int j=0;j<sql2.length;j++) {
				preparedStatement = connection.prepareStatement(sql2[j]);
				resultSet = preparedStatement.executeQuery();
				while (resultSet.next()) {
					String count = resultSet.getString(1);
					counts.add(count);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return counts;
	}
	

}
