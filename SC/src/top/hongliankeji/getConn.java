package top.hongliankeji;


import java.sql.Connection;
import java.sql.DriverManager;
/**
 * �������ݿ�TM�����ӣ��Ѿ���װ
 * @author �ֺ���
 *
 */
public class getConn {
		private static final String URI = "jdbc:mysql://localhost:3306/TM?" 
				+"serverTimezone=GMT&"		//���÷�����ʱ��
				+"user=root & password="	//�û�������
				+"&useUnicode=true&characterEncoding=UTF-8";		//���ݿ����
		
		private static final String DRIVER = "com.mysql.cj.jdbc.Driver";	//����
		
		public static Connection connectDB() throws Exception{
			Class.forName(DRIVER);
			Connection conn = DriverManager.getConnection(URI);
			return conn;
	}
}
