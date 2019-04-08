<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${worker!=null && worker.worker_id!=0?'编辑':'添加'}${worker_typeDesc}信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript">
$(document).ready(function(){
	 var worker_sex = "${worker.worker_sex}";
	 if(worker_sex!=''){
		 $("#sex"+worker_sex).attr('checked','checked');
	 }else{
		 $("#sex1").attr('checked','checked');
	 }
	 
	 var num = /^\d+$/;
	 $("#addBtn").bind('click',function(){
		if($("#worker_no").val()==''){
			alert('编号不能为空');
			return;
		}
		if($("#worker_name").val()==''){
			alert('姓名不能为空');
			return;
		}
		$("#worker_id").val(0);
		$("#info").attr('action','Admin_addWorker.action').submit();
		 
	 });
	 
	 $("#editBtn").bind('click',function(){
		if($("#worker_no").val()==''){
			alert('编号不能为空');
			return;
		}
		if($("#worker_name").val()==''){
			alert('姓名不能为空');
			return;
		}
		$("#info").attr('action','Admin_saveWorker.action').submit();
			 
	});
	
});
</script>
<style type="text/css">
</style>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">${worker_typeDesc}管理&gt;&gt;${worker!=null && worker.worker_id!=0?'编辑':'添加'}${worker_typeDesc}</span>
</div>
<form id="info" name="info" action="Admin_addWorker.action" method="post">   
<input type="hidden"  id="worker_id" name="worker_id" value="${worker.worker_id}" /> 
<input type="hidden" name="worker_type" id="worker_type" value="${worker_type}"/>
<table width="800" align="center" cellpadding="0" cellspacing="0" style="margin-top:10px;margin-bottom:10px;">
  <tr> 
     <td height="24">
       <Table border="0" cellspacing="0" cellpadding="0" align="center" width="100%"> 
            <TR>
              <TD height="24" class="edittitleleft">&nbsp;</TD>
              <TD class="edittitle">${worker!=null && worker.worker_id!=0?'编辑':'添加'}${worker_typeDesc}</TD>
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
          <td width="150" align="right" style="padding-right:5px"><font color="red">*</font> 编号：</td>
          <td width="*" >
          	<input type="text" name="worker_no" id="worker_no" value="${worker.worker_no }"/>
          </td>
        </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 姓名：</td>
          <td>
          	<input type="text" name="worker_name" id="worker_name" value="${worker.worker_name }"/>
          </td>
         </tr> 
        <tr>
          <td align="right" style="padding-right:5px"><font color="red">*</font> 性别：</td>
          <td>
            <input type="radio" id="sex1" name="worker_sex" value="1"/>男&nbsp;&nbsp;
            <input type="radio" id="sex2" name="worker_sex" value="2"/>女
          </td>
        </tr>  
        <tr>
          <td align="right" style="padding-right:5px">出生年月：</td>
          <td>
            <input type="text"  name="worker_birth" id="worker_birth" value="${worker.worker_birth}"
          			 onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"/>
          </td>
        </tr> 
        <tr>
         <td align="right" style="padding-right:5px">工作内容：</td>
          <td>
            <textarea  name="worker_content" id="worker_content" style="width:300px;height:80px">${worker.worker_content}</textarea>
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
          	<c:if test="${worker!=null && worker.worker_id!=0}">
          	<input type="button" id="editBtn" Class="btnstyle" value="编 辑"/> 
          	</c:if>
          	<c:if test="${worker==null || worker.worker_id==0}">
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
</body>
</html>