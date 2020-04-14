package net.room.mapper;

import java.util.List;

import net.room.entity.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(String ID);

    int insert(Room record);

    List<Room> selectRooms();

    List<Room> selectNoRooms();
    
    Room selectByPrimaryKey(String ID);

    int updatestate(int roomID);

    int updatestate2(int roomID);//入住
 
    int updatestate3(int roomID);//退房

    int updateByPrimaryKey(Room record);
}