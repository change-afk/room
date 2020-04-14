package net.room.service;

import java.sql.Date;
import java.util.List;

import net.room.entity.CR;
import net.room.entity.CusRoom;

public interface CusRoomServiceI {
	public int insertCusRoom(CusRoom cusRoom);
	
	public int deleteCusRoomByID(String ID);
	
	public int updateCusRoomByID(String ID,Date comeTime,Date outTime);
	
	public int updateState(String id);
	
	public int updateState2(String id);
	
	public CusRoom selectCusRoomByID(String ID);
	
	public List<CusRoom> selectCusRooms();

	public List<CR> selectCRs();
	
	List<CR> selectCRCount(Date comeTime,Date outTime);

	List<CR> selectCRCountMoney(Date comeTime,Date outTime);
}
