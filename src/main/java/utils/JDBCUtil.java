package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	
	public static Connection getConnection() throws Exception{
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/test?user=root&password=root&useUnicode=true&characterEncoding=UTF8";
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
				rs.close(); // �رս����
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
	
/*	public static void main(String[] args) throws Exception {
		Connection conn = null;
		String sql;
			// MySQL��JDBC URL��д��ʽ��jdbc:mysql://�������ƣ����Ӷ˿�/���ݿ������?����=ֵ
			// ������������Ҫָ��useUnicode��characterEncoding
			// ִ�����ݿ����֮ǰҪ�����ݿ����ϵͳ�ϴ���һ�����ݿ⣬�����Լ�����
			// �������֮ǰ��Ҫ�ȴ���javademo���ݿ�
		String url = "jdbc:mysql://localhost:3306/test?user=root&password=root&useUnicode=true&characterEncoding=UTF8";
		try {
			// ֮����Ҫʹ������������䣬����ΪҪʹ��MySQL����������������Ҫ��������������
			// ����ͨ��Class.forName�������ؽ�ȥ��Ҳ����ͨ����ʼ������������������������ʽ������
			Class.forName("com.mysql.jdbc.Driver");// ��̬����mysql����
			// or:
			// com.mysql.jdbc.Driver driver = new com.mysql.jdbc.Driver();
			// or��
			// new com.mysql.jdbc.Driver();
			System.out.println("�ɹ�����MySQL��������");
			// һ��Connection����һ�����ݿ�����
			conn = DriverManager.getConnection(url);
			// Statement������кܶ෽��������executeUpdate����ʵ�ֲ��룬���º�ɾ����
			Statement stmt = conn.createStatement();
			sql = "create table student(NO char(20),name varchar(20),primary key(NO))";
			int result = stmt.executeUpdate(sql);// executeUpdate���᷵��һ����Ӱ����������������-1��û�гɹ�
			if (result != -1) {
				System.out.println("�������ݱ�ɹ�");
				sql = "insert into student(NO,name) values('2012001','��ΰ��')";
				result = stmt.executeUpdate(sql);
				sql = "insert into student(NO,name) values('2012002','��С��')";
				result = stmt.executeUpdate(sql);
				sql = "select * from student";
				ResultSet rs = stmt.executeQuery(sql);// executeQuery�᷵�ؽ���ļ��ϣ����򷵻ؿ�ֵ
				System.out.println("ѧ��\t����");
				while (rs.next()) {
				System.out.println(rs.getString(1) + "\t" + rs.getString(2));// ��������ص���int���Ϳ�����getInt()
				}
			}
		} catch (SQLException e) {
			System.out.println("MySQL��������");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}*/
}
