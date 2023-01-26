<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="./lib/jquery-3.5.1.js"></script>

<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="http://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<style>
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
} 
body {
 font-family: 'NanumSquareNeo-Variable','Palatino Linotype' !important; 
}
#att_zone {
	width: 660px;
	min-height: 150px;
	padding: 10px;
	border: 1px dotted #00f;
}

#att_zone:empty:before {
	content: attr(data-placeholder);
	color: #999;
	font-size: .9em;
}
.fix {
  background-color:rgb(60, 60, 60) !important;	
  width:100%;
  position:fixed !important;
  animation: down 0.5s ease !important;
  z-index: 289 !important;
}

@keyframes down {
  0%{
    transform: translateY(-50px)
  }
  100%{
    transform: translateY(0px)
  }
}
.flexbox{
	display: flex;
}
.form-check{
	padding-right: 20px;
}
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<my:navbar></my:navbar>
	
	<div class="container-md" style="padding-top: 20px;">
		<div class="row">
			<div class="col">
				<h1>Food 등록</h1>
				
				<form id="registerForm1" action="" method="post"
					enctype="multipart/form-data">
				<div class="mb-3" id='image_preview'>
					<label for="" class="form-label"><b>* 체험을 가장 잘 표현할 수 있는 이미지를
						올려주세요</b> </label> 
						<br>
						<input class="form-control" id="btnAtt" multiple type="file" accept="image/*"
						name="files"> 
						<br>
					<div style="display: table; margin-left: auto; margin-right: auto; "
					id='att_zone' 
					data-placeholder="파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요.(파일 선택 버튼 옆에 뜨는 이미지만 올라감)"></div>
				</div>
				</form>

				
				<form action="" method="post">
					<div class="mb-3" style="padding-top: 10px;">
						<label for="" class="form-label">
							음식 이름
						</label>
						
						<div class="input-group">
							<input id="foodNameInput" class="form-control" type="text" name="D_NAME">
							<button id="foodNameExistButton" class="btn btn-primary" type="button">중복확인</button>
						</div>
						
						<div id="foodNameText" class="form-text">이미 등록된 음식인지 확인해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="" class="form-label">
							칼로리(kcal) / 무게(g)
						</label>
						<div class="flexbox">
							<input id="carboInput" class="form-control" type="text">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="ProteinInput" class="form-control" type="text">
						</div>
						<div id="calText" class="form-text"></div>
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							탄수화물 : 단백질 : 지방
						</label>
						<div class="flexbox">
							<input id="carboInput" class="form-control" type="text">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="ProteinInput" class="form-control" type="text">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="FatInput" class="form-control" type="text">
							
						</div>
						<!-- <label for="" class="form-label" style="padding-top: 5px;">
							변환된 탄단지 비율 
						</label>			
						<div class="flexbox">
							<input id="carboInput" class="form-control" type="text" readonly="readonly">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="ProteinInput" class="form-control" type="text" readonly="readonly">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="FatInput" class="form-control" type="text" readonly="readonly">
						</div> -->
					</div>
					
					<div class="mb-3">
						<label for="" class="form-label">
							음식의 온도
						</label>
						
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
						  <label class="form-check-label" for="flexRadioDefault1">
						    따뜻한 편
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked>
						  <label class="form-check-label" for="flexRadioDefault3">
						    중간
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault5" checked>
						  <label class="form-check-label" for="flexRadioDefault5">
						    차가운 편
						  </label>
						</div>
						
					</div>
					
		
					
	                <div class="mb-3">
    					<label for="" class="form-label">
							국물의 정도
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault11" checked>
						  <label class="form-check-label" for="flexRadioDefault11">
						    많음
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault22" checked>
						  <label class="form-check-label" for="flexRadioDefault22">
						    자작함
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault2" checked>
						  <label class="form-check-label" for="flexRadioDefault2">
						    없음
						  </label>
						</div>         
	                </div>
	                					
					 <div class="mb-3">
    					<label for="" class="form-label">
							야채의 비중
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault11" checked>
						  <label class="form-check-label" for="flexRadioDefault11">
						    높음
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault22" checked>
						  <label class="form-check-label" for="flexRadioDefault22">
						    중간
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault2" checked>
						  <label class="form-check-label" for="flexRadioDefault2">
						    적음
						  </label>
						</div>         
	                </div>
	                
	           		 <div class="mb-3">
    					<label for="" class="form-label">
							주요 맛
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	짠맛
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	감칠맛
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	단맛
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	신맛
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	쓴맛
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	고소한 맛
						  </label>
						</div>
						<div class="form-check" id="tBox">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	얼얼한 맛
						  </label>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcT"/>
							   <button type="button" class="btn btn-primary" id="plusT">생성</button>
							</div>
	                </div>
					<br>
					
					 <div class="mb-3">
    					<label for="" class="form-label">
							사용 육수
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	돼지육수
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	소 육수
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	닭 육수
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	해물 육수
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	채수(채소 육수)
						 </label>
						</div>
						<div class="form-check" id="sBox">
						  <input class="form-check-input" type="checkboxS" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	없음
						 </label>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcS"/>
							   <button type="button" class="btn btn-primary" id="plusS">생성</button>
							</div>
	                </div>
	                <br>
	                
	                 <div class="mb-3">
    					<label for="" class="form-label">
							탄수화물 종류
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	면
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	밥
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	빵
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	튀김
						 </label>
						</div>
						<div class="form-check" id="cBox">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	탄수화물이 없거나 적음
						 </label>
						</div>
						 	<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcC"/>
							   <button type="button" class="btn btn-primary" id="plusC">생성</button>
							</div>
	                	</div>
					<br>
					
					 <div class="mb-3">
    					<label for="" class="form-label">
							주요 재료
						</label>
						<div>
							<label for="" class="form-label">
								고기류
							</label>
						</div>
						
						<div class="flexbox" id="meatBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	돼지고기
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	소고기
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	닭고기
							  </label>
							</div>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcMeat"/>
							   <button type="button" class="btn btn-primary" id="plusMeat">생성</button>
							</div>
						<br>	
						<div>
							<label for="" class="form-label">
								해산물
							</label>
						</div>
						
						<div class="flexbox" id="seaBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	갑각류
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	조개류
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	생선류
							  </label>
							</div>
						</div>		
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcSea"/>
							   <button type="button" class="btn btn-primary" id="plusSea">생성</button>
							</div>
						<br>
							
						<div>
							<label for="" class="form-label">
								채소
							</label>
						</div>
						
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	감자
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	고구마
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	생강
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	당근
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	무
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	우엉
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	연근
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	토란
							  </label>
							</div>
						</div>
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	양파
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	파
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	부추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	마늘
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	샬럿
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	고추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	피망
							  </label>
							</div>
						</div>
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	파프리카
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	가지
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	배추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	양배추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	토마토
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	시금치
							  </label>
							</div>
						</div>
						<div class="flexbox" id="vBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	셀러리
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	상추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	양상추
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	콩
							  </label>
							</div>
						</div>		
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcV"/>
							   <button type="button" class="btn btn-primary" id="plusV">생성</button>
							</div>
							
						<br>	
						<div>
							<label for="" class="form-label">
								버섯
							</label>
						</div>
						
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	송로버섯
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	송이버섯
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	표고버섯
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							    새송이버섯
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	양송이버섯
							  </label>
							</div>
						</div>
						<div class="flexbox" id="mBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	느타리 버섯/포르치니
							  </label>
							</div>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcM"/>
							   <button type="button" class="btn btn-primary" id="plusM">생성</button>
							</div>
	                </div>
					<br>
					<input id="submitButton1" class="btn btn-primary" type="submit" value="등록">
					<br>
					<br>
				</form>
			</div>
		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
