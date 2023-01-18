<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<style>
.fix {
  background-color:rgb(60, 60, 60) !important;	
  width:100%;
  position:fixed !important;
  animation: down 0.5s ease !important;
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
				
				<form action="" method="post">
					<div class="mb-3" style="padding-top: 10px;">
						<label for="" class="form-label">
							음식 이름
						</label>
						
						<div class="input-group">
							<input id="foodNameInput" class="form-control" type="text" name="D_NAME">
							<button id="foodNameExistButton" class="btn btn-outline-secondary" type="button">중복확인</button>
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
						<label for="" class="form-label" style="padding-top: 5px;">
							변환된 탄단지 비율 
						</label>			
						<div class="flexbox">
							<input id="carboInput" class="form-control" type="text" readonly="readonly">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="ProteinInput" class="form-control" type="text" readonly="readonly">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="FatInput" class="form-control" type="text" readonly="readonly">
							
						</div>
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
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	얼얼한 맛
						  </label>
						</div>
	                </div>
					
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
						<div class="form-check">
						  <input class="form-check-input" type="checkboxS" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	없음
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	기타
						 </label>
						 <input type="text" id="etcS"/>
						</div>
	                </div>
	                
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
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	없거나 적음
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	기타
						 </label>
						 <input type="text" id="etcC"/>
						</div>
	                </div>
					
					 <div class="mb-3">
    					<label for="" class="form-label">
							주요 재료
						</label>
						<div>
							<label for="" class="form-label">
								고기류
							</label>
						</div>
						
						<div class="flexbox">
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
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcMeat"/>
							   <button type="button" class="btn btn-primary" id="plusMeat">생성</button>
							</div>
						
						<div>
							<label for="" class="form-label">
								해산물
							</label>
						</div>
						
						<div class="flexbox">
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
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcSea"/>
							</div>
							
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
						<div class="flexbox">
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
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcSea"/>
							</div>
							
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
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	느타리 버섯/포르치니
							  </label>
							</div>
						</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	기타
							  </label>
							   <input type="text" id="etcMeat"/>
							</div>
	                </div>
					
					<input disabled id="submitButton1" class="btn btn-primary" type="submit" value="등록">
				
				</form>
			</div>
		</div>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
/* --------------sticky navbar scroll 기능-------------------------------------------------------------------------------------------------- */
function navigo (){
  const header = document.querySelector('#nav2'); //헤더부분획득
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

document.querySelector("#plusMeat").addEventListener("click", function() {
	
});
</script>
</body>
</html>









