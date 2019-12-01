package com.pxxy.bigData;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.pxxy.bigData.bean.Province;
import com.pxxy.bigData.mapper.ProvinceMapper;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProvinceMapperTest {
	@Autowired
	ProvinceMapper provinceMapper;
	@Test
	public void testSelectAll() {
		List<Province> provinces=provinceMapper.selectAll();
		for (Province province : provinces) {
			System.out.println(province.getProvinceName());
		}
	}

}
