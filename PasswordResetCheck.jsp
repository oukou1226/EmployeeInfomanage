<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/PasswordResetCheck.css">
<script src="js/PasswordResetCheck.js"></script>
<script>
window.onload= function(){
	show();
}
function show(){
	var name='<%=session.getAttribute("name")%>';
	var employeeNo='<%=session.getAttribute("employeeNo")%>';
	var authority='<%=session.getAttribute("authorityProperties")%>';
	document.getElementById("common-head-1").innerHTML=authority+":"+name;
	document.getElementById("employeeNo").value=employeeNo;
	}
</script>
</head>
<body>
<div class="common-head">
<div class="common-head-1" id="common-head-1">
</div>
<div class="common-head-3">
<a href="LogInCheck.jsp"><span>サインアウト</span></a>
<span>LYC株式会社</span>
</div>
<div class="common-head-2">
<h1>社員勤務管理システム</h1>
<h6>パスワードリセット</h6>
</div>
</div>
<div class="content">
<div class="content-input">
    <form action="reset" id="loginForm">
        <div class="common-input">
          <span>社員番号：</span>  <input name="employeeNo"  type="text" id="employeeNo" readonly>
        </div>
        <div class="errorMessage" id="result-emp"></div>
        <div class="common-input">
          <span>既存パスワード：</span>  <input name="existedPassword" type="password" id="existedPassword" maxlength="12">
                   <div class="errorMessage" id="result-psw"></div>
        </div>

        <div class="common-input">
           <span>新しいパスワード：</span> <input name="newPassword" type="password" id="newPassword" maxlength="12">
           <div class="errorMessage" id="result-newpsw"></div>
        </div>
        <div class="common-input">
          <span>新しいパスワード再入力：</span>  <input name="newPasswordAgain" type="password" id="newPasswordAgain" maxlength="12">
          <div class="errorMessage" id="errorMessage-psw-1"></div>
        </div>
        <input id="registerButton"  class="common-submit" type="submit" value="確定"  onclick="return check()">
    </form>
    </div>
    <div class="content-submenu">
<a href="SubMenuCheck.jsp"><span>サブメニューに戻る</span></a>
</div>
</div>
</body>
</html>