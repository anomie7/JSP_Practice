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
		out.print("include 액션 호출 전입니다. <BR>");
	%>

	<jsp:include page="bottom.jsp" flush="false"></jsp:include>

	<%
		out.print("include 액션 호출 후입니다. <BR>");
	%>
</body>
</html>