<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   
	<f:form action="" method="get" modelAttribute="p">
	
   GİRİŞ BAŞARILI<br>
   
   İSİM : ${p.isim}
		<br />
   SOYİSİM : ${p.soyisim}
   		<br />
   ROL: ${p.rol}
		<br />

	</f:form>
</body>
</html>