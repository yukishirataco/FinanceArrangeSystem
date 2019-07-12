package edu.upc.service;

import edu.upc.dao.User;

import java.util.List;

public interface AdminService {
    public void AdminInsertUser(User user);

    public void AdminDeleteUser(String id);

    public void AdminUpdateUser(User user);

    public List<User> getAllUsers();

    public User getUserById(String id);
}
