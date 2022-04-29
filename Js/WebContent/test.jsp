<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#my,
	#river {
		display: inline-block;
		vertical-align: top;
		margin-right: 50px;
	}
	
	#my {
		margin-bottom: 10px;
	}
	
	#rival {
	vertical-align: bottom;
	margin-top: 10px;
	}
	
	#my-dexk,
	#rival-deck {
	display: inline-block;
	vertical-align: top;
	width: 200px;
	background-color: antiquewhite;
	}
	
	#rival-deck,
	#rival-hero,
	#rival,cards,
	#my-cards,
	#my-deck,
	#my-hero {
	text-align: center; 
	}
	
	#rival-cards>.card,
	#my-cards .card {
	width: 40px;
	height: 55px;
}

.card{ 
	width: 50px;
	height: 75px;
	display: inline-block;
	position: relative;
	border: 1px solid #dedede;
	margin: 10px 0;
	font-size: 12px;
	margin-right: 10px;
	background-color: aliceblue;
}

.card-att,
.card-hp,
.card-cost{ 
	width: 15px;
	height: 15px;
	border-radius: 50%;
	position: absolute;
	bottom: 0;
	border: 1px solid #828282;
	font-size: 12px;
	line-height: 15px;
	text-align: center;
	font-weight: bold;
}

.card-cost {
	bottom: auto;
	right: 0;
	background-color: burlywood;
}

.card-att {
	left: 0;
	background-color: coral;
}

.card-hp {
right: 0;
background-color: darkseagreen;
}
.card-turnover {
	background: gray;
}

.card-hidden {
display: none;
}

.card-selected {
border: 2px solid navy; 
}

#turn btn {
	float: right;
	position: relative;
	top: 20px;
}

.turn-box {
	text-align: center;
	margin: 15px 0;
	font-weight: bold;
}

</style>

<script type="text/javascript">
	const 상대 ={
			영웅: document.getElementById('rival-hero'),
			  덱: document.getElementById('rival-deck'),
			  필드: document.getElementById('rival-cards'),
			  코스트: document.getElementById('rival-cost'),
			  덱data: [],
			  영웅data: [],
			  필드data: [],
			  선택카드: null,
			  선택카드data: null,		
	}
	
	const 나 = {
			  영웅: document.getElementById('my-hero'),
			  덱: document.getElementById('my-deck'),
			  필드: document.getElementById('my-cards'),
			  코스트: document.getElementById('my-cost'),
			  덱data: [],
			  영웅data: [],
			  필드data: [],
			  선택카드: null,
			  선택카드data: null,
			}

	const 턴버튼 = document.getElementById('turn-btn');
	const 턴타입 = document.getElementById('turntype');
	let 턴 = true; 
	
	function 덱에서 필드로 (데이터, 내턴) {
		let 객체 = 내턴 ? 나 : 상대; 
		
		let 현재코스트 = Number(객체.코스트.textcontent);
		let (현재코스트 < 데이터.cost) {
			return end; 
		}
		let idx = 객체.덱data.indexOf(데이터);
		객체.덱data.splice(idx,1);
		객체.필드data.push(데이터);
		
		객체.덱.innerHTML = '';
		객체.필드.innerHTML = '';
		객체.필드data.forEach(function(data)) {
			카드돔연결(data, 객체.필드);
		});
		객체.덱data.forEach(function(data)) {
			카드돔연결(data,객체.덱)
		});
		데이터.field = true;
		객체.코스트.textContent = 현재코스트 - 데이터.cost;
	}
	
	
</script>

<body>
	<div><small>초록: 체력, 주황: 공격력, 적 영웅의 체력이 0이되면 영웅을 보호하기 위해
	<br />쫄병들을 코스트(우드색)내에서 뽑는다.</small></div>
<div id="rival">
  <div>코스트:<span id="rival-cost">10</span>/<span>10</span></div>
 	 <div id="rival-hero"></div>
  	<div id="rival-cards" style="height: 100px">
  </div>
</div>
<div id="rival-deck"></div>
<hr />
<button id="turn-btn">턴 교체</button>
<div class="turn-box">현재 턴: <span id="turn-type"> my turn</span></div>
<div id = "my">
	<div id="my-cards" style="height: 100px"></div>
	<div id="my-hero"></div>
	<div>코스트:<span id="my-cost">10</span><span>10</span></div>
</div>
<div id="my-deck"></div>

<div class="card-hidden">
	<div class="card">
		<div class="card-cost"></div>
		<div class="card-att"></div>
		<div class="card-hp"></div>
	</div>
</div>
</body>
</html>