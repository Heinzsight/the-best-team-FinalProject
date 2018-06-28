package com.qa.repositories;

import com.qa.models.Customer;
import com.qa.models.CustomerOrder;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CustomerOrderRepository extends CrudRepository<CustomerOrder, Integer> {

    public List<CustomerOrder> findCustomerOrderByCustomerId(int customerId);

}
