<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String FormDate = request.getParameter("data");
	out.print("웹 브라우저에서 받은 데이터 : " + FormDate);
%>
</body>
</html>