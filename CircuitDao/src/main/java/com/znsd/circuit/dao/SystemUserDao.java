package com.znsd.circuit.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.znsd.circuit.model.Systemrole;
import com.znsd.circuit.model.User;

@MapperScan
public interface SystemUserDao {
	//分页总数量
    public int systemUserCount();
    
    //分页查询
    public List<User> listSystemUser(Map<String, Object> map);

    //查询所有角色名称
    public List<Systemrole> selectSysteUser();
    
    //查询指定账号的用户
    public User queryUserNameSysteUser(String userName);
    
    //查询指定姓名的用户
    public User queryNameSysteUser(String name);
    
    //增加用户
    public int add(User user);
    
  //增加用户权限
    public int addRoleId(Map<String,Object> map);
    
    //根据账号查找用户
    public User queryUserName(String userName);
    
    //冻结用户
    public int freezeSysteUser(Map<String,Object> map);
    
    //根据id查询用户信息
    public User IdSysteUser(int id);
    
    //修改，判断账号不重复
    public User queryUserNameSysteUser2(Map<String,Object> map);
    
    //修改，判断姓名不重复
    public User queryNameSysteUser2(Map<String,Object> map);
    
  //修改用户
    public int update(User user);
    
    //修改权限
    public int addRoleId2(Map<String,Object> map);
    
  //删除用户
    public int delete(int id);
}
