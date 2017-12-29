package com.znsd.circuit.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.znsd.circuit.model.Inspection;
import com.znsd.circuit.model.Systemparam;

@MapperScan
public interface InspectionDao {
	
	/**获取  巡检任务巡检状态
	 * @return
	 */
	public List<Systemparam> getInspectionParam();
	
	/**得到分页的总条数
	 * @return
	 */
	public int getInspectionPageCount();
	
	/**分页查询
	 * @param map
	 * @return
	 */
	public List<Inspection> getInspectionPage(Map<String,Object> map);
}