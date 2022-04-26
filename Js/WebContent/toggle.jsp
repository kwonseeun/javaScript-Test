<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		.toggleBG{background: #CCCCCC; width: 70px; height: 30px; border: 1px solid #CCCCCC; border-radius: 15px;}
    	.toggleFG{background: #FFFFFF; width: 30px; height: 30px; border: none; border-radius: 15px; position: relative; left: 0px;}
	</style>
	
	<script type="text/javascript">
	$(document).on('click', '.toggleBG', function () {
	    var toggleBG = $(this);
	    var toggleFG = $(this).find('.toggleFG');
	    var left = toggleFG.css('left');
	    if(left == '40px') {
	        toggleBG.css('background', '#CCCCCC');
	        toggleActionStart(toggleFG, 'TO_LEFT');
	    }else if(left == '0px') {
	        toggleBG.css('background', '#53FF4C');
	        toggleActionStart(toggleFG, 'TO_RIGHT');
	    }
	});


	// 토글 버튼 이동 모션 함수
	function toggleActionStart(toggleBtn, LR) {
	    // 0.01초 단위로 실행
	    var intervalID = setInterval(
	        function() {
	            // 버튼 이동
	            var left = parseInt(toggleBtn.css('left'));
	            left += (LR == 'TO_RIGHT') ? 5 : -5;
	            if(left >= 0 && left <= 40) {
	                left += 'px';
	                toggleBtn.css('left', left);
	            }
	        }, 10);
	    setTimeout(function(){
	        clearInterval(intervalID);
	    }, 201);
	}
	
	function getToggleBtnState(toggleBtnId){
	    const left_px = parseInt( $('#'+toggleBtnId).css('left') );
	 
	    return (left_px > 0)? "on" : "off";
	}

	</script>
</head>
<body>
	<div class="toggleBG">
		<button class="toggleFG"></button>
	</div>
</body>
</html>