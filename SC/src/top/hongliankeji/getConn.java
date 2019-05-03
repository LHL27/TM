package top.hongliankeji;


import java.sql.Connection;
import java.sql.DriverManager;
/**
 * 连接数据库TM的连接，已经封装
 * @author 林宏连
 *
 */
public class getConn {
		private static final String URI = "jdbc:mysql://localhost:3306/TM?" 
				+"serverTimezone=GMT&"		//设置服务器时区
				+"user=root & password="	//用户和密码
				+"&useUnicode=true&characterEncoding=UTF-8";		//数据库编码
		
		private static final String DRIVER = "com.mysql.cj.jdbc.Driver";	//驱动
		
		public static Connection connectDB() throws Exception{
			Class.forName(DRIVER);
			Connection conn = DriverManager.getConnection(URI);
			return conn;
	}
}
