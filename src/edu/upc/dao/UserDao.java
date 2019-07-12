package edu.upc.dao;

public interface UserDao {
    public void updateInfo(User user);

    public void updateInfo2(User user);

    boolean userLogin(String id, String password);

    int userRegister(String id, String password, String card, double wage, String call, Integer age);

    User getUserById(String id);
}
