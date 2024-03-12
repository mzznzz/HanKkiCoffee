<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영수증</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Diphylleia&family=Gaegu:wght@300;700&family=Nanum+Gothic:wght@400;700&family=Nanum+Pen+Script&family=Poppins:wght@200;300;400;500;600;700&display=swap');

  *{
    font-family: 'Poppins', sans-serif;
    color: #555;
  }

  :root{
    --main-color:#1d8476;
    --second-color:#b2e7d9;
  }

  body {
    background: #eee;
  }

  .container {
    max-width: 700px;
  }

  .title {
		font-size: 60px;
	}

  .title p {
    margin-bottom: 0;
  }

  img {
    width: 70px;
    height: 70px;
  }

  .oId {
    font-size: 30px;
  }

  .oDate {
    font-size: 20px;
  }

  .table {
    --bs-table-bg : #eee;
  }
  .sum p, .sum2 p{
    margin-bottom: 0;
  }
  .sum2 {
    font-size: 20px;
    font-weight: 600;
  }

  .point {
    font-weight: 600;
  }
</style>
</head>
<body>
  <div class="container d-flex justify-content-center align-items-center title my-5">
		<img src="image/logo.png" alt="">
    <p>Hankki Coffee</p>
	</div>
  <div class="container">
    <div class="oId mb-3">
      주문번호 - ${oId}
    </div>
    <div class="oDate">
      ${takes} / 거래일 : ${oDate}
    </div>
    <hr>
    <table class="table">
      <tr>
        <th class="text-center">메뉴</th>
        <th class="text-center">HOT/ICE</th>
        <th class="text-center">단가</th>
        <th class="text-center">수량</th>
        <th class="text-center">금액</th>      
      <tr>
      <c:forEach items="${menuDao}" var="menu">
      <tr>
        <td>${menu.menu}</td>
        <td>${menu.hotIce}</td>
        <td>${menu.price}</td>
        <td>${menu.quantity}</td>
        <td>${menu.price * menu.quantity}</td>
      <tr>
      </c:forEach>      
    </table>
    <hr>
    <c:set var="sum" value="0" />
    <c:forEach items="${menuDao}" var="menu">
        <c:set var="sum" value="${sum + (menu.price * menu.quantity)}" />
    </c:forEach>    
    <div class="sum d-flex justify-content-between">
      <p>합계</p>
      <p>${sum}</p>
    </div>
    <hr>
    <div class="sum2 d-flex justify-content-between">
      <p>결제금액</p>
      <p>${sum}</p>
    </div>
    <hr>
    <p class="text-center point">[ Hankki Coffee 적립 ]</p>
	<c:choose>
    	<c:when test="${cId eq 1}">
        	<p>비회원 고객님 입니다.</p>
    	</c:when>
    	<c:otherwise>
        	<p>${cName} 고객님 ${cVisits}번째 방문을 환영합니다.</p>
    	</c:otherwise>
	</c:choose>
    <hr>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
  </script>
</body>
</html>