/* --------------sticky navbar scroll 기능-------------------------------------------------------------------------------------------------- */
function navigo (){
  const header = document.querySelector('#nav'); //헤더부분획득
  const headerheight = header.clientHeight;//헤더높이
document.addEventListener('scroll', onScroll, { passive: true });//스크롤 이벤트
 function onScroll () {
     const scrollposition = pageYOffset;//스크롤 위치
   const nav = document.querySelector('#nav');//네비게이션
   if (headerheight<=scrollposition){//만약 헤더높이<=스크롤위치라면
     nav.classList.add('fix')//fix클래스를 네비에 추가
   }
   else {//그 외의 경우
     nav.classList.remove('fix');//fix클래스를 네비에서 제거
   }
 } 
}
navigo() 
/* --------------sticky navbar scroll 기능 끝-------------------------------------------------------------------------------------------------- */
/* --------------기타버튼 생성 기능-------------------------------------------------------------------------------------------------- */
 $("#plusMeat").on("click", function() {
	 const nMeat = document.querySelector('#etcMeat').value; 

      $("#meatBox").after('<div class="form-check" id="meat1"></div>');
      $("#meat1").append('<input class="form-check-input" type="checkbox" value="" id="meat2">');
      $("#meat2").after('<label class="form-check-label" for="flexCheckDefault">'+nMeat+'</label>');			  
      });
 $("#plusSea").on("click", function() {
	 const nSea = document.querySelector('#etcSea').value; 

     $("#seaBox").after('<div class="form-check" id="sea1"></div>');
     $("#sea1").append('<input class="form-check-input" type="checkbox" value="" id="sea2">');
     $("#sea2").after('<label class="form-check-label" for="flexCheckDefault">'+nSea+'</label>');			  
     });
 $("#plusV").on("click", function() {
	 const nV = document.querySelector('#etcV').value; 

     $("#vBox").after('<div class="form-check" id="v1"></div>');
     $("#v1").append('<input class="form-check-input" type="checkbox" value="" id="v2">');
     $("#v2").after('<label class="form-check-label" for="flexCheckDefault">'+nV+'</label>');			  
     });
 $("#plusM").on("click", function() {
	 const nM = document.querySelector('#etcM').value; 

     $("#mBox").after('<div class="form-check" id="m1"></div>');
     $("#m1").append('<input class="form-check-input" type="checkbox" value="" id="m2">');
     $("#m2").after('<label class="form-check-label" for="flexCheckDefault">'+nM+'</label>');			  
     });
 $("#plusC").on("click", function() {
	 const nC = document.querySelector('#etcC').value; 

     $("#cBox").after('<div class="form-check" id="c1"></div>');
     $("#c1").append('<input class="form-check-input" type="checkbox" value="" id="c2">');
     $("#c2").after('<label class="form-check-label" for="flexCheckDefault">'+nC+'</label>');			  
     });
 $("#plusT").on("click", function() {
	 const nT = document.querySelector('#etcT').value; 

     $("#tBox").after('<div class="form-check" id="t1"></div>');
     $("#t1").append('<input class="form-check-input" type="checkbox" value="" id="t2">');
     $("#t2").after('<label class="form-check-label" for="flexCheckDefault">'+nT+'</label>');			  
     });
 $("#plusS").on("click", function() {
	 const nS = document.querySelector('#etcS').value; 

     $("#sBox").after('<div class="form-check" id="s1"></div>');
     $("#s1").append('<input class="form-check-input" type="checkbox" value="" id="s2">');
     $("#s2").after('<label class="form-check-label" for="flexCheckDefault">'+nS+'</label>');			  
     });
/* --------------기타버튼 생성 기능 끝-------------------------------------------------------------------------------------------------- */
</script>
<script>
/* --------------이미지 드래그 드롭 기능-------------------------------------------------------------------------------------------------- */
( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    

    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')
		 //mdp
	    flatpickr("#ttt1",{
	        mode: "multiple",
	        dateFormat: "Y-m-d",
	        disable: [
	            {
	                from: "0000-04-01",
	                to: new Date()
	            }
	        ]
	    });

</script>
<script>
  $("#imageFile").on("change", function(event) {

	  for (var i = 0; i < files.length; i++) { 
		  
	    var file = event.target.files[i];
	    

	    var reader = new FileReader(); 
	    reader.onload = function(e) {

	        $("#preview"+i).attr("src", e.target.result);
	    }

	    reader.readAsDataURL(file);
	}});
 
    flatpickr("#ttt1",{
        mode: "multiple",
        dateFormat: "Y-m-d",
        disable: [
            {
                from: "0000-04-01",
                to: new Date()
            }
        ]
    });
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
<script>
$('#header').css('color', '#00f'); //jQuery문법
/* --------------이미지 드래그 드롭 기능 끝-------------------------------------------------------------------------------------------------- */
</script>
</body>
</html>









