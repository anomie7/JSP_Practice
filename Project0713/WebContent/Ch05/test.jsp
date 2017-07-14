<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>session 테스트</h3>
	<%
		session = request.getSession();
		String[] a = session.getValueNames();
		out.println("세션 ID : " + session.getId() + "<br>");
		out.println("세션 유지 시간: " + session.getMaxInactiveInterval() + "<br>");
		int i = 0;
		
		if(a.length == 0){
			session.putValue(session.getId(), "A");
			session.putValue("아니라", "B");
		}else{
			out.println("이름 : " + a[0] + " 값:" + (String)session.getValue(a[0]) + "<br>");
			out.println("이름 : " + a[1] + " 값:" + (String)session.getValue(a[1]) + "<br>");
		}
	%>
<A href = test.jsp>다시 읽기</A>	
</body>
</html>