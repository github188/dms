package com.bocom.service;

import java.io.IOException;

import com.bocom.entity.TCX;
import com.github.pagehelper.PageInfo;



public interface SjbmxService {
	
	public PageInfo<TCX> querySjbmxList(int pageNumber,String tableName)throws IOException;
	
	public void deleteTable(String[] tableName);
	public int deleteById(String[] id,String tableName);
	public int addSjbmx(TCX tcmSjbm,String tableName);
	
	public int updateSjbmx(TCX tcmSjbm);
	public void createSjbmx(String str);
	
	public PageInfo<TCX>  querySjbmxByJc(int pageNumber,String tableName,String str);
}
