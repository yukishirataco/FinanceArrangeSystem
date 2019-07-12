package edu.upc.dao;

import java.util.List;

public interface AdminDao {
    public void insertUser(User user);

    public void deleteUser(String id);

    public void updateUser(User user);

    public List<User> getAllUsers();

    User getUserById(String id);

    boolean adminLogin(String id, String password);
}
