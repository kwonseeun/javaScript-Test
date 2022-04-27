<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lnag="ko">

<head>
	<meta charset="UTF-8">
	<title>네이버 로그인</title>
	<style type="text/css">
		@charset "UTF-8";
body{
    background-color: #f5f6f7;
}

select{
    width:85px;
    height:25px;
    outline: none;
    background: #f5f6f7;
    border: 1px solid #999;
}

a {
    color: black;
    text-decoration: none;
  }

.main{
    text-align: center;
	margin-top: 20px;
}


/*언어설정*/
.select-lang{
    text-align: right;
    padding-right: 10px;
}
/*네이버 로고설정*/
.image{
    height: 32px;
    padding: 20px;
    margin-bottom: 20px;
}
/*input 아이디박스*/
.login-id-wrap{

    margin: 0px 10px 8px 10px;
    padding: 10px;
    border: solid 1px #dadada;
    background: #fff;
}
/*input 아이디 form*/
#input-id{
    border: none;
    outline:none;
    width:100%;
}
/*input 패스워드박스*/
.login-pw-wrap{

    margin: 0px 10px 8px 10px;
    padding: 10px;
    border: solid 1px #dadada;
    background: #fff;
}
/*input 패스워드 form*/
#input-pw{
    border: none;
    outline:none;
    width:100%;
}
/*로그인버튼박스*/
.login-btn-wrap{
    height: 52px;
    line-height: 55px;
    margin: 0px 10px 8px 10px;
    border: solid 1px rgba(0,0,0,.1);
    background-color: #03c75a;
    color: #fff;
    cursor: pointer;
}
/*로그인버튼*/
#login-btn{
    width:100px;
    background-color: #03c75a;
    border: none;
    color:#fff;
    font-size: 18px;
    outline:none;
    cursor: pointer;
}
/*로그인 아래 박스*/
.under-login{
    height: 50px;
    border-bottom: 1px solid gainsboro;
    margin: 0px 10px 35px 10px;
}
/*로그인상태유지*/
.stay-check{
    margin-left: 7px;
    float: left;
}
/*로그인상태유지 체크박스*/
.stay-check input[type="checkbox"] {
    /*기존 체크박스 숨기기*/
    position: absolute;
    width: 0px;
    position: absolute;
}
.stay-check input[type="checkbox"] + label {
    display: inline-block;
    position: relative;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    }
.stay-check input[type="checkbox"] + label::before {
    content: ' ';
    display: inline-block;
    width: 22px;
    height: 22px;
    line-height: 18px;
    margin: -2px 8px 0 0;
    text-align: center;
    vertical-align: middle;
    background: #fafafa;
    border: 1px solid #cacece;
    border-radius: 50%;
    box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.stay-check input[type="checkbox"]:checked + label::before {
    content: '\2713';
    color: white;
    text-shadow: 1px 1px white;
    background: #03c75a;
    border-color: #03c75a;
    box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
/*IP보안 표시X*/
#ip-check{
    display: none;
}
/*IP보안 ON/OFF*/
#ip-context{
    color:rgb(160, 160, 160);
    font-weight: 900;
    display: inline-block;
    width: 22px;
}
/*간편한 로그인 구역*/
#easy-login-wrap{
    height: 90px;
    margin: 0px 10px 35px 10px;
}
/*간편한 로그인 텍스트*/
.easy-login{
    font-size: 20px;
    font-weight: 500;
}
/*QR & 일회용 로그인 박스 구역*/
.easy-login-box{
    display: grid;
    grid-template-columns: 1fr 1fr;
}
/*QR코드 로그인*/
.qr-login{
    float: left;
    border: 1px solid #03c75a;
    background-color: #fff;
    margin: 0px 4px 0px 0px;
    line-height: 55px;
}
/*일회용 번호 로그인*/
.onetime-login{
    float: right;
    border: 1px solid #03c75a;
    background-color: #fff;
    margin: 0px 0px 0px 4px;
    line-height: 55px;
}
/*더욱 간편한 로그인-en모드*/
.qr-login-en, .facebook-login, .line-login{
    font-family: Helvetica,Dotum,sans-serif;
    font-size: 18px;
    font-weight: 400;
    text-align: left;
    line-height: 55px;
    border: solid 1px #dadada;
    background: #fff;
    margin-bottom: 10px;
}
/*더욱 간편한 로그인 이미지-en모드*/
.easy-login-box-en img{
    display: inline-block;
    vertical-align: middle;
    margin: 0 10px 0 10px;
}
/*찾기 및 회원가입*/
.find-signup-wrap{
    height: 100px;
    grid-template-columns: 1fr 1fr 1fr;
}
/*찾기 및 회원가입 글자 희미하게 바꾸기*/
.find-signup-wrap a{
    color: rgb(150, 150, 150);
    text-decoration: underline;
    font-weight: 500;
}
.find-signup-wrap span{
    color: rgb(150, 150, 150);
    font-weight: 500;
}
/*아이디 찾기*/
.find-id{
    margin: 3px;
    font-size: 14px;
    border-right: 1px solid gainsboro;
}
/*아이디 찾기-en모드*/
.find-id-en{
    font-size: 14px;
}
/*비밀번호 찾기*/
.find-pw{
    margin: 3px;
    font-size: 14px;
    border-right: 1px solid gainsboro;
}
/*회원가입*/
.sign-up{
    margin: 3px;
    font-size: 14px;
}
/*저작권 표시X*/
footer{
    display: none;
}


