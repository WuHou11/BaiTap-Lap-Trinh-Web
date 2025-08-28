package hau.vn.service;

import hau.vn.model.*;

public interface UserService {
	User login(String username, String password);
	User get(String username);
}
