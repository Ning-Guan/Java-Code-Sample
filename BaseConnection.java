package dataConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseConnection {
	Connection con; //get connection with the database 
	PreparedStatement ps; //database object
	ResultSet rs; //result set database 
	
	
	public void getConnection(){
		try{
			//load driver
			Class.forName("oracle.jdbc.OracleDriver");
			//get connection with the database
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","gnsm");

		}
		catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void closeAll(){
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		if(ps != null)
			try {
				ps.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		if(con != null)
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	

	public int operator(String sql, Object obj[]){
		int i = 0;
		try{
			getConnection();
			ps = con.prepareStatement(sql);
			for (int j=0;j<obj.length;j++){
				ps.setObject(j+1, obj[j]);
				
			}
			i= ps.executeUpdate();
		}

		catch (Exception e){
			e.printStackTrace();
		}
		finally{
			closeAll();
		}
		return i;
	}
}
