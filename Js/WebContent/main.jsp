<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<h2>LOGIN PAGE</h2>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var adminId = "aaaa";
	var adminPw = "1234";
	$("#btnLogin").click(function(){
		var uId = $("#userId").val();
		var uPw = $("#userPw").val();
		if (!uId || !uPw) {
			alert("회원 정보를 모두 입력하세요.");
		} else {
			if (uId == adminId) {
				if (uPw == adminPw) {
					alert("로그인 성공");
				} else {
					console.log("비밀번호 불일치");
					alert("회원정보 불일치");
				}
			} else {
				console.log("아이디 불일치");
				alert("회원정보 불일치");
			}
		}
	})
})
 
</script>
</head>
<body>
	 	<div>
	 		<table>
	 			<tr>
	 				<td><label>ID</label></td>
	 				<td><input type="text" id = "userId" placeholder = "아이디를 입력하세요."></td>
	 				<td rowspan="2"><button id="btnLogin">로그인</button></td>
	 			</tr>
	 			<tr>
	 				<td><label>PW</label></td>
	 				<td><input type="password" id ="userPw" placeholder="비밀번호를 입력하세요."></td>
	 			</tr>
	 		</table>
	 	</div>
</body> 
</html>