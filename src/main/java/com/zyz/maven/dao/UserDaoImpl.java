package com.zyz.maven.dao;

import com.zyz.maven.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Zhang Yuanzhuo on 2016/9/4.
 */
@Repository(value = "userDao")
public class UserDaoImpl implements UserDao {

    @Resource
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private SessionFactory sessionFactory;

    public void saveUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    public List<User> findAll() {
        Session session = sessionFactory.getCurrentSession();
        List<User> users = (List<User>) session.createQuery("from User").list();
        return users;
    }

    public User findOne(int id) {
        User u = sessionFactory.getCurrentSession().get(User.class, id);
        return u;
    }

    public void updateUser(int qId, String qUsername, String qPassword, String qPhonenumber) {
        //更新信息
        Session session = sessionFactory.getCurrentSession();
        session.createQuery("update User u set u.username=:username, u.password=:password, u.phonenumber=:phonenumber where u.id=:id")
                .setParameter("username", qUsername)
                .setParameter("password", qPassword)
                .setParameter("phonenumber", qPhonenumber)
                .setParameter("id", qId)
                .executeUpdate();
    }

    public void delete(Integer userId) {
        //操作数据库删除用户信息
        User u = findOne(userId);
        Session session = sessionFactory.getCurrentSession();
        session.delete(u);
    }

}
