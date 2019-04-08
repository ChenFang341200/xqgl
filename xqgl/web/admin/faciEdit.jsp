<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${faci!=null && faci.faci_id!=0?'编辑':'添加'}公共设施信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
	 var num = /^\d+(\.\d+)?$/;
	 var num2 = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#faci_no").val()==''){
			alert('设施编号不能为空');
			return;
		}
		if($("#faci_name").val()==''){
			alert('设施名称不能为空');
			return;
		}
		$("#faci_id").val(0);
		$("#info").attr('action','Admin_addFaci.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#faci_no").val()==''){
			alert('设施编号不能为空');
			return;
		}
		if($("#faci_name").val()==''){
			alert('设施名称不能为空');
			return;
		}
		$("#info").attr('action','Admin_saveFaci.action').submit();
			 
	});
	
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">公共设施管理&gt;&gt;${faci!=null && faci.faci_id!=0?'编辑':'添加'}编辑公共设施</span>
</div>
<form id="info" name="info" action="Admin_addFaci.action" method="post">   
<input type="hidden"  id="faci_id" name="faci_id" value="${faci.faci_id}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${faci!=null && faci.faci_id!=0?'编辑':'添加'}公共设施</TD>
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
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 设施编号：</td>
          <td width="65%">
          	<input type="text" name="faci_no" id="faci_no" value="${faci.faci_no}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 设施名称：</td>
          <td>
          	<input type="text" name="faci_name" id="faci_name" value="${faci.faci_name}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">价值：</td>
          <td>
          	<input type="text" name="faci_price" id="faci_price" value="${faci.faci_price}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">位置用途：</td>
          <td>
          	<input type="text" name="faci_loc" id="faci_loc" value="${faci.faci_loc}" style="width:300px"/>
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
          	<c:if test="${faci!=null && faci.faci_id!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${faci==null || faci.faci_id==0}">
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