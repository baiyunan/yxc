package com.bw.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.dto.House;
import com.bw.dto.YuYue;
import com.bw.mapper.HouseMapper;
import com.bw.service.HouseService;

@Service
public class HouseServiceImpl implements HouseService {

	@Autowired
	private HouseMapper houseMapper;

	@Override
	public List<Map<String, Object>> getList(String mohu) {

		return houseMapper.getList(mohu);
	}

	@Override
	public House getData(String id) {

		return houseMapper.getData(id);
	}

	@Override
	public void update(YuYue yuYue) {

		houseMapper.update(yuYue);
	}

	@Override
	public List<Map<String, Object>> getYuYue() {

		return houseMapper.getYuYue();
	}
	
	

}
