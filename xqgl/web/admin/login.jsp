<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>小区物业管理系统登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/info.css">
<script language="javascript" type="text/javascript" src=""></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script language="javascript" type="text/javascript"> 
	
</script>
<style type="text/css">
 body,td,div
 {
   font-size:12px;
 }
</style>
</head>
<BODY>
<FORM id="info" name="info"  method="post" action="LoginInSystem.action">
<div style="background-image:url('images/loginbg.png');margin:0 auto;margin-top:100px;overflow:hidden">
	<div style="width:278px;height:125px;margin-top:250px;margin-left:460px;overflow:hidden">
		<div style="float:left;width:156px;height:90px;margin-top:25px;margin-left:30px;line-height:25px;overflow:hidden">
			用户名：<input type="text" id="params.username" name="user_name" value="${params.user_name}" style="width:100px" />
			<br/>密　码：<input type="password" id="params.password" name="user_pass" value="" style="width:100px" />
			<br/>类　型：<select name="user_type" style="width:105px">
						<option value="1">业主</option>
						<option value="2">管理员</option>
					</select>
		</div>
		<div style="float:left;width:88px;height:90px;margin-top:25px;overflow:hidden">
			<img id="loginInBtn"  style="border:0px;cursor:pointer;vertical-align:text-bottom;" src="images/loginbtn.jpg" />
		</div>
	</div>
</div>

</FORM>
<script language="javascript" type="text/javascript">
	//实现验证码点击刷新
	function reloadcode(){
		var verify=document.getElementById('safecode');
		verify.setAttribute('src','Random.jsp?'+Math.random());
	}

	$(document).ready(function(){
		var loginInBtn = $("#loginInBtn");
		var username = $("#params\\.username");
		var password = $("#params\\.password");
		var loginTip = $("#loginTip");
		
		var tip = "${tip}";
		if(tip!=""){
			alert(tip);
		}
		
		loginInBtn.bind('click',function(){
			if(username.val()==''||password.val()==''){
				alert("用户名、密码不能为空！")
				return;
			}
			$("#info").submit();
			 
		});
	});
</script>
</BODY>
</HTML>
