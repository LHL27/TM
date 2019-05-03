package top.hongliankeji;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;


public class Add {
	
	public static void main(String[] args) {
		Add add = new Add();
		UserBean user = new UserBean();
		
		user.setUserName("张三");
		user.setPwd("123456");
		user.setPhone("18378335882");
		user.setEmail("123456789@qq.com");
		
		try{
			add.addUser(user);
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("添加完成！");
	}
	
	
	public void addUser(UserBean user) throws Exception {
		Connection conn = getConn.connectDB();
		
		String sql = "INSERT INTO TMuser(userName,pwd,phone,email,createData) "
		+"VALUES(?,?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,user.getUserName());
		pstmt.setString(2,user.getPwd());
		pstmt.setString(3,user.getPhone());
		pstmt.setString(4,user.getEmail());
		pstmt.setDate(5,new Date(new java.util.Date().getTime()));
		
		pstmt.execute();
	}
}
