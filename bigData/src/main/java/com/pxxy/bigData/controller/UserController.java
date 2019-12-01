package com.pxxy.bigData.controller;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pxxy.bigData.bean.Flowmeter;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.exception.ServiceException;
import com.pxxy.bigData.exception.SessionNotFoundException;
import com.pxxy.bigData.service.UserServcie;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserServcie userService;
	
	/*
	 * 
	 * 
	 * Body = {"code":100,"msg":"处理成功!",
	 * "map":
	 * {"msg":
	 * {"userId":1,
	 * "username":"user",
	 * "password":"539c5111bb44307c71b00e5355e326973e6139186161bf1a",
	 * "email":"123@qq.com",
	 * "gender":"M",
	 * "provinceId":1,
	 * "status":1,
	 * "birthday":"1988-09-07",
	 * "createtime":"2019-06-04",
	 * "modifytime":"2019-06-04",
	 * "college":"济南大学",
	 * "province":
	 * {"provinceId":1,
	 * "provinceCode":null,
	 * "provinceName":"北京市",
	 * "cnt":null
	 * ,"province_name":null}}}}
	 */
	@RequestMapping("/findById")
	@ResponseBody
	public Msg queryById(@RequestParam("userId")Integer id, Model model) {
		User user=userService.selectByUserId(id);
		if(user!=null) {
			return Msg.success().add("msg", user);
			
		}
		else {
			return Msg.fail().add("msg", "该用户不存在");
		}
	}
	
	/**
	 *@author 肖恒
	 *Description:查询所有用户
	 *@param str
	 *@return
	 *pageNum=1, 
	 *pageSize=7, 
	 *size=7, 
	 *startRow=1, 
	 *endRow=7, 
	 *total=52, 
	 *pages=8,
	 *prePage=0,
	 *nextPage=2,
	 *isFirstPage=true,
	 *isLastPage=false,
	 *hasPreviousPage=false, 
	 *hasNextPage=true, 
	 *navigatePages=5, 
	 *navigateFirstPage=1, 
	 *navigateLastPage=5, 
	 *navigatepageNums=[1, 2, 3, 4, 5]
	 *@throws ParseException
	 *<li th:each="num:${#numbers.sequence(1,pageInfo.navigatepageNums)}">   	
									<a href="#" th:href="@{'/user/queryAll?page='+${num}}">
									<span th:text="${num}"></span>
									</a>
							    </li>
	 *							    <!-- <th:each="num:${pageInfo.navigatepageNums}">
								    <li th:class="${num==pageInfo.pageNum}?'active'">
								    	<a href="#">[[{$num}]]</a>
								    </li>
								    <li th:if="${num!=pageInfo.pageNum}">
								    	<a href="#" th:href="@{'/user/queryAll?page='+page=${num }}">[[{$num}]]</a>
								    </li>
							    </th:each> -->
	 */
	
	@RequestMapping("/queryAll")
	public String queryAllUser(@RequestParam(value="page",defaultValue="1")Integer page,Model model) {
		PageHelper.startPage(page, 12);
		List<User> users=userService.selectAllUser();
		//使用pageinfo包装,将pageinfo交给页面,
		//封装了详细的分页信息，包括我们查询的数据,传入连续显示的页数
		PageInfo<User> pageInfo = new PageInfo<User>(users,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/userList";
		
	}
	
	@RequestMapping(value="/searchUser",method= RequestMethod.GET)
	public String queryUser(@RequestParam(value="page",defaultValue="1")Integer page,
			Model model,@RequestParam String keywords) {
		PageHelper.startPage(page, 12);
		List<User> users=userService.getSearch(keywords);
		//使用pageinfo包装,将pageinfo交给页面,
		//封装了详细的分页信息，包括我们查询的数据,传入连续显示的页数
		PageInfo<User> pageInfo = new PageInfo<User>(users,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/userList";
		
	}
	/**
	 * 检查用户名是否重复
	 * 备注：通过
	 *  Body = {"code":200,"msg":"处理失败!","extend":{"msg":"用户名已存在!"}}1
	 * @param username
	 * @return
	 */
	@RequestMapping("/check")
	@ResponseBody
	public Msg check(String username){
		
		try {
			userService.findByUname(username);
			return Msg.success().add("msg", "用户名有效!");
		}catch (ServiceException e) {
			new Msg();
			// TODO: handle exception
			return Msg.fail().add("msg", "用户名已存在!");
		}
	}
	/**
	 *@author 肖恒
	 *Description: 跳转到admin/userRatin.html
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/userRatinHtml")
	public String userRatin() {
		return "admin/userRatin";
	}
	/**
	 *@author 肖恒
	 *Description: 跳转到admin/userArea.html
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/userAreaHtml")
	public String userArea() {
		return "admin/userArea";
	}
	/**
	 *@author 肖恒
	 *Description: 跳转到admin/userAge.html
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/userAgeHtml")
	public String userAge() {
		return "admin/userAge";
	}
	/**
	 * 用户登录
	 * 备注：通过
	 *  Body = {"code":100,"msg":"处理成功!",
	 *  "map":{}}
	 * @param user
	 * @param session
	 * @return 
	 * @throws Exception
	 * 
	 */
	@RequestMapping(value = "/login")
	@ResponseBody
	public Msg Login(User user, HttpSession session,
			Flowmeter flowmeter,
			@RequestParam("username") String username,
			@RequestParam("password") String password
	) throws Exception {
		session.setMaxInactiveInterval(60*30);
		try {
			//session过期时间为60秒
			User user1=this.userService.findByUname(user);
			session.setAttribute("user", user1);
			session.setAttribute("userId", user1.getUserId());
			flowmeter.setUserId(user.getUserId());
			flowmeter.setLogintime(new Date());
			flowmeter.setExittime(new Date());
			return Msg.success();
			
		}
		catch (ServiceException e) {
			// TODO: handle exception
			return Msg.fail();
		}
		
		
	}
	/**
	 * 用户注册
	 * 备注：通过
	 * @param user
	 * @param session
	 * @return Post
	 * @throws ParseException 
	 */
	@RequestMapping("/regist")
	@ResponseBody
	public Msg regist(User user,HttpSession session) throws ParseException{
		try {
			user.setCreatetime(new Date());
			user.setStatus(1);
			this.userService.regist(user);
			
			return Msg.success();
		}
		catch (SessionNotFoundException e) {
			// TODO: handle exception
			return Msg.fail();
		}	
	}
	/**
	 *@author 邓志彬
	 *Description:修改密码
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@RequestMapping("/updatePassword")
	@ResponseBody
	public Msg updatePassword(HttpServletRequest request,
			@RequestParam("password") String password,
			@RequestParam("newpassword") String newpassword,
			HttpSession session){
		if(StringUtils.isEmpty(newpassword)||StringUtils.isEmpty(password)) {
			return new Msg().fail().add("msg", "参数不能为空");
		}
		
		User u = (User) request.getSession().getAttribute("user");
		String username = u.getUsername();
		if(userService.updatePassword(username,newpassword)) {
			request.getSession().removeAttribute("username");
			request.getSession().removeAttribute("user");
		}
		return Msg.success();
	}
	/**
	 *@author 邓志彬
	 *Description:退出登录
	 *@param str
	 *@return
	 *@throws ParseException
	 */
	@SuppressWarnings("unused")
	@RequestMapping("/logout")
    public String getLogout(HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	if(session!=null) {
    		session.invalidate();
    	}
    	return "redirect:/index";
    }
	@ResponseBody
	@RequestMapping("/updata")
	public Msg userUpdata(@RequestParam("username")String username,
			@RequestParam("college")String college,HttpSession session) {
		Integer id=(Integer) session.getAttribute("userId");
		User user=new User();
		user.setUserId(id);
		user.setUsername(username);
		user.setCollege(college);
		Boolean flage=userService.updateUser(user); 
		if(flage) {
			return Msg.success().add("msg", "信息修改成功");
			} 
		else { 
			return Msg.fail().add("msg","信息修改失败");
			}
	}
}
