// // main.js

// // 메뉴 클래스 박스 클릭 시 모달 창 띄우기
// document.getElementById("menuBox1").addEventListener("click", function () {
//   // 모달을 띄우는 코드 추가
//   alert("메뉴 상세 정보 모달 창이 뜹니다.");
// });

// // 메뉴 클래스 박스 클릭 시 모달 창 띄우기
// // 다른 메뉴 클래스 박스에 대해서도 위와 같은 코드를 반복해서 추가할 수 있습니다.

//모달
  function decrementQuantity() {
    var quantityElement = document.getElementById("quantity");
    var currentQuantity = parseInt(quantityElement.innerText);
    if (currentQuantity > 0) {
      quantityElement.innerText = currentQuantity - 1;
    }
  }

  function incrementQuantity() {
    var quantityElement = document.getElementById("quantity");
    var currentQuantity = parseInt(quantityElement.innerText);
    if (currentQuantity < 99) {
      quantityElement.innerText = currentQuantity + 1;
    }
  }

    function decrementQuantity(quantityId) {
      var quantityElement = document.getElementById(quantityId);
      var currentQuantity = parseInt(quantityElement.innerText);
      if (currentQuantity > 0) {
        quantityElement.innerText = (currentQuantity - 1).toString();
      }
    }

    function incrementQuantity(quantityId) {
      var quantityElement = document.getElementById(quantityId);
      var currentQuantity = parseInt(quantityElement.innerText);
      if (currentQuantity < 99) {
        quantityElement.innerText = (currentQuantity + 1).toString();
      }
    }



  // // JavaScript 코드
  // document.addEventListener('DOMContentLoaded', function () {
  //   // 각 메뉴 클릭 이벤트 처리
  //   document.getElementById('menuBox1').addEventListener('click', function () {
  //     displayMenuList('아메리카노', '3000원', '메뉴 설명이나 상세 정보');
  //   });

  //   document.getElementById('menuBox2').addEventListener('click', function () {
  //     displayMenuList('카페라떼', '3000원', '메뉴 설명이나 상세 정보');
  //   });

  //   document.getElementById('menuBox3').addEventListener('click', function () {
  //     displayMenuList('카라멜마끼아또', '3000원', '메뉴 설명이나 상세 정보');
  //   });

  //   // 메뉴 리스트를 동적으로 생성하여 menulist에 추가하는 함수
  //   function displayMenuList(menuName, price, description) {
  //     // 새로운 메뉴 리스트 아이템 생성
  //     var menuListItem = document.createElement('div');
  //     menuListItem.classList.add('menu-list-item');

  //     // 메뉴 정보 추가
  //     menuListItem.innerHTML = `
  //       <h2>${menuName}</h2>
  //       <span>${price}</span>
  //       <p>${description}</p>
  //     `;

  //     // menulist에 메뉴 리스트 아이템 추가
  //     document.getElementById('menulist').innerHTML = ''; // 이전에 추가된 아이템 초기화
  //     document.getElementById('menulist').appendChild(menuListItem);
  //   }
  // });

  // Add this code to your main.js file or within a <script> tag in your HTML

let selectedMenu = {};

function completeSelection() {
    // Get selected options from the modal
    const quantity = document.getElementById('quantity').innerText;
    const size = document.querySelector('input[name="size"]:checked').value;
    const temperature = document.querySelector('input[name="temperature"]:checked').value;

    // You can customize this part based on your actual menu items
    const menuName = "아메리카노";
    const price = "3,000원";

    // Store the selected options in an object
    selectedMenu = {
        menuName,
        quantity,
        size,
        temperature,
        price
    };

    // Call a function to update the Menu List section
    updateMenuList();
}

function updateMenuList() {
    // Get the table element
    const menuTable = document.getElementById('menuTable');

    // Create a new row
    const newRow = menuTable.insertRow();

    // Add cells to the row
    const cell1 = newRow.insertCell(0);
    const cell2 = newRow.insertCell(1);
    const cell3 = newRow.insertCell(2);
    const cell4 = newRow.insertCell(3);

    // Populate cells with selected menu information
    cell1.innerHTML = selectedMenu.menuName;
    cell2.innerHTML = selectedMenu.quantity;
    cell3.innerHTML = selectedMenu.size;
    cell4.innerHTML = selectedMenu.temperature + " / " + selectedMenu.price;
}


//가격추가 이부분 수정못함 모달창에서 3,000원부분을 객체로 만들어서 전달해야하는데 머리가 안돌아가유
  function selectSize(size, modalId) {
    // Get the current price span within the specific modal
    var priceSpan = document.getElementById(modalId).querySelector("#price");

    // Get the current quantity and convert it to a number
    var quantity = parseInt(
      document.getElementById(modalId).querySelector("#quantity").innerText
    );

    // Set the base price per unit quantity
    var basePrice = 3000;

    // Calculate the total price based on the selected size
    var totalPrice = basePrice * quantity;

    // If 2.0L is selected, add 500원 to the total price
    if (size === "2.0L") {
      totalPrice += 500;
    }

    // Update the price span with the formatted price
    priceSpan.innerText = addCommas(totalPrice) + "원";
  }

  // Helper function to add commas for thousands separator in the price
  function addCommas(number) {
    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }



