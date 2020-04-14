package net.room.service;

import java.util.List;

import net.room.entity.Room;

public interface RoomServiceI {

	public int insertRoom(Room room);
	
	public int deleteRoomByID(String ID);
	
	public int updateRoomByID(Room room);

	public int updatestate(int roomID);
	
	public int updatestate2(int roomID);
	
	public int updatestate3(int roomID);
	
	public Room selectRoomByID(String ID);
	
	public List<Room> selectRooms();
	
	public List<Room> selectNoRooms();
}
