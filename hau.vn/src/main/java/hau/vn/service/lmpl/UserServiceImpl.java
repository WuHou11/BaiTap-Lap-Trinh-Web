package hau.vn.service.lmpl;

import java.sql.Timestamp;

import hau.vn.dao.UserDao;
import hau.vn.dao.impl.UserDaoImpl;
import hau.vn.model.*;
import hau.vn.service.UserService;

public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();

    @Override
    public User login(String username, String password) {
        User user = this.get(username);
        if (user != null && password.equals(user.getPassWord())) {
            return user;
        }
        return null;
    }

    @Override
    public User get(String username) {
        return userDao.get(username);
    }
    
    @Override
    public void insert(User user) {
        userDao.insert(user);
    }
    
    @Override
    public boolean register(String email, String password, String username, String fullname, String phone) {
        if (userDao.checkExistEmail(email) || userDao.checkExistUsername(username) || userDao.checkExistPhone(phone)) {
            return false;
        }
        Timestamp now = new Timestamp(System.currentTimeMillis());

        User newUser = new User(email, username, fullname, password, null, 5, phone, now);

        userDao.insert(newUser);
        return true;
    }
    
    @Override
    public boolean checkExistEmail(String email) {
        return userDao.checkExistEmail(email);
    }

    @Override
    public boolean checkExistUsername(String username) {
        return userDao.checkExistUsername(username);
    }

    @Override
    public boolean checkExistPhone(String phone) {
        return userDao.checkExistPhone(phone);
    }
    
    @Override
    public boolean resetPassword(String identifier, String newPassword) {
        return userDao.updatePasswordByIdentifier(identifier, newPassword);
    }

}
