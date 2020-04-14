package net.room.mapper;

import net.room.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(String userID);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userName);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}