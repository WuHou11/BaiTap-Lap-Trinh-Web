package hau.vn.service.lmpl;

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
}
