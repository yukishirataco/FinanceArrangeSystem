package edu.upc.service;

import edu.upc.dao.User;

public interface UserService {
    public void UserUpdateInfo(User user);

    public void UserUpdateInfo2(User user);

    public User getUserById(String id);
}
