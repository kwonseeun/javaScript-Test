<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		
	</style>
	  <script src="https://code.jquery.com/jquery-3.2.1.min.js" type="text/javascript"></script>
	 <script type="text/javascript">
	 	//난수 생성 함수
	 		function generateRandom (min, max) {
	 		var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
	 			return ranNum;
	 }
	 	
	 var scroe = 0;
	 
	 var LR = 0; // 좌우 방향 
	 var TB = 1; // 위 아래 방향 
	 
	 var mapSize = 21; // map size
	 
	 var gameInterval;
	 
	 // init map
	 function initMap(){
		 var tableCode = '';
		 for (var i = 0; i < mapSize; i++) {
			tableCode += '<tr>';
			
			var rowCode = '';
			   for(var j=0; j<mapSize; j++) {
                   rowCode += '<td id="block'+i+'_'+j+'"></td>';
               }
			tableCode += rowCode + '</tr>';
			$('#snakeTable').html(tableCode);
		}
	 }
	 
	 // snake
	 var snake = new Array();
	 
	 //food 
	 var food = new Array();
	 
	 // init snake
	 function initSnake() {
		 snake = [] ;
		 snake.push([0,1]);
		 drawSnake();
	 }
	 
	 // 뱀 그리기 
	 function drawSnake(){
		 var state = '';
		 $('#snakeTable td').removeClass('snake');
		 for (var i = 0; i < snake.length; i++) {
			$('#block'+snake[i][0]+'_'+snake[i][1]).addClass('snake');
			//먹이 먹고 있을때
			if (condition) {
				 score++; // 점수 증가
                 $('#score').text(score); //점수 반영
                 food.pop(); // 먹이 제거
                 initFood(); // 새로운 먹이 추가
                 //뱀 꼬리 늘리기
                 state = 'eat';
			}
		}
		 return state;
	 }
	 
	 //먹이 초기화
	 function initFood(){
		 var x;
		 var y;
		 
		 do{
             x = generateRandom(0,mapSize-1);
             y = generateRandom(0,mapSize-1);
        }while($('#block'+x+'_'+y).hasClass('snake')); // 뱀이랑 겹치면 다시
        
        food = [];
        food.push([x, y]);
        drawFood();

	}
	 //먹이 그리기
	 function drawFood(){
		    $('#snakeTable td').removeClass('food');
            for(var i=0;i<food.length;i++) {
                $('#block'+food[i][0]+'_'+food[i][1]).addClass('food');
           }
	 }
	 
	 // move
	 function move() {
		 
	 }
	 </script>
</head>
<body>

</body>
</html>