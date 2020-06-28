<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<style>
body {
	margin: :0;
	padding: 0;
	font-family: sans-serif;
	background: #ff8080;
	color: #633856;
}

.box {
	width: 300px;
	padding: 40px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #191919;
	text-align: center;
}

.box h1 {
	color: white;
	text-transform: uppercase;
	font-weight: 500;
}

.box input[type="text"], .box input[type="password"] {
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #633856;
	padding: 14px 10px;
	width: 200px;
	outline: none;
	color: white;
	border-radius: 24px;
	transition: 0.25s;
}

.box input[type="text"]:focus, .box input[type="password"]:focus {
	width: 280px;
	border-color: #633856;
}

.box input[type="submit"] {
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #633856;
	padding: 14px 40px;
	outline: none;
	color: white;
	border-radius: 24px;
	transition: 0.25s;
	cursor: pointer;
}

.box input[type="submit"]:hover {
	background: #7800f0;
}

.calisan-ekle {
	box-shadow: 3px 4px 0px 0px #9fb4f2;
	background: linear-gradient(to bottom, #9e31c2 5%, #417abf 100%);
	background-color: #9e31c2;
	border-radius: 15px;
	border: 1px solid #4e6096;
	display: inline-block;
	cursor: pointer;
	color: #f5f5f5;
	font-family: Arial;
	font-size: 17px;
	padding: 7px 25px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #283966;
}
</style>
</head>
<div id="wrapper">
	<div id="header"></div>
	<hr>
</div>
<div id="container">
	<div id="content">

		<table>
			<thead>
				<tr>

					<f:form action="giris" method="get" modelAttribute="p" class="box">
						<div class="textbox">
							USERNAME :
							<f:input path="username" placeholder="username" />
							<br>
							<br>
						</div>
		PASSWORD : <f:input path="password" type="password"
							placeholder="password" />
						<br>
					</f:form>
			</tbody>

		</table>
		<hr>
		<button onclick="window.location.href='employee-ekle'"
			class="calisan-ekle">Bağlan</button>
	</div>
</div>

</body>
</html>