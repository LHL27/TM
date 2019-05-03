package top.hongliankeji;




import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 * 查询全部的用户和密码
 * @author 林宏连
 *
 */
public class Query {
	/*public static void main(String[] args) {
		Query p = new Query();
		try{
			List<UserBean> userList =  p.queryAll();
			for(UserBean user : userList){
				System.out.print(user.getUserName()+" ");
				System.out.print(user.getPwd()+" ");
				System.out.println(user.getCreateDate());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	*/
	
	public List queryAll() throws Exception{		//返回全部的用户
		Connection conn = getConn.connectDB();
		String sql = "select * from TMuser";
		List<UserBean> userList = new ArrayList < UserBean >();
		
		Statement stmt = (Statement) conn.createStatement();
		ResultSet rs = ((java.sql.Statement) stmt).executeQuery(sql);
		while(rs.next()){
			UserBean user = new UserBean();
			user.setUserName(rs.getString("userName"));
			user.setPwd(rs.getString("pwd"));
			user.setCreateDate(rs.getDate("createData"));
			
			userList.add(user);
		}
		return (List) userList;
	}
}
