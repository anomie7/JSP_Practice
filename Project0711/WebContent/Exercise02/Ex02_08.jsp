<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i = 5; i > 0; i--){
		for(int j = 1; j <= i; j++){
			out.print(j + " ");
		}
		out.print("<br>");
	}
%>
</body>
</html>