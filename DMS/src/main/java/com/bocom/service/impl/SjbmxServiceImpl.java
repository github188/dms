package com.bocom.service.impl;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;






import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Service;

import com.bocom.dao.TCXMapper;
import com.bocom.entity.TCX;
import com.bocom.service.SjbmxService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SjbmxServiceImpl implements SjbmxService {
	@Resource
	private TCXMapper tCXMapper ;
	@Resource
	private SqlSessionFactory sqlSessionFactory;

	public PageInfo<TCX> querySjbmxList(int pageNumber ,String tableName) throws IOException {
		//List<TCmSjbm> list = tCmSjbmMapper.selectAll();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TCXMapper countryMapper = sqlSession.getMapper(TCXMapper.class); 
		String str =tableName.substring(4);
		   
		List<TCX> list1 = tCXMapper.selectAll(tableName,str);
		
		
		
		PageHelper.startPage(pageNumber,10);  
		
		List<TCX> list = tCXMapper.selectAll(tableName,str);
	
		System.out.println(list1 + "             "+tableName.substring(4));
		PageInfo<TCX> page = new PageInfo(list);
		
		return page;
	}
	
	 /**
	  * 增加数据编码项
	  */
	public int addSjbmx(TCX tcmSjbm,String tableName) {
		
		
		return tCXMapper.insertSelective(tcmSjbm, tableName);
	}

	public int updateSjbmx(TCX tcmSjbm) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TCX querySjbmxById(Integer clueId) {
		// TODO Auto-generated method stub
		return null;
	}
	/**
	 * 创建数据编码项表
	 */
	public void createSjbmx(String str) {
		tCXMapper.createTable(str);
		
	}
	/**
	 * 删除数据编码项表
	 */
	public void deleteTable(String[] tableName) {
		for(String name:tableName){
			tCXMapper.dropTable(name);
		}
		
	}
	/**
	 * 删除数据编码项
	 */
	public int deleteById(String[] id,String tableName) {
		String str = tableName.substring(4);
		return tCXMapper.deleteByPrimaryKey(id,str);
	}

	/**
	 * 查询数据编码项
	 */
	public PageInfo<TCX> querySjbmxByJc(int pageNumber, String tableName,String str) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TCXMapper countryMapper = sqlSession.getMapper(TCXMapper.class); 
		String str1 =tableName.substring(4);
		   
		
		
		
		PageHelper.startPage(pageNumber,10);  
		
		List<TCX> list = tCXMapper.selectByName(str1, str);
	
		PageInfo<TCX> page = new PageInfo(list);
		return page;
	}

	



}
