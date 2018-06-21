package com.qa;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration//(locations = "classpath:test-context.xml")
@Transactional
@SpringBootTest
public class ElsevierProjectApplicationTests {

    @Test
    public void contextLoads() {
    }

}
