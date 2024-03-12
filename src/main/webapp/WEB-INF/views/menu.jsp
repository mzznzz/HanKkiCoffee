<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- css -->
  <link rel="stylesheet" href="style.css">
  <!-- 부트스트랩 CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <!-- 부트스트랩 JavaScript 및 Popper.js -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
    :root{
 			--main-color:#1d8476;
  		--second-color:#b2e7d9;
		}

    .menulist .heading {
      margin-top: 0;
    }

    .menulist input, .menulist .t1 tr:not(:first-child){
      display: none;
    }

    .menulist .t1 tr, .menulist .t1 th, .menulist .t1 td {
      height: 49px;
    }

    .menulist .t2 tr, .menulist .t2 th, .menulist .t2 td {
      height: 49px;
      border-bottom: none;
    }

    .menulist p {
      margin-bottom: 0;
    }

    .menulist .table.t1 {
      width: 65%;
    }

    .menulist .table.t2 {
      width: 15%;
    }

    .cancle {
      cursor: pointer;
    }

    .result.btn {
      width: 100%;
      height: 196px;
      background-color: var(--main-color);
      display: block !important;
      color: #fff;
      font-size: 32px;
      font-weight: 500;
    } 

    .result.btn:hover {
      border: 2px solid var(--main-color);
      color: var(--main-color);
      background: #eee;
    }

    .pay {
      width: 19%;
    }

  </style>
</head>
<!-- box Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
</head>

