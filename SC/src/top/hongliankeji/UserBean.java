package top.hongliankeji;

import java.sql.Date;



/**
 * ��ȡ�������û���Ϣ��JavaBean
 * @author �ֺ���
 *
 */
public class UserBean {
	private String userName;
	private String pwd;
	private String phone;
	private String email;
	private Date createDate;
	
	//���캯��
	public UserBean(String userName, String pwd, String phone, String email,
			Date createDate) {
		super();
		this.userName = userName;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.createDate = createDate;
	}

	public UserBean() {
		super();
	}
	
	//get��set����
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
}
