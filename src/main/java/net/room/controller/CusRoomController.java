package net.room.controller;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.room.entity.CR;
import net.room.entity.CusRoom;
import net.room.entity.Customer;
import net.room.entity.Room;
import net.room.service.CusRoomServiceI;
import net.room.service.CustomerServiceI;
import net.room.service.RoomServiceI;

@Controller
@RequestMapping("/cusRoom")
public class CusRoomController {

	@Autowired
	private CustomerServiceI cusService;
	@Autowired
	private RoomServiceI roomService;
	@Autowired
	private CusRoomServiceI crService;
	
	@RequestMapping("/selectRoom")
	public ModelAndView selectRoom() {
		ModelAndView mv = new ModelAndView();
		List<Room> list = roomService.selectNoRooms();
		mv.addObject("list", list);
		mv.setViewName("cusRoom/insertCusRoom");
		return mv;
	}
	
	@RequestMapping("/insert")
	public ModelAndView selectCusRoom(CusRoom cusRoom) {
		ModelAndView mv = new ModelAndView();
		String cusID= cusRoom.getCusID();
		Customer customer = cusService.selectCustomerByID(cusID);
		if(customer==null) {
			String msg = "请先录入用户信息";
			mv.addObject("msg",msg);
			mv.setViewName("cusRoom/insertCusRoom");
		}else {
			cusRoom.setID(UUID.randomUUID().toString().replaceAll("-", ""));
			cusRoom.setState("未入住");
			crService.insertCusRoom(cusRoom);
			int roomID = cusRoom.getRoomID();
			roomService.updatestate(roomID);
			List<Room> list = roomService.selectRooms();
			mv.addObject("list", list);
			mv.setViewName("cusRoom/insertCusRoom");
		}
		return  mv;
	}

	@RequestMapping("/select")
	public ModelAndView selectCusRooms() {
		ModelAndView mv = new ModelAndView();
		List<CR> lists = crService.selectCRs();
		List<CR> list = new ArrayList<>();
		for(int i=0;i<lists.size();i++) {
			CR cr = lists.get(i);
			if(lists.get(i).getState().equals("未入住")) {
				cr.setMsg("入住");
				list.add(cr);
			}
			else if(lists.get(i).getState().equals("已入住")) {
				cr.setMsg("退房");
				list.add(cr);
			}
			else {
				cr.setMsg("已退房");
				list.add(cr);
			}
		}
		mv.addObject("list", list);
		mv.setViewName("cusRoom/selectCusRoom");
		return  mv;
	}
	
	@RequestMapping("/editRoom")
	public ModelAndView updateRoomState(@RequestParam("msg") String msg,@RequestParam("roomID") int roomID,@RequestParam("id") String ID) {
		ModelAndView mv = new ModelAndView();
		if(msg.equals("入住")) {
			roomService.updatestate2(roomID);
			crService.updateState(ID);
		}
		else if(msg.equals("退房")) {
			roomService.updatestate3(roomID);
			crService.updateState2(ID);
		}
		else {}//入住、退房    修改房间状态
		List<CR> lists = crService.selectCRs();
		List<CR> list = new ArrayList<>();
		for(int i=0;i<lists.size();i++) {
			CR cr = lists.get(i);
			if(lists.get(i).getState().equals("未入住")) {
				cr.setMsg("入住");
				list.add(cr);
			}
			else if(lists.get(i).getState().equals("已入住")) {
				cr.setMsg("退房");
				list.add(cr);
			}
			else {
				cr.setMsg("已退房");
				list.add(cr);
			}
		}
		mv.addObject("list", list);
		mv.setViewName("cusRoom/selectCusRoom");
		return  mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteCustomerByID(@RequestParam("del") String ID) {
		ModelAndView mv = new ModelAndView();
		crService.deleteCusRoomByID(ID);
		List<CR> lists = crService.selectCRs();
		List<CR> list = new ArrayList<>();
		for(int i=0;i<lists.size();i++) {
			CR cr = lists.get(i);
			if(lists.get(i).getState().equals("未入住")) {
				cr.setMsg("入住");
				list.add(cr);
			}
			else if(lists.get(i).getState().equals("已入住")) {
				cr.setMsg("退房");
				list.add(cr);
			}
			else {
				cr.setMsg("已退房");
				list.add(cr);
			}
		}
		mv.addObject("list", list);
		mv.setViewName("cusRoom/selectCusRoom");
		return  mv;
	}

	@RequestMapping("/update")
	public ModelAndView updateCusRoomTime(@RequestParam("ID") String ID,@RequestParam("comeTime") Date comeTime,@RequestParam("outTime") Date outTime) {
		ModelAndView mv = new ModelAndView();
		crService.updateCusRoomByID(ID, comeTime, outTime);
		List<CR> lists = crService.selectCRs();
		List<CR> list = new ArrayList<>();
		for(int i=0;i<lists.size();i++) {
			CR cr = lists.get(i);
			if(lists.get(i).getState().equals("未入住")) {
				cr.setMsg("入住");
				list.add(cr);
			}
			else if(lists.get(i).getState().equals("已入住")) {
				cr.setMsg("退房");
				list.add(cr);
			}
			else {
				cr.setMsg("已退房");
				list.add(cr);
			}
		}
		mv.addObject("list", list);
		mv.setViewName("cusRoom/selectCusRoom");
		return  mv;
	}
	@RequestMapping("/count")
	public ModelAndView count(@RequestParam("comeTime") Date comeTime,@RequestParam("outTime") Date outTime) {
		ModelAndView mv = new ModelAndView();
		List<CR> list = crService.selectCRCount(comeTime,outTime);
		List<CR> list2 = crService.selectCRCountMoney(comeTime,outTime);
		mv.addObject("comeTime", comeTime); 
		mv.addObject("outTime", outTime); 
		mv.addObject("list", list); 
		mv.addObject("list2", list2);
		mv.setViewName("total/count");
		return mv;
	}
}
