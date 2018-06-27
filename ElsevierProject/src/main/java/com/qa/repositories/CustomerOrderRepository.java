package com.qa.repositories;

import com.qa.models.Customer;
import com.qa.models.CustomerOrder;
import org.springframework.data.repository.CrudRepository;

public interface CustomerOrderRepository extends CrudRepository<CustomerOrder, Integer> {

    public CustomerOrder getCustomerOrderByCustomer(Customer customer);

}
