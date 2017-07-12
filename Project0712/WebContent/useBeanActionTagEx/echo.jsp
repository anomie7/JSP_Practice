<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="myEcho" class="MyEcho.Echo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="myEcho" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("Echo 빈즈에서 받은 내용: " + myEcho.getMsg()+ ", " + myEcho.getAge() + "<BR>");
	%>
</body>
</html>