/*가로 800px 이상일때*/
@media(min-width : 800px)
{
    .main{
        width: 460px;
        margin: auto;
    }

/*언어설정*/
.select-lang{
    margin-top: 20px;
    width: 550px;
    padding-right: 10px;
}
/*네이버 로고설정*/
.image{
    margin-top: 40px;
    height: 44px;
    padding: 20px;
    margin-bottom: 40px;
}

/*IP보안 표시*/
#ip-check{
    margin-right: 7px;
    float: right;
    display:block;
}

/*저작권 표시*/
footer{
    display:block;
}

}
		
	</style>
	<script type="text/javascript">
	function chageLangSelect(){
	    var langSelect = document.getElementById("id-lang");
	    var selectValue = langSelect.options[langSelect.selectedIndex].value;

	    if(selectValue=='ko') {
	        document.getElementById("input-id").placeholder='아이디';
	        document.getElementById("input-pw").placeholder='비밀번호';
	        document.getElementById("login-btn").textContent = '로그인';
	        document.getElementById("stay-text").textContent = '로그인 상태 유지';
	        document.getElementById("ip-check").style.display = '';
	        document.getElementById("easy-login-text").textContent = '더욱 간편한 로그인';
	        document.getElementById("easy-login-wrap").style.height = '90px';
	        document.getElementById("easy-login-wrap-ko").style.display = '';
	        document.getElementById("easy-login-wrap-en").style.display = 'none';
	        document.getElementById("find-signup-wrap-ko").style.display = '';
	        document.getElementById("find-signup-wrap-en").style.display = 'none';
	        

	    }
	    else{
	        document.getElementById("input-id").placeholder='Username';
	        document.getElementById("input-pw").placeholder='Password';
	        document.getElementById("login-btn").textContent = 'Sign in';
	        document.getElementById("stay-text").textContent = 'Stay Signed in';
	        document.getElementById("ip-check").style.display = 'none';
	        document.getElementById("easy-login-text").textContent = 'Easier sign in';
	        document.getElementById("easy-login-wrap").style.height = '215px';
	        document.getElementById("easy-login-wrap-ko").style.display = 'none';
	        document.getElementById("easy-login-wrap-en").style.display = '';
	        document.getElementById("find-signup-wrap-ko").style.display = 'none';
	        document.getElementById("find-signup-wrap-en").style.display = '';
	        
	    }
	}

	function ipCheck(){

	    var ipcheck = document.getElementById("ip-context");
	    
	    if(ipcheck.textContent == 'OFF'){
	        ipcheck.textContent = 'ON'
	        ipcheck.style.color = '#03c75a';
	    }else{
	        ipcheck.textContent = 'OFF'
	        ipcheck.style.color = 'rgb(160,160,160)';
	    }
	}
	</script>
</head>

