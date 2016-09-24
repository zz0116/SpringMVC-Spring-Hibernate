package com.zyz.maven.controller;

import com.zyz.maven.dao.UserDao;
import com.zyz.maven.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhang Yuangzhuo on 2016/8/31.
 */
@Controller
public class UserController {

    private UserDao userDao;

    @Resource(name = "userDao")
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @RequestMapping(value = "/userManager", method = RequestMethod.GET)
    public String userManager(ModelMap modelMap) {
        List<User> users = userDao.findAll();
        modelMap.addAttribute("userList", users);
        return "userManager";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser() {
        return "addUser";
    }

    @RequestMapping(value = "/addUserPost", method = RequestMethod.POST)
    public String addUserPost(User user) {
        //1.user数据存入数据库
        userDao.saveUser(user);
        //2.重定向到userManager页面
        return "redirect:/userManager";
    }

    @RequestMapping(value = "/userDetail/{userId}", method = RequestMethod.GET)
    public String userDetail(@PathVariable("userId") Integer userId, Model model) {
        User u = userDao.findOne(userId);
        model.addAttribute("user", u);
        return "userDetail";
    }

    @RequestMapping(value = "/updateUser/{userId}", method = RequestMethod.GET)
    public String updateUser(@PathVariable("userId") Integer userId, Model model) {
        User u = userDao.findOne(userId);
        model.addAttribute("user", u);
        return "updateUser";
    }

    @RequestMapping(value = "/updateUserPost", method = RequestMethod.POST)
    public String updateUserPost(User user) {
        //1.按Id修改数据库对应数据
        userDao.updateUser(
                user.getId(),
                user.getUsername(),
                user.getPassword(),
                user.getPhonenumber());
        //2.重定向到userManager
        return "redirect:/userManager";
    }

    @RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("userId") Integer userId) {
        userDao.delete(userId);
        return "redirect:/userManager";
    }
}
