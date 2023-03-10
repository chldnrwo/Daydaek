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
				<h1>Food ??????</h1>
				
				<form id="registerForm1" action="" method="post"
					enctype="multipart/form-data">
				<div class="mb-3" id='image_preview'>
					<label for="" class="form-label"><b>* ????????? ?????? ??? ????????? ??? ?????? ????????????
						???????????????</b> </label> 
						<br>
						<input class="form-control" id="btnAtt" multiple type="file" accept="image/*"
						name="files"> 
						<br>
					<div style="display: table; margin-left: auto; margin-right: auto; "
					id='att_zone' 
					data-placeholder="????????? ?????? ????????? ?????? ?????? ????????? ??????????????? ????????? ?????????????????? ?????????.(?????? ?????? ?????? ?????? ?????? ???????????? ?????????)"></div>
				</div>
				</form>

				
				<form action="" method="post">
					<div class="mb-3" style="padding-top: 10px;">
						<label for="" class="form-label">
							?????? ??????
						</label>
						
						<div class="input-group">
							<input id="foodNameInput" class="form-control" type="text" name="D_NAME">
							<button id="foodNameExistButton" class="btn btn-primary" type="button">????????????</button>
						</div>
						
						<div id="foodNameText" class="form-text">?????? ????????? ???????????? ??????????????????.</div>
					</div>

					<div class="mb-3">
						<label for="" class="form-label">
							?????????(kcal) / ??????(g)
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
							???????????? : ????????? : ??????
						</label>
						<div class="flexbox">
							<input id="carboInput" class="form-control" type="text">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="ProteinInput" class="form-control" type="text">
							<div style="padding: 0 5px 0 5px;"> : </div>
							<input id="FatInput" class="form-control" type="text">
							
						</div>
						<!-- <label for="" class="form-label" style="padding-top: 5px;">
							????????? ????????? ?????? 
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
							????????? ??????
						</label>
						
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
						  <label class="form-check-label" for="flexRadioDefault1">
						    ????????? ???
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked>
						  <label class="form-check-label" for="flexRadioDefault3">
						    ??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault5" checked>
						  <label class="form-check-label" for="flexRadioDefault5">
						    ????????? ???
						  </label>
						</div>
						
					</div>
					
		
					
	                <div class="mb-3">
    					<label for="" class="form-label">
							????????? ??????
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault11" checked>
						  <label class="form-check-label" for="flexRadioDefault11">
						    ??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault22" checked>
						  <label class="form-check-label" for="flexRadioDefault22">
						    ?????????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault2" id="flexRadioDefault2" checked>
						  <label class="form-check-label" for="flexRadioDefault2">
						    ??????
						  </label>
						</div>         
	                </div>
	                					
					 <div class="mb-3">
    					<label for="" class="form-label">
							????????? ??????
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault11" checked>
						  <label class="form-check-label" for="flexRadioDefault11">
						    ??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault22" checked>
						  <label class="form-check-label" for="flexRadioDefault22">
						    ??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault3" id="flexRadioDefault2" checked>
						  <label class="form-check-label" for="flexRadioDefault2">
						    ??????
						  </label>
						</div>         
	                </div>
	                
	           		 <div class="mb-3">
    					<label for="" class="form-label">
							?????? ???
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	?????????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	????????? ???
						  </label>
						</div>
						<div class="form-check" id="tBox">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultF">
						  <label class="form-check-label" for="flexCheckDefault">
						   	????????? ???
						  </label>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcT"/>
							   <button type="button" class="btn btn-primary" id="plusT">??????</button>
							</div>
	                </div>
					<br>
					
					 <div class="mb-3">
    					<label for="" class="form-label">
							?????? ??????
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	????????????
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??? ??????
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??? ??????
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	?????? ??????
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????(?????? ??????)
						 </label>
						</div>
						<div class="form-check" id="sBox">
						  <input class="form-check-input" type="checkboxS" value="" id="flexCheckDefaultS">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						 </label>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcS"/>
							   <button type="button" class="btn btn-primary" id="plusS">??????</button>
							</div>
	                </div>
	                <br>
	                
	                 <div class="mb-3">
    					<label for="" class="form-label">
							???????????? ??????
						</label>
								
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	???
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	???
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	???
						 </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????
						 </label>
						</div>
						<div class="form-check" id="cBox">
						  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
						  <label class="form-check-label" for="flexCheckDefault">
						   	??????????????? ????????? ??????
						 </label>
						</div>
						 	<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcC"/>
							   <button type="button" class="btn btn-primary" id="plusC">??????</button>
							</div>
	                	</div>
					<br>
					
					 <div class="mb-3">
    					<label for="" class="form-label">
							?????? ??????
						</label>
						<div>
							<label for="" class="form-label">
								?????????
							</label>
						</div>
						
						<div class="flexbox" id="meatBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcMeat"/>
							   <button type="button" class="btn btn-primary" id="plusMeat">??????</button>
							</div>
						<br>	
						<div>
							<label for="" class="form-label">
								?????????
							</label>
						</div>
						
						<div class="flexbox" id="seaBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
						</div>		
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcSea"/>
							   <button type="button" class="btn btn-primary" id="plusSea">??????</button>
							</div>
						<br>
							
						<div>
							<label for="" class="form-label">
								??????
							</label>
						</div>
						
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	???
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
						</div>
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	???
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
						</div>
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
						</div>
						<div class="flexbox" id="vBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	?????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	???
							  </label>
							</div>
						</div>		
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcV"/>
							   <button type="button" class="btn btn-primary" id="plusV">??????</button>
							</div>
							
						<br>	
						<div>
							<label for="" class="form-label">
								??????
							</label>
						</div>
						
						<div class="flexbox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							    ???????????????
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	???????????????
							  </label>
							</div>
						</div>
						<div class="flexbox" id="mBox">
							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefaultC">
							  <label class="form-check-label" for="flexCheckDefault">
							   	????????? ??????/????????????
							  </label>
							</div>
						</div>
							<div>
							  <label class="form-check-label" for="flexCheckDefault">
							   	??????
							  </label>
							   <input type="text" id="etcM"/>
							   <button type="button" class="btn btn-primary" id="plusM">??????</button>
							</div>
	                </div>
					<br>
					<input id="submitButton1" class="btn btn-primary" type="submit" value="??????">
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
/* --------------sticky navbar scroll ??????-------------------------------------------------------------------------------------------------- */
function navigo (){
  const header = document.querySelector('#nav'); //??????????????????
  const headerheight = header.clientHeight;//????????????
document.addEventListener('scroll', onScroll, { passive: true });//????????? ?????????
 function onScroll () {
     const scrollposition = pageYOffset;//????????? ??????
   const nav = document.querySelector('#nav');//???????????????
   if (headerheight<=scrollposition){//?????? ????????????<=?????????????????????
     nav.classList.add('fix')//fix???????????? ????????? ??????
   }
   else {//??? ?????? ??????
     nav.classList.remove('fix');//fix???????????? ???????????? ??????
   }
 } 
}
navigo() 
/* --------------sticky navbar scroll ?????? ???-------------------------------------------------------------------------------------------------- */
/* --------------???????????? ?????? ??????-------------------------------------------------------------------------------------------------- */
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
/* --------------???????????? ?????? ?????? ???-------------------------------------------------------------------------------------------------- */
</script>
<script>
/* --------------????????? ????????? ?????? ??????-------------------------------------------------------------------------------------------------- */
( /* att_zone : ??????????????? ????????? ?????? id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // ???????????? ?????? ????????? ????????? ?????? div ??????
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // ???????????? ????????? ??????
    var img_style = 'width:100%;height:100%;z-index:none';
    // ??????????????? ???????????? ??????????????? ??????
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // ??????????????? ???????????? ?????? ??????
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
    

    
    /*????????? ??????????????? ????????? ?????? ???????????? */
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
    
    /*????????? ????????? ?????? ?????? checkbox??? ?????? attZone??? ????????? div??? ????????? ?????? */
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
$('#header').css('color', '#00f'); //jQuery??????
/* --------------????????? ????????? ?????? ?????? ???-------------------------------------------------------------------------------------------------- */
</script>
</body>
</html>









