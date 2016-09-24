package com.zyz.maven.dao;

import com.zyz.maven.model.User;

import java.util.List;

/**
 * Created by Zhang Yuangzhuo on 2016/9/4.
 */
public interface UserDao {
    void saveUser(User user);

    List<User> findAll();

    User findOne(int id);

    void updateUser(int id, String username, String password, String phonenumber);

    void delete(Integer userId);
}
