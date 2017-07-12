<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mySign" class="MyEcho.useBeanEx02" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="mySign" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(!(mySign.getId().equals("admin") ) || mySign.getPwd() != 1234){
			//out.print("아이디와 비번이 일치하지 않습니다.");
			out.print("<SCRIPT LANGUAGE='JavaScript'>");
			out.print("alert('아이디와 비번이 일치하지 않습니다.');");
			out.print("</SCRIPT>");
		}else if((mySign.getId().equals("admin") ) && mySign.getPwd() == 1234){
			out.print("<SCRIPT LANGUAGE='JavaScript'>");
			out.print(mySign.getId() + "alert('님 환영합니다.');");
			out.print("</SCRIPT>");
		}
	%>
</body>
</html>