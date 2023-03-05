<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Find Meal For Your Ingredients</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
  <link rel="stylesheet" type="text/css" href="/css/style.css">
  <%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> --%>
</head>
<body>
  
  <div class = "container">
    <div class = "meal-wrapper">
      <div class = "meal-search">
        <h2 class = "title">Find Meals For Your Ingredients</h2>
        <blockquote>Real food doesn't have ingredients, real food is ingredients.<br>
          <cite>- Jamie Oliver</cite>
        </blockquote>

        <div class = "meal-search-box">
          <input type = "text" class = "search-control" placeholder="Enter an ingredient" id = "search-input">
          <button type = "submit" class = "search-btn btn" id = "search-btn">
            <i class = "fas fa-search"></i>
          </button>
        </div>
       	
        <input type = "text" style="display:none" id = "trans">
      </div>

      <div class = "meal-result">
        <h2 class = "title">Your Search Results:</h2>
        <div id= "meal">
        </div>
      </div>


      <div class = "meal-details">
        <button type = "button" class = "btn recipe-close-btn" id = "recipe-close-btn">
          <i class = "fas fa-times"></i>
        </button>

        <div class = "meal-details-content">
        </div>
      </div>
    </div>
  </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
  const ctx = "${pageContext.request.contextPath}";
/*-------------------------------ninja api------------------------------------------------*/
  function search(){
  var query = document.querySelector("#trans").value;
	  $.ajax({
	      method: 'GET',
	      url: 'https://api.api-ninjas.com/v1/nutrition?query=' + query,
	      headers: { 'X-Api-Key': 'IK6d8NkemQHWSc9/LcpRzQ==2oA2ni4GfRfkG2nI'},
	      contentType: 'application/json',
	      success: function(result) {
	          console.log(result);
	      },
	      error: function ajaxError(jqXHR) {
	          console.error('Error: ', jqXHR.responseText);
	      }
	  });	  
  }
/*-------------------------------ninja api 끝------------------------------------------------*/
/*-------------------------------입력 받은 값은 파파고로--------------------------------------------*/
document.querySelector("#search-btn").addEventListener("click", function() {
  const str = document.querySelector("#search-input").value;

  fetch(`${ctx}/head/laboPapago`, {
    method: "post",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(str)
  })
  .then(res => res.json())
  .then(res => {
    // JSON 데이터에서 "name" 필드의 값을 가져옵니다.
    const name = res.name;
    console.log(name);
    return name;
  })
  .then(name => {
    document.querySelector("#search-input").value = "";
    document.querySelector("#trans").value = name;
    search();
  })
  .catch(err => {
    console.error(err);
  });
});
/*------------------------------입력 받은 값은 파파고로 끝-------------------------------------------------*/
  </script>
</body>
</html>