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
 