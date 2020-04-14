package net.room.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.room.entity.User;
import net.room.mapper.UserMapper;
import net.room.service.userServiceI;

@Service
public class userServiceImpl implements userServiceI{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User selectUser(String userName) {
		return userMapper.selectByPrimaryKey(userName);
	}

}
