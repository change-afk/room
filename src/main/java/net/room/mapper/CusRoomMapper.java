package net.room.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.room.entity.CR;
import net.room.entity.CusRoom;

public interface CusRoomMapper {
    int insert(CusRoom record);

    int deleteByPrimaryKey(String ID);
    
    int updateByPrimaryKey(@Param("ID")String ID,@Param("comeTime")Date comeTime,@Param("outTime")Date outTime);
    
    int updateState(String id);
    
    int updateState2(String id);
	
	CusRoom selectByPrimaryKey(String ID);
	
	List<CusRoom> selectCusRooms();
	
	List<CR> selectCRs();
	
	List<CR> selectCRCount(@Param("comeTime")Date comeTime,@Param("outTime")Date outTime);

	List<CR> selectCRCountMoney(@Param("comeTime")Date comeTime,@Param("outTime")Date outTime);
}