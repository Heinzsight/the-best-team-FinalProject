package com.qa.controllers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.qa.models.Customer;

import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration//(locations = "classpath:test-context.xml")
@Transactional
@SpringBootTest
@AutoConfigureMockMvc
public class CustomerControllerTests {

    @Autowired
    private MockMvc mock;//Used to set up the mock environment for the test

    @Test//Example controller unit test, you don't need to comment all of them this heavily
    public void loginRedirectGoesToLoginPage() throws Exception{
        MvcResult result = this.mock.perform(get("/login")).andDo(print()).andExpect(status()
                .isOk()).andReturn();//sends a request to /login, prints the result, checks that the status is ok and saves the result to the console
        String content = result.getModelAndView().getViewName();//in this case I need the view name that /login points to but the entire json structure can be navigated
        assertEquals(content, "login");//checking that /login takes ppl to the login page
    }

    @Test
    public void logoutRedirectGoesToHomePage() throws Exception{
        MvcResult result = this.mock.perform(get("/logout")).andDo(print()).andExpect(status()
                .isOk()).andReturn();
        String content = result.getModelAndView().getViewName();
        assertEquals(content, "index");
    }

    /*@Test
    public void updateCustomerSucess() throws Exception{
        RequestBuilder request = post("/updateProfile")
                .param("customerId", "4")
                .param("firstName","Chett")
                .param("lastName","Manley")
                .param("email", "test@test.com")
                .param("password", "pass");
        MvcResult result = this.mock.perform(post("/updateProfile")).contentType(MediaType.APPLICATION_JSON)
                .content("Customer: {}").andDo(print()).andExpect(status()
                .isOk()).andReturn();

    }*/

}
