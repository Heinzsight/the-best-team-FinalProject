package com.qa.controllers;

import com.qa.models.Customer;
import com.qa.services.CustomerService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.View;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:test-context.xml")
@SpringBootTest
@AutoConfigureMockMvc
public class CustomerControllerTests {
    @InjectMocks
    CustomerController controller;

    @Mock
    CustomerService mockCustomerService;

    @Mock
    View mockView;

    MockMvc mockMvc;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(controller)
                .setSingleView(mockView)
                .build();
    }
    //@Autowired
    //private MockMvc mock;//Used to set up the mock environment for the test

    @Test//Example controller unit test, you don't need to comment all of them this heavily
    public void loginRedirectGoesToLoginPage() throws Exception{
        MvcResult result = this.mockMvc.perform(get("/login")).andDo(print()).andExpect(status()
                .isOk()).andReturn();//sends a request to /login, prints the result, checks that the status is ok and saves the result to the console
        String content = result.getModelAndView().getViewName();//in this case I need the view name that /login points to but the entire json structure can be navigated
        assertEquals(content, "login");//checking that /login takes ppl to the login page
    }

    @Test
    public void logoutRedirectGoesToHomePage() throws Exception{
        MvcResult result = this.mockMvc.perform(get("/logout")).andDo(print()).andExpect(status()
                .isOk()).andReturn();
        String content = result.getModelAndView().getViewName();
        assertEquals(content, "index");
    }

    @Test
    public void registerUserFailTest() throws Exception{
        Customer chad = new Customer();
        chad.setCustomerId(4);
        chad.setEmail("chad@gmail.com");
        chad.setFirstName("Chad");
        chad.setLastName("Whitman");
        chad.setPassword("IamTheBest");
        MvcResult result = this.mockMvc.perform(post("/registerProcess").flashAttr("Customer", chad)).andDo(print()).andExpect(status()
                .isOk()).andReturn();
        String content = result.getModelAndView().getViewName();
        assertEquals(content, "registration_failed");
    }

}