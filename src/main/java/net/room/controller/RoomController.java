package net.room.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.room.entity.Room;
import net.room.service.RoomServiceI;

@Controller
@RequestMapping("/room")
public class RoomController {

	@Autowired
	private RoomServiceI roomService;
	
	@RequestMapping("/insert")
	public ModelAndView insertRoom(Room room) {
		ModelAndView mv = new ModelAndView();
		room.setID(UUID.randomUUID().toString().replaceAll("-", ""));
		roomService.insertRoom(room);
		mv.setViewName("room/insertRoom");
		return mv;
	}
	
	@RequestMapping("/select")
	public ModelAndView selectRooms() {
		ModelAndView mv = new ModelAndView();
		List<Room> list = roomService.selectRooms();
		mv.addObject("list", list);
		mv.setViewName("room/selectRoom");
		return mv;
	}

	@RequestMapping("/delete")
	public ModelAndView deleteByID(@RequestParam("del") String ID) {
		ModelAndView mv = new ModelAndView();
		roomService.deleteRoomByID(ID);
		List<Room> list = roomService.selectRooms();
		mv.addObject("list", list);
		mv.setViewName("room/selectRoom");
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateByID(Room room) {
		ModelAndView mv = new ModelAndView();
		roomService.updateRoomByID(room);
		List<Room> list = roomService.selectRooms();
		mv.addObject("list", list);
		mv.setViewName("room/selectRoom");
		return mv;
	}
}
