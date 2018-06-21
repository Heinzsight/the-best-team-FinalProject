package com.qa.controllers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.test.web.servlet.MvcResult;

import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

@RunWith(SpringRunner.class)
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

}
