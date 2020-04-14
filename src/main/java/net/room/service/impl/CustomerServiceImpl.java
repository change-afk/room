package net.room.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.room.entity.Customer;
import net.room.mapper.CustomerMapper;
import net.room.service.CustomerServiceI;

@Service
public class CustomerServiceImpl implements CustomerServiceI{

	@Autowired
	private CustomerMapper cusMapper;
	
	public int insertCustomer(Customer customer) {
		return cusMapper.insert(customer);
	}

	public int deleteCustomerByID(String cusID) {
		return cusMapper.deleteByPrimaryKey(cusID);
	}

	public Customer selectCustomerByID(String cusID) {
		return cusMapper.selectByPrimaryKey(cusID);
	}

	public List<Customer> selectCustomers() {
		return cusMapper.selectCustomers();
	}

	public int updateCustomer(Customer customer) {
		return cusMapper.updateByPrimaryKey(customer);
	}

}
