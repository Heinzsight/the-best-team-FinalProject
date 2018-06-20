package com.qa.controllers;

import com.qa.models.Customer;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CustomerControllerTests {

    @Before
    public void init() throws Exception{
        Customer customer = new Customer();
    }

    @Test
    public void testRegistration() {

    }

}
