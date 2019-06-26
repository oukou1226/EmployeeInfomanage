<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<script src="js/LoginCheck.js"></script>
<script>
window.onload= function(){
	show();
}
function show(){
	var employeeNo='<%=session.getAttribute("employeeNo")%>';
	if(employeeNo!="null"&&employeeNo!=""){
		document.getElementById("employeeNo").value=employeeNo;
		console.log(typeof user);
	}else{
		if(employeeNo=="null"){
			document.getElementById("employeeNo").value="";}
	}
	}
</script>
</head>
<body>
<div class="login-modules">
<div class="login-head">
<h6 class="login-head1">LYC株式会社</h6>
<h1>社員勤務管理システム</h1>
<h6>社員ログイン</h6>
</div>
<div class="input-input">
<form action="login" method="post" id="loginForm">
<div class="clear-both"><span class="span1">社員番号:</span>
<input class="emp-input" type="text" name="user.employeeNo" id="employeeNo" maxlength="6">
<div class="errorMessage" id="result_emp"></div>
</div>
<div class="clear-both"><span class="span1">パスワード:</span>
<input class="psw-input" type="password" name="user.password" id="password" maxlength="12">
<div class="errorMessage" id="result_psw"></div>
</div>
<div class="login-button">
<input type="submit" class="common-submit" value="ログイン" onclick="return check()">
</div>
<div class="errorMessage-noemp" id="errorMessage-noemp"><s:actionmessage/></div>
</form>
</div>
</div>
</body>
</html>