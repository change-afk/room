package net.room.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.room.entity.CR;
import net.room.entity.CusRoom;
import net.room.mapper.CusRoomMapper;
import net.room.service.CusRoomServiceI;

@Service
public class CusRoomServiceImpl implements CusRoomServiceI{

	@Autowired
	private CusRoomMapper crMapper;

	public int insertCusRoom(CusRoom cusRoom) {
		return crMapper.insert(cusRoom);
	}

	public int deleteCusRoomByID(String ID) {
		return crMapper.deleteByPrimaryKey(ID);
	}

	public int updateCusRoomByID(String ID,Date comeTime,Date outTime) {
		return crMapper.updateByPrimaryKey(ID, comeTime, outTime);
	}

	public CusRoom selectCusRoomByID(String ID) {
		return crMapper.selectByPrimaryKey(ID);
	}

	public List<CusRoom> selectCusRooms() {
		return crMapper.selectCusRooms();
	}

	@Override
	public List<CR> selectCRs() {
		return crMapper.selectCRs();
	}

	@Override
	public int updateState(String id) {
		return crMapper.updateState(id);
	}

	@Override
	public int updateState2(String id) {
		return crMapper.updateState2(id);
	}

	@Override
	public List<CR> selectCRCount(Date comeTime,Date outTime) {
		return crMapper.selectCRCount(comeTime, outTime);
	}

	@Override
	public List<CR> selectCRCountMoney(Date comeTime,Date outTime) {
		return crMapper.selectCRCountMoney(comeTime, outTime);
	}
}
