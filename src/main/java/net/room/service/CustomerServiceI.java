package net.room.service;

import java.util.List;

import net.room.entity.Customer;

public interface CustomerServiceI {

	public int insertCustomer(Customer customer);
	
	public int deleteCustomerByID(String cusID);
	
	public Customer selectCustomerByID(String cusID);
	
	public List<Customer> selectCustomers();
	
	public int updateCustomer(Customer customer);
}
