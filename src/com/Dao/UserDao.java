package com.Dao;

import com.Entity.User;

import java.util.List;

//用户
public interface UserDao {
    //根据用户名，密码查询用户
    User queryUser(String userName,String password);
    //全角色查询
    List<User> queryAllUsers();
    //添加用户
    void addUser(String username,String password,String name,String telephone,String sex,String age,String role);

    void insert(User user);

    //检查参数
    public User check(String username);
    //修改密码
    public void update(String username,String password);
}
