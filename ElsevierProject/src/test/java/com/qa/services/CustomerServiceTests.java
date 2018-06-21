package com.qa.services;

import com.qa.models.Customer;
import com.qa.services.CustomerService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:test-context.xml")
@SpringBootTest
public class CustomerServiceTests {

    @Autowired
    private CustomerService customerService;

    @Test
    public void registerUserTest() {
        Customer chad = new Customer();
        chad.setCustomerId(4);
        chad.setEmail("chad@gmail.com");
        chad.setFirstName("Chad");
        chad.setLastName("Whitman");
        chad.setPassword("IamTheBest");
        customerService.saveCustomer(chad);
    }

}
