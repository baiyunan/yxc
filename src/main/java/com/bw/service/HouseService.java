package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.dto.House;
import com.bw.dto.YuYue;

public interface HouseService {

	List<Map<String, Object>> getList(String mohu);

	House getData(String id);

	void update(YuYue yuYue);

	List<Map<String, Object>> getYuYue();

}
