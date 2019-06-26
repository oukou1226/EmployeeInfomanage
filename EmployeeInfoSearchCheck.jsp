<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/EmployeeInfoSearchCheck.css">
</head>
<body>
	<div class="common-head">
		<div id="headAuthority" class="headAuthority"></div>
		<div id="headname" class="headname"></div>
		<div class="common-head-2">
			<h1>社員勤務管理システム</h1>
			<h6>社員情報詳細検索画面</h6>
		</div>
		<div class="common-head-3">
			<h6>LYC株式会社</h6>
		</div>
		<div id="errorMessage" class="errorMessage">
			<span id="errormsg" class="errormsg"></span>
		</div>
	</div>
	<div class="inputAndButton">
		<form id="form" action="printInfo" method="post">
			<div class="inputBox">
				<div class="inputBox1">
					<div class="inputOfEmployee">
						<span>社員番号</span><input type="text"
							name="employeesearch.employeeNo">
					</div>
					<div class="inputOfEmployee">
						<span>社員名</span><input type="text"
							name="employeesearch.employeeName">
					</div>
					<div class="inputOfEmployee">
						<span>社員形式</span><select id="employee_form"
							name="employeesearch.employeeForm">
							<option value=""></option>
						</select>
					</div>
				</div>
				<div class="inputBox2">
					<div class="inputOfOther" id="inputOfInCompanyYear">
						<span>入社年月</span><select class="incompanyOfyear" id="Joined_year"
							name="employeesearch.joinYear">
							<option value=""></option>
						</select> <select class="incompanyOfmonth" id="Joined_month"
							name="employeesearch.joinMonth">
							<option value=""></option>
						</select>
					</div>
					<div class="inputOfOther">
						<span>年齢</span><select class="age" id="ageMin"
							name="employeesearch.minAge">
								<option value=""></option>
						</select>～<select  class="age" id="ageMax"
							name="employeesearch.maxAge">
							<option value=""></option>
							</select>
					</div>
					<div class="inputOfOther">
						<span>性別</span><select class="gender" id="gender"
							name="employeesearch.gender">
							<option value=""></option>
						</select>
					</div>
				</div>
				<div class="searchOfradion">
					<div class="group">
						<span>グループ:</span> <input type="radio"
							name="employeesearch.searchOfradio" value=""><span>デフォルト</span>
						<input type="radio" name="employeesearch.searchOfradio"
							value="searchOfemployeeform"><span>社員形式</span>
					</div>
					<div class="sort">
						<span>ソート:</span> <input type="radio"
							name="employeesearch.searchOfradio" value=""><span>デフォルト</span>
						<input type="radio" name="employeesearch.searchOfradio"
							value="serchOfage"><span>年齢</span> <input type="radio"
							name="employeesearch.searchOfradio" value="searchOfyear"><span>入社年月</span>
					</div>
				</div>
			</div>
		</form>
		<div class="button">
			<div>
				<button onclick="serachEmp()">検索</button>
			</div>
			<form action="printInfo" method="post">
				<div>
					<button disabled id="checkofemp" onclick="clicksearch()"
						name="checkedInfo">個別社員情報出力</button>
				</div>
				<div>
					<input type="hidden" id="hiddenOfcheck" name="hiddenOfcheck">
				</div>
			</form>
		</div>

	</div>

	<div class="center">
		<div id="totalnum" class="totalnum">
			<div class="empparticulars">
				<span>社員情報明細</span>
			</div>
			<div class="counta">
				<span>合計件数:</span><span id="num"></span>
			</div>
		</div>
		<div class="table">
			<table class="employeeIntable" id="employeeIntable">
				<tr class="headingName">
					<th></th>
					<th>番号</th>
					<th>社員番号</th>
					<th>社員名</th>
					<th>社員形式</th>
					<th>性別</th>
					<th>年齢</th>
					<th>入社年月</th>
					<th>給料（万円</th>
					<th>扶養人数</th>
					<th>電話番号</th>
					<th>寄り駅</th>
					<th>勤務先駅</th>
					<th>定期費</th>
					<th>口座名義人</th>
					<th>口座番号</th>
					<th>社用メールアドレス</th>
				</tr>
			</table>
		</div>
		<div class="pageChange">
			<div class="pagechangeback">
				<button class="pageBack" id="pageBack" onclick="pageback()">前ページ＜＜</button>
			</div>
			<div class="pagenum">
				<span id="nowpage"></span>
			</div>
			<div class="pagechangenext">
				<button class="nextPage" id="nextPage" onclick="nextback()">＞＞次ページ</button>
			</div>
		</div>
	</div>
	<div>
		<a href="EmployeeInfomationCheck.jsp"><span>前画面に戻る</span></a>
	</div>
</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/EmployeeInfoSearchCheck.js" charset="UTF-8"></script>
<script>
var flag=false;
window.onload= function(){
	show();
selectemployeeform();
selectgender();
year();
month();
selcetofage();
document.getElementById("pageBack").style.display="none";
document.getElementById("nextPage").style.display="none";
}
function show(){
	var authority='<%=session.getAttribute("authorityProperties")%>';
    var name='<%=session.getAttribute("name")%>';
		document.getElementById("headAuthority").innerHTML = authority;
		document.getElementById("headname").innerHTML = name;
	}
</script>
</html>