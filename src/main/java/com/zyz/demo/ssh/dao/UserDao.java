package com.zyz.demo.ssh.dao;

import com.zyz.demo.ssh.model.User;

import java.util.List;

/**
 * Created by ZhangYuanzhuo on 2016/9/4.
 */
public interface UserDao {
    void saveUser(User user);

    List<User> findAll();

    User findOne(int id);

    void updateUser(int id, String username, String password, String phonenumber);

    void delete(Integer userId);
}
