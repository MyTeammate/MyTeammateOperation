package com.znsd.circuit.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.znsd.circuit.model.Inspection;
import com.znsd.circuit.model.Systemparam;
import com.znsd.circuit.model.Threads;
import com.znsd.circuit.model.User;
import com.znsd.circuit.util.Pager;

public interface InspectionService {
	/**获取启用状态下的巡检任务巡检状态
	 * @return
	 */
	public List<Systemparam> getSystemParam(String coding);
	
	/**获取启用状态下的所有线路
	 * @return
	 */
	public List<Threads> getAllThread();
	
	/**得到线路的所属杆塔
	 * @return
	 */
	public Threads getThreadTower(int id);
	
	/**获取启用状态下的所有巡检员
	 * @param coding
	 * @return
	 */
	public List<User> getInspectionStaff(String coding);
	
	/**通过tast表的主键得到inspection表的主键
	 * @param taskId
	 * @return
	 */
	public int getInspectionId(int taskId);
	
	/**得到分页的总条数
	 * @return
	 */
	public int getInspectionPageCount();
	
	/**分页查询
	 * @param map
	 * @return
	 */
	public Pager<Inspection> getInspectionPage(int pageIndex,int pageSize);
	
	/**制定巡检任务
	 * @param ins
	 * @param userId
	 */
	public boolean makeInspection(Inspection ins);
	
	/**分配巡检任务
	 * @param userId
	 * @param creater
	 * @return
	 */
	public boolean allotInspection(int taskId,int[] userId,int creater);
	
	/**修改巡检任务状态
	 * @param coding 数据字典编码
	 * @param taskId 任务主键
	 * @param state 要修改成的状态
	 */
	public void updateInspectionState(Map<String, Object> map);
	
	/**修改 最后一次修改时间，修改人
	 * @param taskId
	 * @param updatedBy
	 */
	public void updateInspectionDate(Map<String, Object> map);
}
