//20163623 王莉
package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	public  static  Connection getConnection() {
		  String URL="jdbc:sqlserver://localhost:1433;DatabaseName=mydatabase";  
		   String USERNAME="sa";  
		   String PASSWORD="20163623";
		   Connection connection=null;
		   
		        try {  
		            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
		             connection=DriverManager.getConnection(URL, USERNAME,PASSWORD);
		             
		        } catch (ClassNotFoundException e) {  
		            // TODO Auto-generated catch block  
		            e.printStackTrace();  
		        } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
		        
		    
		
		return connection;
	}
	

	public static void close(Connection connection ) {
		try {
			if (connection != null) {
				connection.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement preparedStatement ) {
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(ResultSet resultSet ) {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
