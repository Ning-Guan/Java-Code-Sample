package entity;

public class Users {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String username;
	private String pwd;
	private int age;
	private String gender;
	private String tel;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Users(String username, String pwd, int age, String gender, String tel) {
		super();
		this.username = username;
		this.pwd = pwd;
		this.age = age;
		this.gender = gender;
		this.tel = tel;
	}
	public Users() {
		super();
	}
	public Users(int id, String username, String pwd, int age, String gender,
			String tel) {
		super();
		this.id = id;
		this.username = username;
		this.pwd = pwd;
		this.age = age;
		this.gender = gender;
		this.tel = tel;
	}

	
	
}
