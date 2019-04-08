<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${car!=null && car.car_id!=0?'编辑':'添加'}车位信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="editor/kindeditor.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	
	 var num = /^\d+(\.\d+)?$/;
	 var num2 = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#car_no").val()==''){
			alert('车位号不能为空');
			return;
		}
		$("#car_id").val(0);
		$("#info").attr('action','Admin_addCar.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#car_no").val()==''){
			alert('车位号不能为空');
			return;
		}
		$("#info").attr('action','Admin_saveCar.action').submit();
			 
	});
	
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">车位管理&gt;&gt;${car!=null && car.car_id!=0?'编辑':'添加'}编辑车位</span>
</div>
<form id="info" name="info" action="Admin_addCar.action" method="post">   
<input type="hidden"  id="car_id" name="car_id" value="${car.car_id}" /> 
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${car!=null && car.car_id!=0?'编辑':'添加'}车位</TD>
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
          <td width="35%" align="right" style="padding-right:5px"><font color="red">*</font> 车位号：</td>
          <td width="65%">
          	<input type="text" name="car_no" id="car_no" value="${car.car_no}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">面积：</td>
          <td>
          	<input type="text" name="car_area" id="car_area" value="${car.car_area}"/>㎡
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px">位置：</td>
          <td>
          	<input type="text" name="car_loc" id="car_loc" value="${car.car_loc}"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 车位状态：</td>
          <td>
          	<select id="car_flag" name="car_flag" Style="width:155px;">
	       		<c:forTokens items="已售,已租,闲置" delims="," var="car_flag">
	       			<option ${car_flag==car.car_flag?'selected':''} value="${car_flag}">${car_flag}</option>
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
          	<c:if test="${car!=null && car.car_id!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${car==null || car.car_id==0}">
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