<body>
  <div>
    <span> Hankki Coffee - Menu Selection</span>
  </div>
  <!-- Navbar -->
  <header>
    <div class="header">

      <a href="#" class="logo"><img src="image/logo.png" alt=""></a>
      <span class="header-text">Hankki Coffee - Menu Selection</span>
      <ul class="navbar">
        <li><a href="#coffee">Coffee</a></li>
        <li><a href="#latte">Latte</a></li>
        <!-- Add other navigation items as needed -->
      </ul>
      <div class="bx bx-menu" id="menu-icon"></div>
    </div>
  </header>
  <!-- home -->
  <!-- <section class="home" id="home">
    <div class="home-text">
      <span>Welcome To</span>
      <h1>HanKki Coffee</h1>
      <h2>Free Coffee is a <br> tap away</h2>
      <a href="#" class="btn">Join Now</a>
    </div>
    <div class="home-img">
      <img src="image/hankki.png" alt="">
    </div>
  </section> -->
  <section class="shop" id="shop">
    <div class="heading">
      <h1>Shop Coffee</h1>
    </div>
    <div class="shop-container">
      <!-- 메뉴클래스박스 -->
      <div class="box" id="menuBox1" data-toggle="modal" data-target="#menuModal1">
        <div class="box-img">
          <img src="image/hankki.png" alt="">
        </div>
        <div class="stars">
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star-half'></i>
        </div>
        <!-- 메뉴 추가 -->
        <form class="addMenu" action="addMenu" method="get">
          <h2>아메리카노</h2>
          <span>3000원<br></span>
          <a href="#" class="btn">Order Now</a>
        </form>
      </div>

      <!-- 메뉴클래스박스 -->
      <div class="box" id="menuBox2" data-toggle="modal" data-target="#menuModal2">
        <div class="box-img">
          <img src="image/hankki.png" alt="">
        </div>
        <div class="stars">
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star-half'></i>
        </div>
        <!-- 메뉴 추가 -->
        <form class="addMenu" action="addMenu" method="get">
          <h2>카페라떼</h2>
          <span>4000원<br></span>
          <a href="#" class="btn">Order Now</a>
        </form>
      </div>

      <!-- 메뉴클래스박스 -->
      <div class="box" id="menuBox3" data-toggle="modal" data-target="#menuModal3">
        <div class="box-img">
          <img src="image/hankki.png" alt="">
        </div>
        <div class="stars">
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star'></i>
          <i class='bx bxs-star-half'></i>
        </div>
        <!-- 메뉴 추가 -->
        <form class="addMenu" action="addMenu" method="get">
          <h2>카라멜마끼아또</h2>
          <span>5000원<br></span>
          <a href="#" class="btn">Order Now</a>
        </form>
      </div>
    </div>

    <!-- 모달 창 -->
    <div class="modal fade" id="menuModal1" tabindex="-1" role="dialog" aria-labelledby="menuModalLabel1"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="menuModalLabel1" style="font-weight: bold;">HanKki</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- 모달 내용: 이미지, 설명 등을 추가 -->
            <div style="float: left; margin-right: 15px;">
              <img src="image/hankki.png" alt="메뉴 이미지" style="width: 100px; height: auto;">
            </div>
            <div>
              <p style="font-weight: bold; font-size: 16px;">아메리카노</p>
              <p>메뉴 설명이나 상세 정보 등을 여기에 추가합니다.</p>
              <div>
                <button type="button" class="btn btn-outline-secondary" id="decrementQuantity"
                  onclick="decrementQuantity('quantity')">-</button>
                <span class="quantity" id="quantity">1</span>
                <button type="button" class="btn btn-outline-secondary" id="incrementQuantity"
                  onclick="incrementQuantity('quantity')">+</button>
                <!-- 이부분이 실시간으로 변경이 됐으면 좋겠는데요 ^^..........-->
                <span id="price" style="float: right;">3,000원</span>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size1.5L" value="1.5L" onclick="selectSize('1.5L', 'menuModal1')"> 1.5L
                  </label>                
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size2.0L" value="2.0L" onclick="selectSize('2.0L', 'menuModal1')"> 2.0L
                  </label>
                </div>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="hot" id="temperatureHot" onclick="selectTemperature('Hot')"> Hot
                  </label>
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="ice" id="temperatureIce" onclick="selectTemperature('Ice')"> Ice
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary selectBtn">선택 완료</button>
            <!-- Add other buttons if needed -->
          </div>
        </div>
      </div>
    </div>

    <!-- 모달 창 2 -->
    <div class="modal fade" id="menuModal2" tabindex="-1" role="dialog" aria-labelledby="menuModalLabel2"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="menuModalLabel2" style="font-weight: bold;">HanKki</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- 모달 내용: 이미지, 설명 등을 추가 -->
            <div style="float: left; margin-right: 15px;">
              <img src="image/hankki.png" alt="메뉴 이미지" style="width: 100px; height: auto;">
            </div>
            <div>
              <p style="font-weight: bold; font-size: 16px;">카페라떼</p>
              <p>메뉴 설명이나 상세 정보 등을 여기에 추가합니다.</p>
              <div>
                <button type="button" class="btn btn-outline-secondary" id="decrementQuantity2"
                  onclick="decrementQuantity('quantity2')">-</button>
                <span class="quantity" id="quantity2">1</span>
                <button type="button" class="btn btn-outline-secondary" id="incrementQuantity2"
                  onclick="incrementQuantity('quantity2')">+</button>
                <span id="price2" style="float: right;">4,000원</span>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size1.5L"  value="1.5L" onclick="selectSize('1.5L')"> 1.5L
                  </label>
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size2.0L"  value="2.0L" onclick="selectSize('2.0L')"> 2.0L
                  </label>
                </div>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="hot" id="temperatureHot" onclick="selectTemperature('Hot')"> Hot
                  </label>
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="ice" id="temperatureIce" onclick="selectTemperature('Ice')"> Ice
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary selectBtn">선택 완료</button>
            <!-- Add other buttons if needed -->
          </div>
        </div>
      </div>
    </div>

    <!-- 모달 창 3 -->
    <div class="modal fade" id="menuModal3" tabindex="-1" role="dialog" aria-labelledby="menuModalLabel3"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="menuModalLabel3" style="font-weight: bold;">Your Title Here</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- 모달 내용: 이미지, 설명 등을 추가 -->
            <div style="float: left; margin-right: 15px;">
              <img src="image/hankki.png" alt="메뉴 이미지" style="width: 100px; height: auto;">
            </div>
            <div>
              <p style="font-weight: bold; font-size: 16px;">카라멜마끼아또</p>
              <p>메뉴 설명이나 상세 정보 등을 여기에 추가합니다.</p>
              <div>
                <button type="button" class="btn btn-outline-secondary" id="decrementQuantity3"
                  onclick="decrementQuantity('quantity3')">-</button>
                <span class="quantity" id="quantity3">1</span>
                <button type="button" class="btn btn-outline-secondary" id="incrementQuantity3"
                  onclick="incrementQuantity('quantity3')">+</button>
                <span id="price3" style="float: right;">5,000원</span>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size1.5L"  value="1.5L" onclick="selectSize('1.5L')"> 1.5L
                  </label>
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="size" id="size2.0L"  value="2.0L" onclick="selectSize('2.0L')"> 2.0L
                  </label>
                </div>
              </div>
              <div style="margin-top: 10px; text-align: center;">
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="hot" id="temperatureHot" onclick="selectTemperature('Hot')"> Hot
                  </label>
                  <label class="btn btn-secondary btn-size" style="width: 50px;">
                    <input type="radio" name="temperature"  value="ice" id="temperatureIce" onclick="selectTemperature('Ice')"> Ice
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
            <button type="button" class="btn btn-primary selectBtn">선택 완료</button>
            <!-- Add other buttons if needed -->
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="menulist container" id="menulist">
    <div class="heading">
      <h1>Menu List</h1>
    </div>
    <div class="d-flex align-items-start pt-4">
      <table class="table t1 mr-2">
        <tr>
          <th>메뉴</th>
          <th>사이즈</th>
          <th>Hot/Ice</th>
          <th>단가</th>
          <th>수량</th>
          <th>금액</th>
          <th class="text-center">취소</th>
        </tr>
        <tr>
          <form class="addMenu2" action="addMenu" method="get">
            <td class="menuName">아메리카노</td>
            <td><p></p><input class="menuSize" type="radio" name="menu" value="1.5L"><input class="menuSize" type="radio"
                name="menu" value="2.0L"></td>
            <td><p></p><input type="radio" name="hotIce" value="hot"><input type="radio" name="hotIce" value="ice"></td>
            <td><p></p><input type="number" name="price" placeholder="3000" value="3000" readonly><input class="submit"
              type="submit" value="선택"></td>
            <td><p></p><input type="number" name="quantity" placeholder="0"></td>
            <td class="priceSum"></td>
            <td class="cancle text-center">X</td>
          </form>
        </tr>
        <tr>
          <form class="addMenu2" action="addMenu" method="get">
            <td class="menuName">카페라떼</td>
            <td><p></p><input class="menuSize" type="radio" name="menu" value="1.5L"><input class="menuSize" type="radio"
                name="menu" value="2.0L"></td>
            <td><p></p><input type="radio" name="hotIce" value="hot"><input type="radio" name="hotIce" value="ice"></td>
            <td><p></p><input type="number" name="price" placeholder="4000" value="4000" readonly><input class="submit"
              type="submit" value="선택"></td>
            <td><p></p><input type="number" name="quantity" placeholder="0"></td>
            <td class="priceSum"></td>
            <td class="cancle text-center">X</td>
          </form>
        </tr>
        <tr>
          <form class="addMenu2" action="addMenu" method="get">
            <td class="menuName">캬라멜마끼아또</td>
            <td><p></p><input class="menuSize" type="radio" name="menu" value="1.5L"><input class="menuSize" type="radio"
                name="menu" value="2.0L"></td>
            <td><p></p><input type="radio" name="hotIce" value="hot"><input type="radio" name="hotIce" value="ice"></td>
            <td><p></p><input type="number" name="price" placeholder="5000" value="5000" readonly><input class="submit"
              type="submit" value="선택"></td>
            <td><p></p><input type="number" name="quantity" placeholder="0"></td>
            <td class="priceSum"></td>
            <td class="cancle text-center">X</td>
          </form>
        </tr>
      </table>
      <table class="table t2 mr-2">
        <tr>
          <th class="text-right">총 결제금액</th>
        </tr>
        <tr>
          <td> </td>
        </tr>
        <tr>
          <td> </td>
        </tr>
        <tr>
          <td class="totalSum"></td>
        </tr>
      </table>
      <form class="pay" action="pay" method="get">
        <input type="hidden" name="takes" value="${takes}">
        <input class="result btn" type="submit" value="결제하기">
      </form>
    </div>
    
  </section>
  <script>
    document.addEventListener('DOMContentLoaded', function () {

      document.querySelectorAll('.submit').forEach(function (submit) {

        submit.addEventListener('click', function (e) {
          e.preventDefault();

          var tr = this.parentNode.parentNode;
          if (tr.querySelector('input[name="quantity"]').value != '') {
            var menuName = tr.querySelector('.menuName').innerText;
            var menuSize = tr.querySelector('input[name="menu"]:checked').value;
            // 각 메뉴에 대한 가격을 가져오기
            var basePriceElement = tr.querySelector('input[name="price"]');
            var basePrice = parseInt(basePriceElement.value);
            // 2.0L 사이즈일 경우 추가 가격 적용
            // if (menuSize === "2.0L") {
            //   basePrice += 500;
            // }
            // 메뉴에 가격 적용
            basePriceElement.value = basePrice;
            tr.querySelector('input[name="menu"]:checked').value = menuName + " " + menuSize;
            console.log(tr.querySelector('input[name="menu"]:checked').value);
            console.log(tr.querySelector('input[name="hotIce"]:checked').value);
            console.log(tr.querySelector('input[name="quantity"]').value);
            console.log(tr.querySelector('input[name="price"]').value);

            // Ajax 요청 보내기
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'addMenu?menu=' + tr.querySelector('input[name="menu"]:checked').value +
              '&hotIce=' + tr.querySelector('input[name="hotIce"]:checked').value +
              '&quantity=' + tr.querySelector('input[name="quantity"]').value + '&price=' + tr
              .querySelector('input[name="price"]').value, true);
            xhr.send();

          } else {
            console.log("선택안됨");
          }
        });
      });

      //전달 받을 폼 설정
      var addForm = document.querySelectorAll('.addMenu2');

      //옵션 선택 후 장바구니 버튼 클릭
      document.querySelectorAll('.selectBtn').forEach(function (select, index){
        select.addEventListener('click', function() {
          var parentModal = this.parentNode.parentNode;
          // console.log(parentModal);
          //사이즈
          var mSize = parentModal.querySelector('input[name="size"]:checked').value
          var listMSize = addForm[index].parentNode.querySelectorAll('input[name="menu"]');
          var priceInput = addForm[index].parentNode.querySelector('input[name="price"]');
          var currentPrice = parseInt(priceInput.value); // 현재 입력값을 정수로 변환
          if(mSize == '1.5L'){
            listMSize[0].click();
            listMSize[0].parentNode.querySelector('p').innerText = mSize;
          }else {
            listMSize[1].click();
            listMSize[1].parentNode.querySelector('p').innerText = mSize;
            
            // 정수로 변환한 값을 더하고 다시 문자열로 설정
            priceInput.value = (currentPrice + 500).toString();
          }
          priceInput.parentNode.querySelector('p').innerText = priceInput.value;
          //hot/ice
          var hotIce = parentModal.querySelector('input[name="temperature"]:checked').value;
          var listHotIce = addForm[index].parentNode.querySelectorAll('input[name="hotIce"]');
          if(hotIce == 'hot'){
            listHotIce[0].click();
            listHotIce[0].parentNode.querySelector('p').innerText = hotIce;
          }else {
            listHotIce[1].click();
            listHotIce[1].parentNode.querySelector('p').innerText = hotIce;
          }
          //수량
          var quantity = parentModal.querySelector('.quantity').innerText;
          // console.log(quantity);
          var listQuantity = addForm[index].parentNode.querySelector('input[name="quantity"]')
          listQuantity.value = quantity;
          if(listQuantity.value > 0){
            addForm[index].parentNode.style.display = "table-row";
          }else {
            addForm[index].parentNode.style.display = "none";
          }
          listQuantity.parentNode.querySelector('p').innerText = quantity;
          //금액
          var priceSumValue = quantity * addForm[index].parentNode.querySelector('input[name="price"]').value
          addForm[index].parentNode.querySelector('.priceSum').innerText = priceSumValue;
          // console.log(addForm[index].parentNode);

          //닫기
          parentModal.querySelector('.close').click();
        });
      });

      //주문취소
      document.querySelectorAll('.cancle').forEach(function(cancle) {
        cancle.addEventListener('click', function() {
          var thisQuantity = this.parentNode.querySelector('input[name="quantity"]');
          // console.log(thisQuantity);
          thisQuantity.value = 0;
          this.parentNode.style.display = "none";
        });
      });

      

      document.querySelector('.result').addEventListener('click', function (e) {
        e.preventDefault();

        document.querySelectorAll('.submit').forEach(function (submit) {
          submit.click();
        });

        console.log("test 성공");

        setTimeout(function () {
          document.querySelector('.pay').submit();
        }, 500);
      });
    });
  </script>
  <!-- link to custom js -->
  <script src="main.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
  </script>
</body>

</html>