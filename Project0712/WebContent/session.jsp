<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");

	String userId = request.getParameter("id");
	String userPasswd = request.getParameter("passwd");

	String sessionId = session.getId();
	int sessionTime = session.getMaxInactiveInterval();

	out.print(userId + " 님 환영합니다.<p>");
	out.print("생성된 세션 ID : " + sessionId + "<p>");
	out.print("세션 유지 시간 : " + sessionTime);
%>