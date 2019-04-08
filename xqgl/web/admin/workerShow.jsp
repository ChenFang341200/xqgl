<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${worker_typeDesc}信息</title>
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
   document.info.action="Admin_listWorkers.action";
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
       alert("请至少选择一个要删除的${worker_typeDesc}！");
       return false;
    }
    if(confirm('确认删除吗!?'))
    {
       document.info.action="Admin_delWorkers.action?ids="+ids;
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
  document.info.action="Admin_listWorkers.action";
  document.info.submit();
}
function ChangePage(pagenum)
{
  document.getElementById("pageNo").value=pagenum;
  document.info.action="Admin_listWorkers.action";
  document.info.submit();
}
function exportWorkers()
{
   document.info.action="exportWorkers.action";
   document.info.submit();
}
function add(worker_type)
{
   window.location.href="Admin_addWorkerShow.action?worker_type="+worker_type;
}
</script>
</head>
<body>
<div class="pageTitle">
	&nbsp;&nbsp;<img src="images/right1.gif" align="middle" /> &nbsp;<span id="MainTitle" style="color:white">${worker_typeDesc}管理&gt;&gt;${worker_typeDesc}查询</span>
</div>
<form name="info" id="info" action="Admin_listWorkers.action" method="post">
<input type="hidden" name="pageNo" id="pageNo" value="${paperUtil.pageNo}"/>
<input type="hidden" name="worker_type" id="worker_type" value="${worker_type}"/>
<table width="95%" align="center" cellpadding="0" cellspacing="0">
  <tr><td colspan="2" height="10px">&nbsp;</td></tr>
  <tr>
    <td width="">${worker_typeDesc}列表</td>
    <td width="" align="right">
            编号：
      <input type="text" id="worker_no" name="worker_no" value="${paramsWorker.worker_no}" class="inputstyle" Style="width:100px"/>&nbsp;
            姓名：
      <input type="text" id="worker_name" name="worker_name" value="${paramsWorker.worker_name}" class="inputstyle" Style="width:100px"/>&nbsp;
      <input type="button" value="搜索" onclick="serch();" class="btnstyle"/>&nbsp;
      <input type="button" value="新增" onclick="add('${worker_type}');" class="btnstyle"/>&nbsp;
      <input type="button" value="删除" onclick="del();" class="btnstyle"/>&nbsp;
    </td>
  </tr>
  <tr><td colspan="2" height="2px"></td></tr>  
</table>
<table width="95%" align="center" class="table_list" cellpadding="0" cellspacing="0">
   <tr class="listtitle">
     <td width="40" align="center"><input type="checkbox" onclick="CheckAll(this);" style="vertical-align:text-bottom;" title="全选/取消全选"/></td>
     <td width="40" align="center">序号</td>
     <td width="" align="center">编号</td>
     <td width="" align="center">姓名</td>
     <td width="" align="center">性别</td>
     <td width="" align="center">出生年月</td>
     <td width="" align="center">工作内容</td>
     <td width="" align="center">操作</td>
   </tr>
   <c:if test="${workers!=null &&  fn:length(workers)>0}">
   <c:forEach items="${workers}" var="worker" varStatus="status">
   <tr class="list0" onmouseover="tr_mouseover(this)" onmouseout="tr_mouseout(this)"> 
     <td width="" align="center"><input type="checkbox" name="chkid" value="${worker.worker_id}" style="vertical-align:text-bottom;"/></td>
     <td width="" align="center">${status.index+1+paramsWorker.start}</td>
     <td width="" align="center">${worker.worker_no}</td>
     <td width="" align="center">${worker.worker_name}</td>
     <td width="" align="center">${worker.worker_sexDesc}</td>
     <td width="" align="center">${worker.worker_birth}&nbsp;</td>
     <td width="" align="center">${worker.worker_content}&nbsp;</td>
     <td width="" align="center">
       <img src="images/edit.png"/>&nbsp;<a href="Admin_editWorker.action?worker_id=${worker.worker_id}&worker_type=${worker.worker_type}">编辑</a>
     </td>
   </tr> 
  </c:forEach>
   </c:if>
   <c:if test="${workers==null ||  fn:length(workers)==0}">
   <tr>
     <td height="60" colspan="13" align="center"><b>&lt;不存在${worker_typeDesc}信息&gt;</b></td>
   </tr>
  </c:if>
   
</table>
<jsp:include page="page.jsp"></jsp:include>
</form> 
</body>
</html>