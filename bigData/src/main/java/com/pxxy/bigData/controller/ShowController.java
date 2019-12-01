package com.pxxy.bigData.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.AgeVo;
import com.pxxy.bigData.bean.Course;
import com.pxxy.bigData.bean.GenderVo;
import com.pxxy.bigData.bean.OnlineVo;
import com.pxxy.bigData.bean.PopularVo;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.service.CourseService;
import com.pxxy.bigData.service.UserServcie;
import com.pxxy.bigData.serviceImpl.FlowmeterService;
import com.pxxy.bigData.serviceImpl.GenderVoService;
import com.pxxy.bigData.serviceImpl.PopularVoService;
/**
 * 显示信息的控制层
 * @author xzsoldier
 *
 */
@Controller
public class ShowController {
	
	@Autowired
	private GenderVoService genderVoService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	UserServcie userService;
	@Autowired
	FlowmeterService flowmeterService;
	
	@Autowired
	private PopularVoService popularVoService;
	/**
	 * 
	 * Body = {"code":100,"msg":"处理成功!",
	 * "map":{"list":[{"gender":"M","count":64,"course_name":null},
	 * {"gender":"F","count":39,"course_name":null}]}}
	 * 显示使用此网站的男女数量
	 * @return list
	 */
	@RequestMapping("/showGender")
	@ResponseBody
	public Msg getGender() {
		List<GenderVo> list = genderVoService.selectGender();
		return Msg.success().add("list", list);
		
	}
	/**
	 * Body = {"code":100,"msg":"处理成功!",
	 * "map":{
	 * "list":[{"gender":"F","count":1,"course_name":"IOS之测试课程"},
	 * {"gender":"M","count":3,"course_name":"JAVA语言基础"},
	 * {"gender":"M","count":13,"course_name":"Python基础入门"},
	 * {"gender":"F","count":2,"course_name":"微信小程序开发"},
	 * {"gender":"M","count":2,"course_name":"微信小程序开发"}]}}
	 * 没门课程的男女分布人数
	 * @return list
	 */
	@RequestMapping("/course/showGender")
	@ResponseBody
	public Msg courseGender() {
		
		List<Course> lists = courseService.getCourseGender();
		return Msg.success().add("list", lists);
		
	}
	/**
	 * Body = {"code":100,"msg":"处理成功!",
	 * "map":
	 * {"age"
	 * :[{"course_id":null,
	 * "course_name":null,
	 * "grade1":"0",
	 * "grade2":"6",
	 * "grade3":"79",
	 * "grade4":"22",
	 * "grade5":"0"}]}}
	 * 全网站的年龄分布
	 * @return
	 */
	@RequestMapping("/agedistribution")
	@ResponseBody
	public Msg getAgedistribution() {
		List<AgeVo> age = userService.getAgedistribution();
		return Msg.success().add("age", age);
	}
	
	/**
	 * Body = {"code":100,"msg":"处理成功!",
	 * "map":{"province":
	 * [{"provinceId":null,"provinceCode":null,"provinceName":null,"cnt":2,"province_name":"安徽省"},
	 * {"provinceId":null,"provinceCode":null,"provinceName":null,"cnt":1,"province_name":"澳门特别行政区"},
	 * {"provinceId":null,"provinceCode":null,"provinceName":null,"cnt":65,"province_name":"北京市"},
	 * {"provinceId":null,"provinceCode":null,"provinceName":null,"cnt":1,"province_name":"福建省"},
	 * {"provinceId":null,"provinceCode":null,"provinceName":null,"cnt":2,"province_name":"甘肃省"},
	 * 全网站的省份分布
	 * @return
	 */
	@RequestMapping("/province")
	@ResponseBody
	public Msg getProvince() {
		List<Province> province = userService.getProvince();
		return Msg.success().add("province", province);
	}
	
	/**
	 * 在线以及过往小时在线人数查看
	 *  Body = {"code":0,"msg":"当前在线人数：0人",
	 *  "map":
	 *  {"online"
	 *  :[{"hour":"20170516 00",
	 *  "count":1,
	 *  "day":null,
	 *  "week":null,
	 *  "month":null}
	 * @param session
	 * @return
	 */
	@RequestMapping("/houronline")
	@ResponseBody
    public Msg houronline(HttpSession session) {
    	Date t = new Date();
    	List<OnlineVo> online = flowmeterService.selectOnlineByHour();
        return  Msg.online("online", online);
    }
	/**
	 * 在线以及过往天数在线人数查看
	 * Body = {"code":0,"msg":"当前在线人数：0人",
	 * "map":
	 * {"online":
	 * [{"hour":null,
	 * "count":1,
	 * "day":"20170516",
	 * "week":null,
	 * "month":null},
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/dailyonline")
    public Msg dailyonline(HttpSession session) {
    	Date t = new Date();
    	List<OnlineVo> online = flowmeterService.selectOnlineByDaily();
        return  Msg.online("online", online);
    }
	/**
	 * 在线以及过往周在线人数查看
	 * 
	 * Body = {"code":0,"msg":"当前在线人数：0人",
	 * "map":
	 * {"online":
	 * [{"hour":null,
	 * "count":1,
	 * "day":null,
	 * "week":"201720",
	 * "month":null},
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/weekonline")
    public Msg weekonline(HttpSession session) {
    	Date t = new Date();
    	List<OnlineVo> online = flowmeterService.selectOnlineByWeek();
        return  Msg.online("online", online);
    }
	/**
	 * Body = {"code":0,"msg":"当前在线人数：0人",
	 * "map":
	 * {"online":
	 * [{"hour":null,
	 * "count":1,
	 * "day":null,
	 * "week":null,
	 * "month":"201705"},
	 * 在线以及过往月度在线人数查看
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/monthonline")
    public Msg monthonline(HttpSession session) {
    	Date t = new Date();
    	List<OnlineVo> online = flowmeterService.selectOnlineByMonth();
        return  Msg.online("online", online);
	}
	
	/**
	 *@author 邓志彬
	 *Description:
	 *{"code":100,"msg":"处理成功!",
	 *"map":
	 *{"vos":
	 *[{"course_id":10,
	 *"course_name":"Python基础入门",
	 *"cnt":14,
	 *"course_img_url":"Python基础入门1.png"}
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/selectPopular")
	@ResponseBody
	public Msg selectPopular() {
		List<PopularVo> vos = popularVoService.selectPopular();
		return Msg.success().add("vos", vos);
	}
	@RequestMapping("/onlinePeopleHtml")
	public String toPage() {
		return "/admin/onlinePeople";
	}
	
	
}
