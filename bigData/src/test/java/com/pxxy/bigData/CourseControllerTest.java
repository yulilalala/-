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

import com.pxxy.bigData.service.CourseService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseControllerTest {
	@Autowired
    private WebApplicationContext wac;

    private MockMvc mvc;
    private MockHttpSession session;


    @Before
    public void setupMockMvc(){
        mvc = MockMvcBuilders.webAppContextSetup(wac).build(); //初始化MockMvc对象
        session = new MockHttpSession();
    }
	@Autowired
	CourseService courseService;
	@Test
	public void queryAllTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/course/queryAll")//请求路径
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryCourseTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/course/classicCourse")//请求路径
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryCourseTop20Test() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/popularVoServiceTOP20")//请求路径
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryCourseClassifyTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/course/getClassify")//请求路径
				.param("classifyId","1")
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryCourseInfoTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/course/getCourseInfo")//请求路径
				.param("courseId","1")
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryCourseSearchTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/course/search")//请求路径
				.param("input","JAVA")
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryPariseTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/praise/addPraise")//请求路径
				.param("userId","1")
				.param("courseId", "1")
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	@Test
	public void queryAgedistributionTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/agedistribution")//请求路径
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}

	
	  @Test
	  public void queryUserCollectionTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/userCollect/collectInfo")//请求路径
			  .param("userId", "1") 
			  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
              .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
              .session(session)
      )
     .andExpect(MockMvcResultMatchers.status().isOk())//状态码
     .andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	 
	@Test
	public void addCollectionTest() throws Exception{
		mvc.perform(MockMvcRequestBuilders.get("/userCollect/addCollect")//请求路径
				.param("userId", "1")
				.param("courseId", "1")
                .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
                .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
                .session(session)
        )
       .andExpect(MockMvcResultMatchers.status().isOk())//状态码
       .andDo(MockMvcResultHandlers.print());//输出控制台
	}
	
	  @Test 
	  public void removeCollectionTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/userCollect/removeCollect")//请求路径
				  .param("userId", "1")
				  .param("courseId", "1")
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void hourOnlineTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/houronline")//请求路径
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void hourdayTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/dailyonline")//请求路径
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void hourweekTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/weekonline")//请求路径
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void hourmounthTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/monthonline")//请求路径
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void coursePopurerTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/selectPopular")//请求路径
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
	  @Test 
	  public void courseInfoTest() throws Exception{
		  mvc.perform(MockMvcRequestBuilders.get("/course/courseInfo")//请求路径
				  .param("userId", "1")
				  .param("courseId", "1")
				  .contentType(MediaType.APPLICATION_JSON_UTF8)//访问数据类型
			      .accept(MediaType.APPLICATION_JSON_UTF8)//接受数据类型
			      .session(session)
			)
			.andExpect(MockMvcResultMatchers.status().isOk())//状态码
			.andDo(MockMvcResultHandlers.print());//输出控制台
	  }
}
