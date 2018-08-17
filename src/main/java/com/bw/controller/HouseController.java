package com.bw.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.dto.House;
import com.bw.dto.YuYue;
import com.bw.service.HouseService;

@Controller
public class HouseController {

	@Autowired
	private HouseService houseService;
	
	@RequestMapping("list")
	public List<Map<String, Object>> list(Model model,String mohu) {
		mohu=mohu==null?"":mohu;
		List<Map<String, Object>> list = houseService.getList(mohu);
		model.addAttribute("list", list);
		model.addAttribute("mohu", mohu);
		return list;
	}
	@RequestMapping("YuYue")
	public String YuYue() {
		return "yuyue";
	}
	@RequestMapping("getData")
	@ResponseBody
	public House getData(String id) {
		House house = houseService.getData(id);
		return house;
	}
	@RequestMapping("update")
	@ResponseBody
	public int update(YuYue yuYue) {
		houseService.update(yuYue);
		return 1;
	}
	@RequestMapping("chakan")
	public List<Map<String, Object>> list(Model model) {
		List<Map<String, Object>> clist = houseService.getYuYue();
		model.addAttribute("clist", clist);
		return clist;
	}

}
