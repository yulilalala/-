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
public class UserControllerTest {
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
	public void testFindById() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/findById")//请求路径
				 .param("userId","1")//输入参数
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	
	@Test
	public void testQueryAll() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/queryAll")//请求路径
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testselectByUserName() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/check")//请求路径
				 .param("username","user")//输入参数
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testfindByUserName() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/findByName")//请求路径
				 .param("username","user")//输入参数
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testLogin() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/login")//请求路径
				 .param("username","user")//输入参数
				 .param("password", "123456")
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testAdd() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/collection/courseInfo")//请求路径
				 .param("courseId","5")//输入参数
				 .param("userId", "1")
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testFind() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/userCollect/find")//请求路径
				 .param("courseId","1")//输入参数
				 .param("userId", "1")
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void testSearch() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/user/searchUser")//请求路径
				 .param("keywords","use")//输入参数
                 .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                 .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                 .session(session)
         )
        .andExpect(MockMvcResultMatchers.status().isOk())//状态码
        .andDo(MockMvcResultHandlers.print());//输出控制台
	}
}
