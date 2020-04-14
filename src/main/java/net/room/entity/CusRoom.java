package net.room.entity;

import java.io.Serializable;
import java.sql.Date;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("t_cus_room")
public class CusRoom implements Serializable{
    @TableId
    private String ID;
    
	private String cusID;

    private Integer roomID;

    private Date comeTime;

    private Date outTime;
    
    private String state;


    private static final long serialVersionUID = 1L;

    public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getCusID() {
        return cusID;
    }

    public void setCusID(String cusID) {
        this.cusID = cusID == null ? null : cusID.trim();
    }

    public Integer getRoomID() {
        return roomID;
    }

    public void setRoomID(Integer roomID) {
        this.roomID = roomID;
    }

	public Date getComeTime() {
		return comeTime;
	}

	public void setComeTime(Date comeTime) {
		this.comeTime = comeTime;
	}

	public Date getOutTime() {
		return outTime;
	}

	public void setOutTime(Date outTime) {
		this.outTime = outTime;
	}

}