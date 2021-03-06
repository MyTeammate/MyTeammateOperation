<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div id="content" style="width:600px;height:auto;padding-left:25px;">
	<c:choose>
		<c:when test="${updateInspection == null }">
			<p>巡检任务管理>>巡检任务制定与分配>>制定巡检任务</p>
		</c:when>
		<c:otherwise>
			<p>巡检任务管理>>巡检任务制定与分配>>修改巡检任务</p>
		</c:otherwise>
	</c:choose>
		<form id="inspection_save_form">
			<input type="hidden" name="inspectionId" value="${inspection.id }"/>
			<table>
				<tr>
					<td class="leftText">任务编码：</td>
					<td><input type="text" id="taskCoding" name="coding" value="${inspection.coding }"/></td>
				</tr>
				<tr>
					<td class="leftText">任务名称：</td>
					<td><input type="text" id="taskName" name="name" value="${inspection.name }"/></td>
				</tr>
				<tr>
					<td class="leftText">巡检线路：</td>
					<td><input type="text" id="inspectionThread" name="thread" value="${inspection.thread }"/></td>
				</tr>
				<tr>
					<td class="leftText">起始杆号：</td>
					<td><input type="text" id="startTowerCoding" readonly="readonly" value="${inspection.startTower }"/></td>
				</tr>
				<tr>
					<td class="leftText">终止杆号：</td>
					<td><input type="text" id="endTowerCoding" readonly="readonly" value="${inspection.endTower }"/></td>
				</tr>
				<c:if test="${updateInspection == null }">
					<tr>
						<td class="leftText">巡检员：</td>
						<td><textarea cols="20" rows="3" maxlength="250" readonly="readonly" name="inspectionStaff" placeholder="点击右边头像选择巡检员"/></textarea><a href="#" onclick="show()" class="easyui-linkbutton" iconCls="icon-user"></a></td>
					</tr>
				</c:if>
				<tr>
					<td class="leftText">下发人：</td>
					<td><input type="text" value="${user.name}" readonly="readonly" style="border:none;color:#A1A1A1;"/></td>
				</tr>
				<tr>
					<td class="leftText">下发日期：</td>
					<td><input type="text" readonly="readonly" style="border:none;color:#A1A1A1;" id="createInspectionDate" name="createDate" value="${inspection.createDate }"/></td>
				</tr>
				<tr>
					<td class="leftText">预计日期：</td>
					<td><input class="easyui-datebox" style="width:120px;" name="predictDate" value="${inspection.predictDate }"></td>
				</tr>
				<tr>
					<td  class="leftText">备注：</td>
					<td>
						<textarea cols="25" rows="6" maxlength="250" name="remark">${inspection.remark }</textarea>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td class="leftText">
					<c:choose>
						<c:when test="${updateInspection == null }">
							<input type="button" value="保存" class="bbb" onclick='javascript:saveInspection()'/>
						</c:when>
						<c:otherwise>
							<input type="button" value="保存" class="bbb" onclick='javascript:updateInspectionTask()'/>
						</c:otherwise>
					</c:choose>
					</td>
					<td style="padding-left:75px;"><input type="button" value="返回" onclick='javascript:backInspection()' class="bbb"/></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="bigdiv" style="background-color:#F7F7F7; border: 1px solid #ccc;width: 305px;height: 195px;position: relative;bottom:350px;left: 440px;display: none;">
	<p style="margin: 0px 0px 0px 0px;font-size: 12px;"><strong>选择巡检员</strong></p>
	<p style="margin: 10px 0px 0px 0px;font-size: 12px;">&nbsp;&nbsp;待选巡检员</p>
	
   	<select id="fb_list" multiple="multiple" style="text-align: center; height:120px;width:128px"></select> 
	<p style="margin: 0px 0px 0px 0px;font-size: 12px;position: relative;top: -135px;left: 180px;">&nbsp;&nbsp;已选巡检员</p>
   <div style="position: relative;left: 170px;bottom: 135px;">
   <select id="select_list" multiple="multiple"
	style="text-align: center; height:120px;width:128px"></select>
   </div>
	<br/>
	<p style="position: relative;bottom: 155px;">
	<a href="#" onclick="hid()" class="easyui-linkbutton" style="float: right;">返回</a>
	<a href="javascript:onclick=save_staffs()" class="easyui-linkbutton" style="float: right;">保存</a>
	</p>
	<p style="position: relative;bottom: 250px;left: 127px;">
	<a href="#" id="add" class="easyui-linkbutton" style="width: 40px;">+</a></p>
	<p style="position: relative;bottom: 245px;left: 127px;">
	<a href="#" id="delete" class="easyui-linkbutton"style="width: 40px;">&nbsp;-&nbsp;</a></p>
	</div>
	<style type="text/css">
		#content table{
			margin-top:25px;
			margin-left:45px;
			width:500px;
			height:auto;
			line-height: 30px;
			font-size:14px;
		}
		.leftText{
			font-weight: bold;
			text-align: right;
		}
		.bbb{
			width:60px;
			height:25px;
			border:none;
			background-image:url("image/inspection_button.png");
			background-color: #6495ED;
			color:#FFFFFF;
			font-weight: 700;
		}
	</style>
	<script type="text/javascript" src="js/makeInspection.js"></script>
</body>
</html>