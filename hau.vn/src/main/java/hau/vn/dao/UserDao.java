package hau.vn.dao;

import hau.vn.model.*;

public interface UserDao {
	User get(String username);
	
	void insert(User user);
    boolean checkExistEmail(String email);
    boolean checkExistUsername(String username);
    boolean checkExistPhone(String phone);
    
    boolean updatePasswordByIdentifier(String identifier, String newPassword);

}
