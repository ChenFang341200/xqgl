<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物业报修信息</title>
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
   document.info.action="Admin_listRepairlists.action";
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
       alert("请至少选择一个要删除的物业报修！");
       return false;
    }
    if(confirm('确认删除吗!?'))
    {
       document.info.action="Admin_delRepairlists.action?ids="+ids;
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
  document.info.action="Admin_listRepairlists.action";
  document.info.submit();
}
function ChangePage(pagenum)
{
  document.getElementById("pageNo").value=pagenum;
  document.info.action="Admin_listRepairlists.action";
  document.info.submit();
}
</script>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">物业报修管理&gt;&gt;物业报修查询</span>
</div>
<form name="info" id="info" action="Admin_listRepairlists.action" method="post">
<input type="hidden" name="pageNo" id="pageNo" value="${paperUtil.pageNo}"/>
<table width="95%" align="center" cellpadding="0" cellspacing="0">
  <tr><td colspan="2" height="10px">&nbsp;</td></tr>
  <tr>
    <td width="">物业报修列表</td>
    <td width="" align="right">
            业主：
      <input type="text" id="real_name" name="real_name" value="${paramsRepairlist.real_name}" class="inputstyle" style="width:100px"/>&nbsp;
            房屋号：
      <input type="text" id="room_no" name="room_no" value="${paramsRepairlist.room_no}" class="inputstyle" style="width:100px"/>&nbsp;
      <input type="button" value="搜索" onclick="serch();" class="btnstyle"/>&nbsp;
      <c:if test="${admin.user_type==2}">
      <input type="button" value="删除" onclick="del();" class="btnstyle"/>
      </c:if>
    </td>
  </tr>
  <tr><td colspan="2" height="2px"></td></tr>  
</table>
<table width="95%" align="center" class="table_list" cellpadding="0" cellspacing="0">
   <tr class="listtitle">
     <c:if test="${admin.user_type==2}">
     <td width="40" align="center"><input type="checkbox" onclick="CheckAll(this);" style="vertical-align:text-bottom;" title="全选/取消全选"/></td>
     </c:if>
     <td width="" align="center">房屋号</td>
     <td width="" align="center">业主</td>
     <td width="200" align="center">报修内容</td>
     <td width="" align="center">报修时间</td>
     <td width="150" align="center">完成情况</td>
     <td width="" align="center">报修花费</td>
     <c:if test="${admin.user_type==2}">
     <td width="" align="center">操作</td>
     </c:if>
   </tr>
   <c:if test="${repairlists!=null &&  fn:length(repairlists)>0}">
   <c:forEach items="${repairlists}" var="repairlist" varStatus="status">
   <tr class="list0" onmouseover="tr_mouseover(this)" onmouseout="tr_mouseout(this)">
     <c:if test="${admin.user_type==2}">
     <td width="" align="center"><input type="checkbox" name="chkid" value="${repairlist.repairlistid}" cssStyle="vertical-align:text-bottom;"/></td>
     </c:if>
     <td width="" align="center">${repairlist.room_no}&nbsp;</td>
     <td width="" align="center">${repairlist.real_name}&nbsp;</td>
     <td width="" align="center">${repairlist.repaircontent}&nbsp;</td>
     <td width="" align="center">${repairlist.repairtime}&nbsp;</td>
     <td width="" align="center">${repairlist.performance}&nbsp;</td>
     <td width="" align="center">${repairlist.repaircost}&nbsp;</td>
     <c:if test="${admin.user_type==2}">
     <td width="" align="center">&nbsp;
       <c:if test="${admin.user_type==2 && repairlist.performance==null}">
       <a href="Admin_editRepairlist.action?repairlistid=${repairlist.repairlistid}">处理</a>
       </c:if>
     </td>
     </c:if>
   </tr> 
  </c:forEach>
  </c:if>
  <c:if test="${repairlists==null ||  fn:length(repairlists)==0}">
   <tr>
     <td height="60" colspan="13" align="center"><b>&lt;不存在物业报修信息&gt;</b></td>
   </tr>
   </c:if>
   
</table>
</form> 
<jsp:include page="page.jsp"></jsp:include>
</body>
</html>