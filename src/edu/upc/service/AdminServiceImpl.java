package edu.upc.service;

import edu.upc.dao.AdminDao;
import edu.upc.dao.AdminDaoImpl;
import edu.upc.dao.User;

import java.util.List;

public class AdminServiceImpl implements AdminService {

    private static AdminServiceImpl instance = new AdminServiceImpl();

    public static AdminServiceImpl getInstance() {
        return instance;
    }

    @Override
    public void AdminInsertUser(User user) {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        adminDao.insertUser(user);
    }

    @Override
    public void AdminDeleteUser(String id) {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        adminDao.deleteUser(id);
    }

    @Override
    public void AdminUpdateUser(User user) {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        adminDao.updateUser(user);
    }

    @Override
    public List<User> getAllUsers() {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        return adminDao.getAllUsers();
    }

    @Override
    public User getUserById(String id) {
        // TODO Auto-generated method stub
        AdminDao adminDao = new AdminDaoImpl();
        return adminDao.getUserById(id);
    }

}
