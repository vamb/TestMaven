package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	
	public static Connection getConnection() throws Exception{
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/test?user=root&password=vamb&useUnicode=true&characterEncoding=UTF8";
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url);
			return conn;
		}catch(Exception e){
			throw e;
		}
	}
	
	public static void close(ResultSet rs, Statement st,Connection conn){
		try {
			if (rs != null) {
				rs.close(); // �رս��
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close(); // �ر�Statement
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null) {
						conn.close(); // �ر�����
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
}
