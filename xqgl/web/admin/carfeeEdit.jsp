<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${carfee!=null && carfee.carfee_id!=0?'编辑':'添加'}车位缴费信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
	 var num = /^\d+(\.\d+)?$/;
	 var num2 = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#user_id").val()=='0'){
			alert('业主姓名不能为空');
			return;
		}
		if($("#carno").val()==''){
			alert('车位号不能为空');
			return;
		}
		if(!num.exec($("#carfee_price").val())){
			alert('车位费标准必须为数字');
			return;
		}
		if($("#carfee_start").val()==''){
			alert('缴费开始月份不能为空');
			return;
		}
		if($("#carfee_end").val()==''){
			alert('缴费结束月份不能为空');
			return;
		}
		if(!num.exec($("#carfee_money").val())){
			alert('总金额必须为数字');
			return;
		}
		$("#carfee_id").val(0);
		$("#info").attr('action','Admin_addCarfee.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#user_id").val()=='0'){
			alert('业主姓名不能为空');
			return;
		}
		if($("#car_no").val()==''){
			alert('车位号不能为空');
			return;
		}
		if(!num.exec($("#carfee_price").val())){
			alert('车位费标准必须为数字');
			return;
		}
		if($("#carfee_start").val()==''){
			alert('缴费开始月份不能为空');
			return;
		}
		if($("#carfee_end").val()==''){
			alert('缴费结束月份不能为空');
			return;
		}
		if(!num.exec($("#carfee_money").val())){
			alert('总金额必须为数字');
			return;
		}
		$("#info").attr('action','Admin_saveCarfee.action').submit();
			 
	});
	
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">车位缴费管理&gt;&gt;${carfee!=null && carfee.carfee_id!=0?'编辑':'添加'}车位缴费</span>
</div>
<form id="info" name="info" action="Admin_addCarfee.action" method="post">   
<input type="hidden"  id="carfee_id" name="carfee_id" value="${carfee.carfee_id}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${carfee!=null && carfee.carfee_id!=0?'编辑':'添加'}车位缴费</TD>
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
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 业主姓名：</td>
          <td width="65%">
          	<select id="user_id" name="user_id" Style="width:150px;">
          		<option value="0">请选择</option>
          		<c:forEach items="${users}" var="user">
          			<option ${carfee.user_id==user.user_id?'selected':''} value="${user.user_id}">${user.real_name}</option>
          		</c:forEach>
	        </select>
          </td>
        </tr> 
         <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 车位号：</td>
          <td width="65%">
          	<input type="text" name="carno" id="carno" value="${carfee.carno}"/>
          </td>
        </tr> 
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 车位费标准：</td>
          <td width="65%">
          	<input type="text" name="carfee_price" id="carfee_price" value="${carfee.carfee_price}"/> 元/㎡
          </td>
        </tr> 
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 缴费开始月份：</td>
          <td width="65%">
          	<input type="text" name="carfee_start" id="carfee_start" value="${carfee.carfee_start}"
          			 onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM'})"/>
          </td>
        </tr> 
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 缴费结束月份：</td>
          <td width="65%">
          	<input type="text" name="carfee_end" id="carfee_end" value="${carfee.carfee_end}"
          			 onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM'})"/>
          </td>
        </tr> 
        <tr>
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 总金额：</td>
          <td width="65%">
          	<input type="text" name="carfee_money" id="carfee_money" value="${carfee.carfee_money}"/>
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
          	<c:if test="${carfee!=null && carfee.carfee_id!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${carfee==null || carfee.carfee_id==0}">
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