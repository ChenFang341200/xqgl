<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车位信息</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
var tempClassName="";
function tr_mouseover(obj) 
{ 
	tempClassName=obj.className;
	obj.className="list_mouseover";
}
function tr_mouseout(obj)      
{ 
	obj.className=tempClassName;
}      
function CheckAll(obj) 
{
	var checks=document.getElementsByName("chkid");
    for (var i=0;i<checks.length;i++)
	{
	    var e = checks[i];
	    e.checked = obj.checked;
	}
    
}


function serch()
{
   document.info.action="Admin_listCars.action";
   document.info.submit();
}
function del()
{
	var checks=document.getElementsByName("chkid");
    var ids="";
	for (var i=0;i<checks.length;i++)
    {
        var e = checks[i];
		if(e.checked==true)
		{
		  if(ids=="")
		  {
		    ids=ids+e.value;
		  }
		  else
		  {
		    ids=ids+","+e.value;
		  }
		}
    }
    if(ids=="")
    {
       alert("请至少选择一个要删除的车位！");
       return false;
    }
    if(confirm('确认删除吗!?'))
    {
       document.info.action="Admin_delCars.action?ids="+ids;
       document.info.submit();
    }
    
}
function GoPage()
{
  var pagenum=document.getElementById("goPage").value;
  var patten=/^\d+$/;
  if(!patten.exec(pagenum))
  {
    alert("页码必须为大于0的数字");
    return false;
  }
  document.getElementById("pageNo").value=pagenum;
  document.info.action="Admin_listCars.action";
  document.info.submit();
}
function ChangePage(pagenum)
{
  document.getElementById("pageNo").value=pagenum;
  document.info.action="Admin_listCars.action";
  document.info.submit();
}
</script>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">车位管理&gt;&gt;车位查询</span>
</div>
<form name="info" id="info" action="Admin_listCars.action" method="post">
<input type="hidden" name="pageNo" id="pageNo" value="${paperUtil.pageNo}"/>
<table width="95%" align="center" cellpadding="0" cellspacing="0">
  <tr><td colspan="2" height="10px">&nbsp;</td></tr>
  <tr>
    <td width="">车位列表</td>
    <td width="" align="right">
            车位号：
      <input type="text" id="car_no" name="car_no" value="${paramsCar.car_no}" class="inputstyle" style="width:100px"/>&nbsp;
            状态：
      <select id="car_flag" name="car_flag" class="selectstyle" Style="width:100px;">
       		<option value="">请选择</option>
       		<c:forTokens items="已售,已租,闲置" delims="," var="car_flag">
       			<option ${car_flag==paramsCar.car_flag?'selected':''} value="${car_flag}">${car_flag}</option>
       		</c:forTokens>
       </select>&nbsp;
      <input type="button" value="搜索" onclick="serch();" class="btnstyle"/>&nbsp;
      <c:if test="${admin.user_type!=1}">
      <input type="button" value="删除" onclick="del();" class="btnstyle"/>
      </c:if>
    </td>
  </tr>
  <tr><td colspan="2" height="2px"></td></tr>  
</table>
<table width="95%" align="center" class="table_list" cellpadding="0" cellspacing="0">
   <tr class="listtitle">
     <c:if test="${admin.user_type!=1}">
     <td width="40" align="center"><input type="checkbox" onclick="CheckAll(this);" style="vertical-align:text-bottom;" title="全选/取消全选"/></td>
     </c:if>
     <td width="40" align="center">序号</td>
     <td width="" align="center">车位号</td>
     <td width="" align="center">面积</td>
     <td width="" align="center">位置</td>
     <td width="" align="center">状态</td>
     <c:if test="${admin.user_type!=1}">
     <td width="" align="center">操作</td>
     </c:if>
   </tr>
   <c:if test="${cars!=null &&  fn:length(cars)>0}">
   <c:forEach items="${cars}" var="car" varStatus="status">
   <tr class="list0" onmouseover="tr_mouseover(this)" onmouseout="tr_mouseout(this)"> 
     <c:if test="${admin.user_type!=1}">
     <td width="" align="center"><input type="checkbox" name="chkid" value="${car.car_id}" cssStyle="vertical-align:text-bottom;"/></td>
     </c:if>
     <td width="" align="center">${status.index+1+paramsCar.start}</td>
     <td width="" align="center">${car.car_no}</td>
     <td width="" align="center">${car.car_area}&nbsp;</td>
     <td width="" align="center">${car.car_loc}&nbsp;</td>
     <td width="" align="center">${car.car_flag}&nbsp;</td>
     <c:if test="${admin.user_type!=1}">
     <td width="" align="center">
       <a href="Admin_editCar.action?car_id=${car.car_id}">编辑</a>
     </td>
     </c:if>
   </tr> 
  </c:forEach>
  </c:if>
  <c:if test="${cars==null ||  fn:length(cars)==0}">
   <tr>
     <td height="60" colspan="13" align="center"><b>&lt;不存在车位信息&gt;</b></td>
   </tr>
   </c:if>
   
</table>
<jsp:include page="page.jsp"></jsp:include>
</form> 
</body>
</html>