<body>

	<div class="main">
		<!--웹페이지 상단-->
		<header>
			<!--language select-->

			<div class="select-lang">
				<select id="id-lang" class="selectbox" name="lang" onchange="chageLangSelect()">
					<option value="ko">한국어</option>
					<option value="en">English</option>
				</select>
			</div>

			<!--NAVER LOGO-->
			<div class="logo">
				<a href="https://www.naver.com/" target="_blank" title="네이버 홈페이지"><img src="image/NAVER_LOGO.png"
						class="image"></a>
			</div>
		</header>

		<!--로그인 부분-->
		<section class="login-wrap">

			<div class="login-id-wrap">
				<input id="input-id" placeholder="아이디" type="text"></input>
			</div>
			<div class="login-pw-wrap">
				<input id="input-pw" placeholder="비밀번호" type="password"></input>
			</div>
			<div class="login-btn-wrap">
				<button id="login-btn">로그인</button>
			</div>
			<div class="under-login">
				<span class="stay-check">
					<input id="stay-checkbox" type="checkbox"></input>
					<label for="stay-checkbox" id="stay-text">로그인 상태 유지</label>
				</span>
				<span id="ip-check">
					<a href="https://nid.naver.com/login/ext/help_ip3.html" target="_blank" title="네이버 IP 보안">IP 보안</a>
					<input id="ip-checkbox" type="checkbox" style="display:none;" onclick="ipCheck()"></input>
					<label for="ip-checkbox">
						<span id="ip-context">OFF</span>
					</label>
					<!-- IP 보안 <input class="ip-checkbox" type="checkbox" name="stay-btn" value="stay"> -->
				</span>
			</div>

		</section>

		<!--간편한 로그인 부분-->
		<section id="easy-login-wrap">

			<div class="easy-login">
				<p id="easy-login-text">더욱 간편한 로그인</p>
			</div>

			<div id="easy-login-wrap-ko">
				<div class="easy-login-box">
					<div class="qr-login">
						<a href="https://nid.naver.com/nidlogin.login?mode=qrcode" target="_blank" title="QR코드 로그인">QR
							코드 로그인</a>
					</div>

					<div class="onetime-login">
						<a href="https://nid.naver.com/nidlogin.login?mode=number&url=https%3A%2F%2Fwww.naver.com&locale=ko_KR&svctype=1"
							target="_blank" title="일회용번호 로그인">일회용 번호 로그인</a>
					</div>
				</div>
			</div>

			<div id="easy-login-wrap-en" style="display:none;">
				<div class="easy-login-box-en">

					<div class="qr-login-en">
						<img src="image/qr.png">
						<a href="https://nid.naver.com/nidlogin.login?mode=qrcode" target="_blank" title="QR코드 로그인">Sign
							in with QR code</a>
					</div>
					<div class="facebook-login">
						<img src="image/facebook.png">
						<a href="https://www.facebook.com/" target="_blank" title="일회용번호 로그인">Facebook</a>
					</div>
					<div class="line-login">
						<img src="image/line.png">
						<a href="https://line.me/ko/" target="_blank" title="일회용번호 로그인">line</a>
					</div>
				</div>
			</div>

		</section>

		<!--class,PW 찾기 및 회원가입 부분-->
		<section class="find-signup-wrap">

			<div id="find-signup-wrap-ko">
				<span class="find-id">
					<a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">아이디
						찾기</a>
				</span>

				<span class="find-pw">
					<a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
						title="일회용번호 로그인">비밀번호 찾기</a>
				</span>

				<span class="sign-up">
					<a href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" target="_blank"
						title="일회용번호 로그인">회원가입</a>
				</span>
			</div>

			<div id="find-signup-wrap-en" style="display:none;">
				
				<span class="find-id-en">
					<span>Forgot your</span> 
					<a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">Username</a>
				</span>

				<span class="find-pw">
					<span>or</span> 
					<a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
						title="일회용번호 로그인">Password?</a>
				</span>

				<span class="sign-up">
					<a href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" target="_blank"
						title="일회용번호 로그인">Sign up</a>
				</span>
			</div> 


		</section>

		<!--저작권 정보-->
		<footer>
			<div class="copyright-wrap">
				<span> <img src="image/NAVER_LOGO.png" width=70px> Copyright © NAVER Corp. All Rights Reserved.</span>
			</div>
		</footer>
	</div>
</body>

</html>