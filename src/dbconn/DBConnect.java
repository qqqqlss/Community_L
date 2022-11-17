package dbconn;
import java.sql.*;
public class DBConnect {
	public static Connection dbconnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminstor?&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8", "root", "root");
			System.out.println("db연결 성공");
			return conn;
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error : JDBC 연결 에러");
			return null;
		}
	}
}
