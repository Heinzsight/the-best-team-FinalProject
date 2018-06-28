package com.qa.services;
import com.qa.models.CustomerOrder;
import com.qa.repositories.CustomerOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderService {

    @Autowired
    private CustomerOrderRepository customerOrderRepository;

    public CustomerOrder saveCustomerOrder(CustomerOrder order) {
        return customerOrderRepository.save(order);
    }


    public List<CustomerOrder> getCustomerOrdersByCustomerId(int customerId){
        return customerOrderRepository.findCustomerOrdersByCustomerId(customerId);
    }
}