package net.room.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.room.entity.Room;
import net.room.mapper.RoomMapper;
import net.room.service.RoomServiceI;

@Service
public class RoomServiceImpl implements RoomServiceI{

	@Autowired 
	private RoomMapper roomMapper;
	
	public int insertRoom(Room room) {
		return roomMapper.insert(room);
	}

	public int deleteRoomByID(String ID) {
		return roomMapper.deleteByPrimaryKey(ID);
	}

	public Room selectRoomByID(String ID) {
		return roomMapper.selectByPrimaryKey(ID);
	}

	public List<Room> selectRooms() {
		return roomMapper.selectRooms();
	}

	public int updateRoomByID(Room room) {
		return roomMapper.updateByPrimaryKey(room);
	}

	public int updatestate(int roomID) {
		return roomMapper.updatestate(roomID);
	}

	@Override
	public List<Room> selectNoRooms() {
		return roomMapper.selectNoRooms();
	}

	@Override
	public int updatestate2(int roomID) {
		return roomMapper.updatestate2(roomID);
	}

	@Override
	public int updatestate3(int roomID) {
		return roomMapper.updatestate3(roomID);
	}

}
