package net.room.mapper;

import java.util.List;

import net.room.entity.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(String cusID);

    int insert(Customer record);

    List<Customer> selectCustomers();

    Customer selectByPrimaryKey(String cusID);

    int updateByPrimaryKey(Customer record);
}