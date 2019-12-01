package com.pxxy.bigData.bean;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class Province {
    private Integer provinceId;

    private String provinceCode;

    private String provinceName;
    
    public Integer getCnt() {
		return cnt;
	}

	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	public String getProvince_name() {
		return province_name;
	}

	public void setProvince_name(String province_name) {
		this.province_name = province_name;
	}
	
	@Excel(name="省份名")
	private String province_name;
	
	@Excel(name="点击数")
	private Integer cnt;
    
    

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode == null ? null : provinceCode.trim();
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }

	@Override
	public String toString() {
		return "Province [provinceId=" + provinceId + ", provinceCode=" + provinceCode + ", provinceName="
				+ provinceName + ", cnt=" + cnt + ", province_name=" + province_name + "]";
	}

    
}