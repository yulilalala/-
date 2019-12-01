package com.pxxy.bigData;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TeacherCountControllerTest {
	@Autowired
    private WebApplicationContext wac;

    private MockMvc mvc;
    private MockHttpSession session;


    @Before
    public void setupMockMvc(){
        mvc = MockMvcBuilders.webAppContextSetup(wac).build(); //初始化MockMvc对象
        session = new MockHttpSession();
    }
    @Test
	public void testCountTeacher() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/countTeacher")//请求路径
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
}
