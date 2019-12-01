package com.pxxy.bigData.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.AgeVo;
import com.pxxy.bigData.bean.GenderVo;
import com.pxxy.bigData.bean.OnlineVo;
import com.pxxy.bigData.bean.PopularVo;
import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.bean.TeacherCount;
import com.pxxy.bigData.bean.User;
import com.pxxy.bigData.serviceImpl.CourseServiceImpl;
import com.pxxy.bigData.serviceImpl.FlowmeterService;
import com.pxxy.bigData.serviceImpl.GenderVoService;
import com.pxxy.bigData.serviceImpl.PopularVoService;
import com.pxxy.bigData.serviceImpl.ProvinceServiceImpl;
import com.pxxy.bigData.serviceImpl.TeacherCountServiceImpl;
import com.pxxy.bigData.serviceImpl.UserServcieImpl;
import com.pxxy.bigData.utils.FileWithExcelUtil;

@Controller
public class ExcelExportController {

	@Autowired
	FlowmeterService flowmeterService;
	@Autowired
	UserServcieImpl userServiceImpl;
	@Autowired
	ProvinceServiceImpl provinceServiceImpl;
	@Autowired
	GenderVoService genderVoService;
	@Autowired
	CourseServiceImpl courseServiceImpl;
	@Autowired
	TeacherCountServiceImpl teacherCountServiceImpl;
	@Autowired
	PopularVoService popularVoService;

	/**
	 * 用户信息excel 通过
	 * 
	 * @param response
	 * @throws IOException
	 */
	/*
	 * @RequestMapping(value = "exportStuInfoExcel")
	 * 
	 * @ResponseBody public void exportStuInfoExcel(HttpServletResponse response)
	 * throws IOException{
	 * 
	 * List<User> userList = userServiceImpl.getAlluser(); for (User user :
	 * userList) { System.out.println(user); } //指定列表标题和工作表名称 Workbook workbook =
	 * ExcelExportUtil.exportExcel(new ExportParams(),User.class,userList);
	 * FileWithExcelUtil.exportExcel(userList, "测试名", "啥玩意", User.class, "学号.xls",
	 * response); response.setHeader("content-Type","application/vnd.ms-excel");
	 * response.setHeader("Content-Disposition","attachment;filename="+System.
	 * currentTimeMillis()+".xls"); response.setCharacterEncoding("UTF-8");
	 * workbook.write(response.getOutputStream()); }
	 */
	/**
	 * 网站省份分布 通过 测试
	 * 
	 * @param response
	 * @throws IOException
	 */
	/*
	 * @RequestMapping(value = "exportProvinceInfoExcel")
	 * 
	 * @ResponseBody public void exportProvinceInfoExcel(HttpServletResponse
	 * response) throws IOException {
	 * 
	 * List<Province> userList = provinceServiceImpl.selectAll();
	 * System.out.println(userList); String str = "省份"; // 指定列表标题和工作表名称
	 * FileWithExcelUtil.exportExcel(userList, "测试名", "啥玩意", Province.class,
	 * "学号.xls", response); response.setHeader("content-Type",
	 * "application/vnd.ms-excel"); response.setHeader("Content-Disposition",
	 * "attachment;filename=" + str + ".xls");
	 * response.setCharacterEncoding("UTF-8"); }
	 */

	@RequestMapping(value = "exportHourOnlineInfoExcels")
	@ResponseBody
	public void exportHourOnlineInfoExcels(HttpServletResponse response) throws IOException {

		List<OnlineVo> hourList = flowmeterService.selectOnlineByHour();
		System.out.println(hourList);
		// 指定列表标题和工作表名称
		FileWithExcelUtil.exportExcel(hourList, "小时流量表", "啥玩意", OnlineVo.class, "flowmeter.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * 教师排行榜excel导出 通过
	 * 
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "exportTeacherRanksInfoExcels")
	@ResponseBody
	public void exportTeacherRanksInfoExcels(HttpServletResponse response) throws IOException {

		List<TeacherCount> teacherList = teacherCountServiceImpl.selectTeacherByCount();

		FileWithExcelUtil.exportExcel(teacherList, "教师排行表", "教师", TeacherCount.class, "taacher.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * 课程用户比对 性别比对 通过
	 * 
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "exportGenderInfoExcels")
	@ResponseBody
	public void exportGenderInfoExcels(HttpServletResponse response) throws IOException {

		List<GenderVo> genderList = courseServiceImpl.getCourseVoGender();

		FileWithExcelUtil.exportExcel(genderList, "课程用户比对表", "性别", GenderVo.class, "gender.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * 网站用户区域分布excel导出 通过
	 * 
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "exportAreaInfoExcels")
	@ResponseBody
	public void exportAreaInfoExcels(HttpServletResponse response) throws IOException {

		List<Province> provinceList = userServiceImpl.getProvince();
		FileWithExcelUtil.exportExcel(provinceList, "用户区域表", "省份", Province.class, "Province.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * 网站年龄分布excel 通过
	 * 
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "exporAgeInfoExcels")
	@ResponseBody
	public void exportAgeInfoExcels(HttpServletResponse response) throws IOException {

		List<AgeVo> ageList = userServiceImpl.getAgedistribution();
		FileWithExcelUtil.exportExcel(ageList, "网站用户年龄表", "年龄", AgeVo.class, "AgeVo.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

	/**
	 * 课程排行榜
	 * 
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "exporCourseInfoExcels")
	@ResponseBody
	public void exporCourseInfoExcels(HttpServletResponse response) throws IOException {

		List<PopularVo> popularList = popularVoService.selectPopular();
		FileWithExcelUtil.exportExcel(popularList, "课程排行表", "课程", PopularVo.class, "course.xls", response);
		response.setHeader("content-Type", "application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachment;filename=" + System.currentTimeMillis() + ".xls");
		response.setCharacterEncoding("UTF-8");
	}

}
