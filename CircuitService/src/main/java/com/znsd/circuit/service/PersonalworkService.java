package com.znsd.circuit.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.znsd.circuit.model.Flawconfirm;
import com.znsd.circuit.model.Personalwork;
import com.znsd.circuit.model.Threads;

public interface PersonalworkService {

	
	/**
	 * 到达一条代办任务
	 * @param personalwork
	 */
	public void  arriveWork(Personalwork personalwork);
	
	
	
	/**
	 * 查询出某个用户代办任务
	 * @param personalwork
	 * @return
	 */
	public Map<String,Object> selectMyWork(int page,int rows,Personalwork personalwork);
	
	
	/**
	 * 查询一个巡检任务下的每个杆塔的缺陷信息
	 * 
	 * @param taskId
	 * @return
	 */
	public List<Flawconfirm> getTaskTowerFlawInfo(int taskId);
	
	
	
	/**
	 * 根据任务ID获取线路
	 * @param taskId
	 * @return
	 */
	public Threads getThreadBytaskId(int taskId);
}
