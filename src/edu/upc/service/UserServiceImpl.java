package edu.upc.service;

import edu.upc.dao.*;


public class UserServiceImpl implements UserService {

    private static UserServiceImpl instance = new UserServiceImpl();

    public static UserServiceImpl getInstance() {
        return instance;
    }

    @Override
    public void UserUpdateInfo(User user) {
        // TODO Auto-generated method stub
        UserDao userDao = new UserDaoImpl();
        userDao.updateInfo(user);
    }

    public User getUserById(String id) {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        return adminDao.getUserById(id);
    }

    public void UserUpdateInfo2(User user) {
        // TODO Auto-generated method stub
        UserDao userDao = new UserDaoImpl();
        userDao.updateInfo2(user);
    }
}
