package net.room.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.room.entity.Customer;
import net.room.service.CustomerServiceI;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerServiceI cusService;
	
	@RequestMapping("/insert")
	public ModelAndView insert(Customer customer) {
		ModelAndView mv = new ModelAndView();
		cusService.insertCustomer(customer);
		mv.setViewName("customer/insertCus");
		return mv;
	}
	
	@RequestMapping("/select")
	public ModelAndView selectCustomers() {
		ModelAndView mv = new ModelAndView();
		List<Customer> list = cusService.selectCustomers();
		mv.addObject("list", list);
		mv.setViewName("customer/selectCustomer");
		return  mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteCustomerByID(@RequestParam("del") String ID) {
		ModelAndView mv = new ModelAndView();
		cusService.deleteCustomerByID(ID);
		List<Customer> list = cusService.selectCustomers();
		mv.addObject("list", list);
		mv.setViewName("customer/selectCustomer");
		return  mv;
	}

	@RequestMapping("/update")
	public ModelAndView updateCustomerByID(Customer customer) {
		ModelAndView mv = new ModelAndView();
		cusService.updateCustomer(customer);
		List<Customer> list = cusService.selectCustomers();
		mv.addObject("list", list);
		mv.setViewName("customer/selectCustomer");
		return  mv;
	}
}
