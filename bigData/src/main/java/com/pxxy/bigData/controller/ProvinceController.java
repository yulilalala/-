package com.pxxy.bigData.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.config.Msg;
import com.pxxy.bigData.service.ProvinceService;

@Controller
@RequestMapping("/province")
public class ProvinceController {
	@Autowired
	ProvinceService provinceService;
	/**
	 *@author 肖恒
	 *Description: 查询所有省份信息
	 *@param str
	 *Body = {"code":100,"msg":"处理成功!",
	 *"extend":{"province":[{"provinceId":1,"provinceCode":"110000","provinceName":"北京市"},
	 *{"provinceId":2,"provinceCode":"120000","provinceName":"天津市"},
	 *{"provinceId":3,"provinceCode":"130000","provinceName":"河北省"},
	 *{"provinceId":4,"provinceCode":"140000","provinceName":"山西省"}
	 *,{"provinceId":5,"provinceCode":"150000","provinceName":"内蒙古自治区"},
    	Forwarded URL = null
	 *@return
	 *@throws ParseException
	 */
	@ResponseBody
	@RequestMapping("/queryAll")
	public Msg queryAll() {
		List<Province> provinceList=provinceService.selectAll();
		if(provinceList.size()>0) {
			return Msg.success().add("province", provinceList);
		}
		else {
			return Msg.fail().add("msg", "获取信息失败!");
		}
		
	}
}
