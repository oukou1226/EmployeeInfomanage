<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/SubMenuCheck.css">
<title>Insert title here</title>
</head>
<body>
<div class="common-head">
<div class="common-head-1" id="common-head-1">
</div>
<div class="common-head-2">
<h1>社員勤務管理システム</h1>
<h6>メニュー一覧</h6>
</div>
<div class="common-head-3">
<span>LYC株式会社</span>
<a href="LogInCheck.jsp"><span>サインアウト</span></a>
</div>
</div>
<div class="content">
<div class="content-button">
<form id="form1">
<input id="hiddenOfcheck" name="hiddenOfcheck" name="employeeNo"></form>
<button class="button-1" onclick="Performance()">実績入力</button>
<a href="EmployeeInfomationCheck.jsp"><button class="button-2" id="displayselect">社員管理情報</button></a>
<button class="button-3">休憩時間設定</button>
<a href="PasswordResetCheck.jsp"><button class="button-4">パスワードリセット</button></a>
<button class="button-5">実績検索</button>
</div>
<div class="content-logout">
<a href="LogInCheck.jsp"><span>ログイン画面に戻る</span></a>
</div>
</div>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/subMenuCheck.js" charset="UTF-8"></script>
<script>
window.onload= function(){
	show();
}
function show(){
var employeeNo='<%=session.getAttribute("employeeNo")%>';
var name='<%=session.getAttribute("name")%>';
var authority='<%=session.getAttribute("authorityProperties")%>';
document.getElementById("hiddenOfcheck").value=employeeNo;
document.getElementById("common-head-1").innerHTML=authority+":"+name;
if(authority!="管理員"){
	document.getElementById("displayselect").style.display="none";
}else{
	document.getElementById("displayselect").style.display="block";}
}
</script>
</html>