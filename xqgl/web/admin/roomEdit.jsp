<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${room!=null && room.room_id!=0?'编辑':'添加'}房屋信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
	 var num = /^\d+(\.\d+)?$/;
	 var num2 = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#build_no").val()==''){
			alert('楼栋不能为空');
			return;
		}
		if($("#unit_no").val()==''){
			alert('单元不能为空');
			return;
		}
		if($("#door_no").val()==''){
			alert('门号不能为空');
			return;
		}
		$("#room_no").val($("#build_no").val()+"-"+$("#unit_no").val()+"-"+$("#door_no").val());
		$("#room_id").val(0);
		$("#info").attr('action','Admin_addRoom.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#build_no").val()==''){
			alert('楼栋不能为空');
			return;
		}
		if($("#unit_no").val()==''){
			alert('单元不能为空');
			return;
		}
		if($("#door_no").val()==''){
			alert('门号不能为空');
			return;
		}
		$("#room_no").val($("#build_no").val()+"-"+$("#unit_no").val()+"-"+$("#door_no").val());
		$("#info").attr('action','Admin_saveRoom.action').submit();
			 
	});
	
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">房屋管理&gt;&gt;${room!=null && room.room_id!=0?'编辑':'添加'}编辑房屋</span>
</div>
<form id="info" name="info" action="Admin_addRoom.action" method="post">   
<input type="hidden"  id="room_id" name="room_id" value="${room.room_id}" /> 
<input type="hidden"  id="room_no" name="room_no" value="${room.room_no}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${room!=null && room.room_id!=0?'编辑':'添加'}房屋</TD>
              <TD class="edittitleright">&nbsp;</TD>
            </TR>
        </TABLE>
     </td>
   </tr>
   <tr>
     <td height="1" bgcolor="#8f8f8f"></td>
   </tr>
   <tr>
     <td >
     <table width="100%" align="center" cellpadding="1" cellspacing="1" class="editbody">
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 房屋号：</td>
          <td width="65%">
          	${room.room_no}
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 楼栋：</td>
          <td>
          	<select id="build_no" name="build_no" Style="width:155px;">
	       		<c:forTokens items="1,2,3,4,5,6,7" delims="," var="build_no">
	       			<option ${build_no==room.build_no?'selected':''} value="${build_no}">${build_no}</option>
	       		</c:forTokens>
	       </select>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 单元：</td>
          <td>
          	<select id="unit_no" name="unit_no" Style="width:155px;">
	       		<c:forTokens items="1,2,3" delims="," var="unit_no">
	       			<option ${unit_no==room.unit_no?'selected':''} value="${unit_no}">${unit_no}</option>
	       		</c:forTokens>
	       </select>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 门号：</td>
          <td>
          	<input type="text" name="door_no" id="door_no" value="${room.door_no}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">户型：</td>
          <td>
          	<input type="text" name="room_model" id="room_model" value="${room.room_model}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">面积：</td>
          <td>
          	<input type="text" name="room_area" id="room_area" value="${room.room_area}"/>㎡
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 房屋状态：</td>
          <td>
          	<select id="room_flag" name="room_flag" Style="width:155px;">
	       		<c:forTokens items="已售,待售" delims="," var="room_flag">
	       			<option ${room_flag==room.room_flag?'selected':''} value="${room_flag}">${room_flag}</option>
	       		</c:forTokens>
	       </select>
          </td>
        </tr> 
     </table>
     </td>
   </tr>  
   <tr>
     <td>
       <table width="100%" align="center" cellpadding="0" cellspacing="0" class="editbody">
        <tr class="editbody">
          <td align="center" height="30">
          	<c:if test="${room!=null && room.room_id!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${room==null || room.room_id==0}">
          	<input type="button" id="addBtn" Class="btnstyle" value="添 加" />
          	</c:if>
            &nbsp;<label style="color:red">${tip}</label>
          </td>
        </tr>
      </table>
     </td>
   </tr>
</table>
</form>
<script>        
</script>
</body>
</html>