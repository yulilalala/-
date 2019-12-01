package com.pxxy.bigData.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.CourseVo;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.exception.ServiceException;
import com.pxxy.bigData.service.CourseService;
import com.pxxy.bigData.serviceImpl.ClassifyService;
import com.pxxy.bigData.serviceImpl.CourseVoService;

@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
	CourseService courseService;
	@Autowired
	CourseVoService courseVoService;
	
	@Autowired
	private ClassifyService classifyService;
	/**
	 *@author 肖恒
	 *Description:查询所有课程
	 *@param str
	 *@return admin/courseList
	 *@throws ParseException
	 */
	@RequestMapping("/queryAll")
	public String queryAllCourse(@RequestParam(value="page",defaultValue="1")Integer page,Model model) {
		PageHelper.startPage(page,3);
		List<Course> courses=courseService.selectAllCourse();
		//使用pageinfo包装,将pageinfo交给页面,
		//封装了详细的分页信息，包括我们查询的数据,传入连续显示的页数
		PageInfo<Course> pageInfo = new PageInfo<Course>(courses,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/courseList";
	}
	/**
	 *@author 肖恒
	 *Description:模糊查询
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping(value="/searchCourse",method= RequestMethod.GET)
	public String queryCourseBySearch(@RequestParam String keywords,
			Model model,@RequestParam(value="page",defaultValue="1")Integer page) throws ServiceException {
		PageHelper.startPage(page,3);
		List<Course> courses=courseService.getSearch(keywords);
		PageInfo<Course> pageInfo = new PageInfo<Course>(courses,2);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/courseList";
	}
	
	/**
	 *@author 邓志彬
	 *Description:经典课程
	 * Body = {"code":100,"msg":"处理成功!"
	 * "extend":{"course":[{"courseId":1,"courseName":"JAVA语言基础"
	 * "courseIntroduction":"涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。"
	 * teacherId":2,
	 * "courseImgUrl":"c++之Win32 1.png",
	 * "classifyId":3,
	 * "videoId":2,
	 * "uploaddate":"2019-01-16"
	 * "praisecount":485,
	 * "classic":"1",
	 * "teacher":{"teacherId":2,"teacherCode":null,"teacherName":null},
	 * "classify":{"classifyId":3,"classifyCode":null,"classifyName":null},
	 * "video":{"videoId":2,"videoCode":null,"videoUrl":null}}
	 *@param str
	 *@return course
	 *@throws ParseException
	 */
	@RequestMapping("/classicCourse")
	@ResponseBody
	public Msg getClassicCourse() {
		List<Course> course = courseService.getClassic();
		return Msg.success().add("course", course);
	}
	
	/**
	 *@author 肖恒
	 *Description:跳转到admin/courseRank.html
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/courseRankHtml")
	public String courseRank() {
		return "admin/courseRank";
	}
	
	/**
	 * 课程分类，对应前台index页面的分类
	 *  Body = {"code":100,"msg":"处理成功!",
	 *  "map":
	 *  {"classify":
	 *  [{"courseId":2,
	 *  "courseName":"微信小程序开发",
	 *  "courseIntroduction":"系统全面的IT课程体系\r\n\r\n \r\n\r\n涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n前沿热门的IT职业技术\r\n\r\n \r\n\r\n依托教育集团深厚的教育背景，根据上万家合作企业用人需求进行课程改革，总监级名师实战讲授，实时把握IT行业的就业风向标，定向培养企业紧缺型人才。",
	 *  "teacherId":3,
	 *  "courseImgUrl":"微信小程序开发S.png",
	 *  "classifyId":1,
	 *  "videoId":2,
	 *  "uploaddate":"2019-04-03"
	 *  ,"praisecount":201,
	 *  "classic":null,
	 *  "teacher":
	 *  {"teacherId":3,
	 *  "teacherCode":null,
	 *  "teacherName":null},
	 *  "classify":
	 *  {"classifyId":1,
	 *  "classifyCode":null,
	 *  "classifyName":null},
	 *  "video":{"videoId":2,
	 *  "videoCode":null,"
	 *  videoUrl":null}}]}}
	 * @param classifyName
	 * @return
	 */
	@RequestMapping("/getClassify")
	@ResponseBody
	public Msg getClassify(@RequestParam("classifyId")Integer classifyId) {
		
		List<Course> c = classifyService.getClassify(classifyId);
		return Msg.success().add("classify", c);
	}
	/**
	 * 获取课程信息，对应前台的课程详情页
	 * {"code":100,"msg":"处理成功!","map"
	 * :{"course":
	 * {"courseId":1,
	 * "courseName":"Java语言基础",
	 * "courseIntroduction":"涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。"
	 * ,"teacherName":"邓力夫",
	 * "courseImgUrl":"在线java高手加薪1.png",
	 * "classifyId":4,
	 * "uploaddate":"2019-06-03",
	 * "classic":"1",
	 * "praisesCount":14,
	 * "videoUrl":"video1.Ogg"}}}
	 * @return
	 */
	@RequestMapping("/getCourseInfo")
	@ResponseBody
	public Msg getCourseInfo(@RequestParam("courseId")Integer courseId) {
		
		CourseVo c = courseVoService.getCourseInfo(courseId);
		
		return Msg.success().add("course", c);		
	}
	
	/**
	 * @throws ServiceException 
	* @Title: search
	* Body = {"code":100,"msg":"处理成功!",
	* "map":
	* {"result":
	* [{"courseId":1,
	* "courseName":"JAVA语言基础"
	* ,"courseIntroduction":"涵盖Java、JAVA大数据、Android、iOS、PHP、软件测试、嵌入式、C++、C#、UID、UED、产品经理、Linux云计算、Web前端、VR、网络营销、高级电商、主办会计等20余门课程体系。",
	* "teacherId":2,
	* "courseImgUrl":"1.jpg",
	* "classifyId":4,
	* "videoId":2,
	* "uploaddate":"2019-06-03",
	* "praisecount":1444,
	* "classic":"1",
	* "teacher":
	* {"teacherId":2,
	* "teacherCode":"111102",
	* "teacherName":"邓力夫"},
	* "classify"
	* :{"classifyId":4,
	* "classifyCode":null,
	* "classifyName":null},
	* "video":
	* {"videoId":2,
	* "videoCode":null
	* ,"videoUrl":null}},
	* @Description: 用来搜索课程的方法
	* @param @param input
	* @param @return    参数
	* @return Msg    返回类型
	* @throws
	*/
	@RequestMapping("/search")
	@ResponseBody
	public Msg search(@RequestParam(value = "input") String input) throws ServiceException {
		
		List<Course> information = courseService.getSearch(input);

		return Msg.success().add("result", information);
	}
}
