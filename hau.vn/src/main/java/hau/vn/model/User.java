package hau.vn.model;

import java.io.Serializable;
import java.util.Date;
import java.sql.Timestamp;


@SuppressWarnings("serial")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String email;
	private String userName;
	private String fullName;
	private String passWord;
	private String avatar;
	private int roleid;
	private String phone;
	private Timestamp createdDate;
	
	public User() {}
	
	 public User(String email, String username, String fullname, String password,
             String avatar, int roleid, String phone, Timestamp createdDate) {
     this.email = email;
     this.userName = username;
     this.fullName = fullname;
     this.passWord = password;
     this.avatar = avatar;
     this.roleid = roleid;
     this.phone = phone;
     this.createdDate = createdDate;
 }
	 
	public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    public String getPassWord() { return passWord; }
    public void setPassWord(String passWord) { this.passWord = passWord; }
    public String getAvatar() { return avatar; }
    public void setAvatar(String avatar) { this.avatar = avatar; }
    public int getRoleid() { return roleid; }
    public void setRoleid(int roleid) { this.roleid = roleid; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    public Timestamp getCreatedDate() { return createdDate; }
    public void setCreatedDate(Timestamp createdDate) { this.createdDate = createdDate; }
}
