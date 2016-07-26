package com.bocom.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bocom.entity.TCX;


public interface TCXMapper {
	 List<TCX> selectAll(@Param("tableName")String name,@Param("str")String str);
	void dropTable(@Param("tableName")String tableName);
    int deleteByPrimaryKey(@Param("f_C_X_id")String[] f_C_X_id,@Param("str")String str);
   int createTable(@Param("str")String str);
  //  int insert(TCX record);
    
    int insertSelective(@Param("tcx")TCX tcx,@Param("str")String str);

    List<TCX> selectByName(@Param("str")String name1,@Param("f_C_X_jc")String name2);

    int updateByPrimaryKeySelective(TCX record);

    int updateByPrimaryKey(TCX record);
    
    int updateByFbzt();
}