package com.qa.services;

import com.qa.models.Customer;
import com.qa.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;


    public Customer saveCustomer(Customer customer) {

        return customerRepository.save(customer);
    }

    public Customer loginProcess(String email, String password) {

        return customerRepository.loginProcess(email, password);
    }


    public int updateCustomer(String firstName,
                              String lastName,
                              String email,
                              String password,
                              int customerId) {

        return customerRepository.updateCustomer(firstName, lastName, email, password, customerId);
    }


    public Customer findCustomerById(int customerId) {

        return customerRepository.findOne(customerId);
    }


}
