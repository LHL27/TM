
import java.util.List;

import top.hongliankeji.Query;
import top.hongliankeji.UserBean;


public class QueryAction {
	private String userName;
	private String pwd;
	
	//get和set函数
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPwd() {
		return pwd;
	}
	
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String execute(){
		//获取数据库中全部的用户
		Query p = new Query();
		try{
			List<UserBean> userList =  p.queryAll();
			for(UserBean user : userList){
				if(userName.equals(user.getUserName()) && pwd.equals(user.getPwd()))
					return "success";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return "error";
	}
}