<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>

<head>
  <title>결제</title>
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

    .container {
      max-width: 700px;
    }

    .content {
      margin-top: 70px;
    }

    table {
      width: 100%;
    }

    th {
      background: var(--second-color);
    }
    .btn {
      width: 300px;
      height: 300px;
      background: var(--main-color);
      border-radius: 40px;
      color: #fff;
      font-weight: 500;
      border: none;
    }

    .btn-check+.btn:hover, .btn-check:checked+.btn {
      border: 2px solid var(--main-color);
      color: var(--main-color);
      background: #eee;
    }

    .btn:hover {
      border: 2px solid var(--main-color);
      color: var(--main-color);
      background: #eee;
    }

    label.btn {
      font-size: 36px;
      line-height: 290px;
    }

    .modal-footer .btn {
      width: 60px;
      height: 38px;
      border-radius: 5px;
    }

    .d-flex>.btn {
      width: 100px;
      height: 38px;
      border-radius: 5px;
    }

    .d-flex>p {
      margin-bottom: 0;
      line-height: 38px;
    }

    header {
      position: fixed;
      width: 100%;
      top: 0;
      right: 0;
      z-index: 1000;
      background: #fff;
      box-shadow: 0 4px 20px rgb(14 55 54 / 14%);
      transition: 0.2s;
    }

    .logo p{
      font-size: 30px;
      line-height: 50px;
      margin-bottom: 0;
    }

    .header {
      padding: 10px;
    }

    .header>p {
      margin-top: 6px;
      line-height: 26px;
      font-size: 20px;
    }

    p.btn:hover {
      background: var(--main-color);
      border: none;
      color: #fff;
      cursor: default;
    }

    .logo img {
      width: 50px;
    }
  </style>
</head>

<body class="">
    <!-- Navbar -->
    <header>
      <div class="header container d-flex justify-content-between">
        <div class="logo d-flex">
          <img class="me-1" src="image/logo.png" alt="">
          <p class="header-text">Hankki Coffee</p>
        </div>
        <p class="btn">결제</p>
      </div>
    </header>
  <div class="container content d-flex flex-column">
    <div class="cart mt-3">
      <h2>장바구니</h2>
      <hr>
      <table class="table">
        <tr>
          <th class="text-center">메뉴</th>
          <th class="text-center">HOT/ICE</th>
          <th class="text-center">단가</th>
          <th class="text-center">수량</th>
          <th class="text-center">금액</th>
        <tr>
          <tbody class="table-group-divider">
          <c:forEach items="${menuDao}" var="menu">
          <tr>
              <td>${menu.menu}</td>
              <td>${menu.hotIce}</td>
              <td>${menu.price}</td>
              <td>${menu.quantity}</td>
              <td>${menu.price * menu.quantity}</td>
          <tr>
          </c:forEach>
          </tbody>
      </table>
    </div>
    <hr>
    <form action="receipt" method="get">
      <!-- 회원번호 입력란 -->
      <h2 class="">Step1. 적립 방식을 선택해 주세요!</h2>
      <hr>
      <input type="radio" class="btn-check " name="cId" id="option1" autocomplete="off" value="1">
      <label class="btn" for="option1" data-bs-toggle="modal" data-bs-target="#exampleModal">회원번호</label>
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">HANKKI COFFEE 적립</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              회원번호
              <input type="text" class="cId">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
              <button type="button" class="btn modalClose">확인</button>
            </div>
          </div>
        </div>
      </div>
      <input type="radio" class="btn-check" name="cId" id="option2" autocomplete="off" value="1">
      <label class="btn" for="option2">적립안함</label>
      <hr>
      <!-- 결제방식 선택란 -->
      <h2 class="">Step2. 결제방식을 선택해 주세요!</h2>
      <hr>
      <input type="radio" class="btn-check" name="paymentMethod" id="option3" autocomplete="off" value="페이">
      <label class="btn" for="option3">페이</label>
      <input type="radio" class="btn-check" name="paymentMethod" id="option4" autocomplete="off" value="카드">
      <label class="btn" for="option4">카드</label>
      <!-- 총합 원 표시 -->
      <hr>
      <c:set var="sum" value="0" />
      <c:forEach items="${menuDao}" var="menu">
          <c:set var="sum" value="${sum + (menu.price * menu.quantity)}" />
      </c:forEach>
      <div class="d-flex justify-content-between mb-4"><p>결제 금액 ${sum}원</p><input class="btn" type="submit" value="결제하기"></div>
      
      <!-- 최종 결제하기 버튼 -->
      <input type="hidden" name="sum" value="${sum}">
      <input type="hidden" name="takes" value="${takes}">
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
  </script>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      let clBtn = document.querySelector('.btn-close');
      let mdClose = document.querySelector('.modalClose');

      mdClose.addEventListener('click', function(){
        let cidV = document.querySelector('.cId').value;
        console.log(cidV);
        if(cidV != ''){
          document.querySelector('input[name="cId"]:checked').value = cidV;
        }
        console.log(document.querySelector('input[name="cId"]:checked').value);
        clBtn.click();
      })
    });
  </script>
</body>

</html>