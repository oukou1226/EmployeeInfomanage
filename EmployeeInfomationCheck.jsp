<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/EmployeeInfomationCheck.css">
</head>
<body>
	<div>
		<div class="common-head">
			<div id="headAuthority" class="headAuthority"></div>
			<div id="headname" class="headname"></div>
			<div class="common-head-2">
				<h1>社員勤務管理システム</h1>
				<h6>社員情報管理画面</h6>
			</div>
			<div class="common-head-3">
				<h6>LYC株式会社</h6>
			</div>
		</div>
		<div class="content-head">
			<div class="content-button">
				<button onclick="button_add()" id="button_add" class="start">追加</button>
				<button onclick="button_update()" id="button_update" class="start">修正</button>
				<button onclick="button_delete()" id="button_delete" class="start">削除</button>
				<a href="EmployeeInfoSearchCheck.jsp"><button>詳細検索画面へ</button></a>
			</div>
			<form id="form1">
				<div class="content-check">
					<div>
						<span>社員番号：</span><input type="text" class="head-employeeNo"
							id="head-employeeNo" name="registerbean.heademployeeNo">
					</div>
					<span>OR</span>
					<div>
						<span>社員名：</span><input type="text" id="heademployeeName"
							name="registerbean.heademployeeName">
					</div>
					<span class="clear-span" id="head-emsg"></span>
				</div>
			</form>
		</div>
		<div class="form2">
			<hr class="line">
			<form id="form2">
				<div class="content">
					<div class="employee_no">
						<span>社員番号:</span> <input class="clear-input" type="text"
							id="employee_no" maxlength="6" name="registerbean.employee_no">
						<font color="#ff3636">★</font> <span class="clear-span"
							id="em-employee_no"></span>
					</div>
					<div class="employee_name">
						<span>社員名:</span> <input class="clear-input" type="text"
							id="employee_name" name="registerbean.employee_name"
							maxlength="10"> <font color="#ff3636">★</font> <span
							class="clear-span" id="em-employee_name"></span>
					</div>
					<div class="employee_form">
						<span>社員形式:</span> <select id="employee_form"
							name="registerbean.employee_form" class="disabledSelect">

						</select>
					</div>
					<div class="salary">
						<span>給料:</span> <input class="clear-input" id="salary"
							type="text" maxlength="6" onblur="loseFocus()"
							name="registerbean.salary">円 <span class="clear-span"
							id="em-salary"></span>
					</div>
					<div class="gender">
						<span>性別:</span> <select id="gender" name="registerbean.gender"
							class="disabledSelect">
						</select>
					</div>
					<div id="age" class="age">
						<div>
							<span>年齢:</span> <input readonly class="clear-input"
								id="employee_age" type="text" name="registerbean.age">
						</div>
						<div>
							<input class="clear-input" onchange="age()" type="date"
								id="birthday">
						</div>
					</div>
					<div class="Joined_year">
						<span>入社年月:</span> <select id="Joined_year"
							name="registerbean.Joined_year" class="disabledSelect">
							<option value="">未選択</option>
						</select>年 <select id="Joined_month" name="registerbean.Joined_month"
							class="disabledSelect">
							<option value="">未選択</option>
						</select>月 <span class="clear-span" id="em-Joinedday"></span>
					</div>
					<div class="Support_persons">
						<span>扶養人数:</span> <select id="Support_persons"
							name="registerbean.Support_persons" class="disabledSelect">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
					<div class="company_password">
						<span>初期パスワード:</span> <input class="clear-input" type="password"
							id="company_password" maxlength="12" onfocus="focusPassword()"
							onblur="changePassword()"
							name="registerbean.company_password"> <font
							color="#ff3636">★</font> <span class="clear-span"
							id="em-company_password"></span>
					</div>
					<div class="init_password">
						<span>社用メールアドレス:</span> <input class="clear-input" type="text"
							id="init_password" maxlength="30"
							name="registerbean.init_password"><span>@lyc.co.jp</span>
					</div>
					<div class="private_password">
						<span>私用メールアドレス:</span> <input class="clear-input" type="text"
							id="private_password" maxlength="40"
							name="registerbean.private_password"> <span
							class="clear-span" id="em-private_password"></span>
					</div>
					<div class="phone_number">
						<span>電話番号:</span> <input class="clear-input-phone" type="text"
							id="phone_number1" maxlength="3"
							name="registerbean.phone_number1"> <input
							class="clear-input-phone" type="text" id="phone_number2"
							maxlength="4" name="registerbean.phone_number2"> <input
							class="clear-input-phone" type="text" id="phone_number3"
							maxlength="4" name="registerbean.phone_number3"> <span
							class="clear-span" id="em-phone_number"></span>
					</div>
					<div>
						<span>通勤情報</span>
					</div>
					<div class="Authority">
						<span>権限:</span><select id="Authority"
							name="registerbean.Authority" class="disabledSelect">
						</select> <font color="#ff3636">★</font> <span class="clear-span"
							id="em-Authority"></span>
					</div>
					<div class="Deviation_station">
						<span>最寄り駅:</span> <input class="clear-input"
							id="Deviation_station" type="text" maxlength="20"
							name="registerbean.Deviation_station">
					</div>
					<div class="employement_station">
						<span>勤務先駅:</span> <input class="clear-input" type="text"
							id="employee_station" maxlength="20"
							name="registerbean.employeement_station">
					</div>
					<div class="Transportation_cost">
						<span>定期費:</span> <input class="clear-input" type="text"
							id="Transportation_cost" maxlength="5"
							name="registerbean.Transportation_cost"> <a
							href="http://transit.yahoo.jp"><span>定期費検索</span></a> <span
							class="clear-span" id="em-Transportation_cost"></span>
					</div>
					<div>
						<span>口座情報</span>
					</div>
					<div class="Bank_name">
						<span>銀行名:</span> <select onchange="change()" id="Bank_name"
							name="registerbean.Bank_name" class="disabledSelect">
							<option value=""></option>
						</select> <span class="clear-span" id="em-bank"></span>
					</div>
					<div class="bank">
						<div class="Branch_name">
							<span>支店名:</span> <input class="no-disabled" disabled type="text"
								id="Branch_name"  onblur="selectBranchNo()" maxlength="20"
								name="registerbean.Branch_name">
						</div>
						<div>
							<span>支店番号：</span> <input class="no-disabled" disabled
								type="text" id="Branch_number" onblur="selectBranch()"
								maxlength="20" name="registerbean.Branch_number"> <span
								class="clear-span" id="em-Branch_number"></span>
						</div>
					</div>
					<div class="Account_holder">
						<span>口座名義人:</span> <input class="no-disabled" disabled
							type="text" id="Account_holder" maxlength="20"
							name="registerbean.Account_holder"> <span
							class="clear-span" id="em-Account_holder"></span>
					</div>
					<div class="account_number">
						<span>口座番号:</span> <input class="no-disabled" disabled type="text"
							id="account_number" maxlength="10"
							name="registerbean.account_number"> <span
							class="clear-span" id="em-Account_number"></span>
					</div>
					</div>
					</form>
				</div>
				<div class="confirm_button">
					<input type="button" value="確定" onclick="return submitcheck()"
						disabled id="button_disabled" class="button_disabled">
				</div>
				<div>
					<a href="SubMenuCheck.jsp"><span>前画面に戻る</span></a>
				</div>
		</div>

</body>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/employeeinfomationcheck.js" charset="UTF-8"></script>
<script>
var flag=false;
window.onload= function(){
show();
selectemployeeform();
selectgender();
year();
month();
selectAuthority();
selectBank();
}
function show(){
	var authority='<%=session.getAttribute("authorityProperties")%>';
    var name='<%=session.getAttribute("name")%>';
		document.getElementById("headAuthority").innerHTML = authority;
		document.getElementById("headname").innerHTML = name;
	}
</script>
</html>