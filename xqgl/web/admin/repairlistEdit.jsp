<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${repairlist!=null && repairlist.repairlistid!=0?'编辑':'添加'}物业报修信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
	 var num = /^\d+(\.\d+)?$/;
	 var num2 = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#room_id").val()=='0'){
			alert('房屋号不能为空');
			return;
		}
		if($("#repaircontent").val()==''){
			alert('报修内容不能为空');
			return;
		}
		$("#repairlistid").val(0);
		$("#info").attr('action','Admin_addRepairlist.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#room_id").val()=='0'){
			alert('房屋号不能为空');
			return;
		}
		if($("#repaircontent").val()==''){
			alert('报修内容不能为空');
			return;
		}
		$("#info").attr('action','Admin_saveRepairlist.action').submit();
			 
	});
	 
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">物业报修管理&gt;&gt;${repairlist!=null && repairlist.repairlistid!=0?'编辑':'添加'}物业报修</span>
</div>
<form id="info" name="info" action="Admin_addRepairlist.action" method="post">   
<input type="hidden"  id="repairlistid" name="repairlistid" value="${repairlist.repairlistid}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${repairlist!=null && repairlist.repairlistid!=0?'编辑':'添加'}物业报修</TD>
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
          	<select id="room_id" name="room_id" Style="width:150px;">
          		<option value="0">请选择</option>
          		<c:forEach items="${rooms}" var="room">
          			<option ${repairlist.room_id==room.room_id?'selected':''} value="${room.room_id}">${room.room_no}</option>
          		</c:forEach>
	        </select>
          </td>
        </tr> 
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 报修内容：</td>
          <td width="65%">
          	<textarea style="width:300px;height:100px" name="repaircontent" id="repaircontent">${repairlist.repaircontent}</textarea>
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
          	<c:if test="${repairlist!=null && repairlist.repairlistid!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${repairlist==null || repairlist.repairlistid==0}">
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