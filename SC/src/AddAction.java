import java.util.Date;
import java.util.List;

import top.hongliankeji.Add;
import top.hongliankeji.Query;
import top.hongliankeji.UserBean;


public class AddAction {
	private String userName;
	private String pwd;
	private String phone;
	private String email;
	private Date createDate;
	
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



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getCreateDate() {
		return createDate;
	}



	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}



	public String execute(){
		//获取数据库中全部的用户
		Add add = new Add();
		UserBean user = new UserBean();
		
		user.setUserName(userName);
		user.setPwd(pwd);
		user.setPhone(phone);
		user.setEmail(email);
		//user.setCreateDate(createDate);
		
		try {
			add.addUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "fail";
		}
		return "success";
	}
}
