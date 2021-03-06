package dataConnect;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Users;

public class UsersConnection extends BaseConnection{
	public int insert(Users users) throws SQLException{
		int i=0;
		getConnection();
		//connected to PLSQL scott database 
		String sql="insert into Users values(seq_id.nextval,?,?,?,?,?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, users.getUsername());
		ps.setString(2, users.getPwd());
		ps.setInt(3, users.getAge());
		ps.setString(4, users.getGender());
		ps.setString(5, users.getTel());
		
		i = ps.executeUpdate();
		closeAll();
		return i;
		
	}
	
	
	public Users login(String username, String pwd) throws SQLException{
		Users user = null;
		getConnection();
		String sql = "select * from Users where NAME = ? and PWD = ?";
		ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setString(2, pwd);
		rs=ps.executeQuery();
		while(rs.next()){
			user=new Users(rs.getString("name"),
					rs.getString("pwd"),
					rs.getInt("age"),
					rs.getString("gender"),
					rs.getString("tel")
					
					);
			
			
		}
		
		
		closeAll();
		return user;
		
	}
	
	
	public List<Users> findAll() throws SQLException{
		List<Users> allUsers = new ArrayList<Users>();
		getConnection();
		String sql ="select * from Users";
		ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		
		while(rs.next()){
			int id = rs.getInt("id");
			String username = rs.getString("name");
			String pwd = rs.getString("pwd");
			int age = rs.getInt("age");
			String gender = rs.getString("gender");
			String tel = rs.getString("tel");
			
			Users user = new Users(id,username,pwd,age,gender,tel);
			allUsers.add(user);
			
		}
		closeAll();
		return allUsers;
		
	}
	
	
	
	
	
	
	

}
