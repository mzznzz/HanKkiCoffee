<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Hankki Coffee</title>
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

		.content {
			height: calc(100vh - 216px);
		}

		.content>div {
			margin-top: -100px;
		}

		form[action="menu"] label {
			display: none;
		}

		form[action="menu"] input[type="submit"] {
			width: 300px;
			height: 300px;
			font-size: 60px;
		}

    .btn {
      background-color: var(--main-color);
      border-radius: 40px;
      color: #fff;
      font-weight: 500;
    } 
    .btn:hover {
      border: 2px solid var(--main-color);
      color: var(--main-color);
      background: #eee;
    }
	</style>
</head>
<body class="">
	<div class="container d-flex justify-content-center align-items-center title my-5">
	<img src="/image/logo.png" alt="">
    <p>Hankki Coffee</p>
	</div>
	<div class="container content d-flex justify-content-center align-items-center">
		<div class="in-store me-2">
			<form action="menu" method="get">
				<label>
					<input type="radio" name="takes" value="매장" checked>
					매장
				</label>
				<input class="btn" type="submit" value="매장">
			</form>
		</div>
		<div class="packaginh">
			<form action="menu" method="get">
				<label>
					<input type="radio" name="takes" value="포장" checked>
					포장
				</label>
				<input class="btn" type="submit" value="포장">
			</form>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
	</script>
</body>
</html>