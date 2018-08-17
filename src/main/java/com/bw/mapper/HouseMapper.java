package com.bw.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bw.dto.House;
import com.bw.dto.YuYue;

@Mapper
public interface HouseMapper {

	@Select("select h.*,y.bz from  t_house h LEFT JOIN t_yuyue y on h.yid=y.yid where h.name like concat('%',#{mohu},'%')")
	List<Map<String, Object>> getList(String mohu);

	@Select("select * yuyue t_house where id=#{id}")
	House getData(String id);

	@Update("update t_yuyue set name=#{name},date=#{date},adress=#{adress},phone=#{phone},bz=#{bz} where id=#{id}")
	void update(YuYue yuYue);

	@Select("select * from t_yuyue")
	List<Map<String, Object>> getYuYue();

	

}
