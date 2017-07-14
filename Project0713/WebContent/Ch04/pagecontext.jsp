<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	out.print("out.print() 메서드를 이용해서 출력합니다. <br>");
	pageContext.getOut().print("pageContext.getOut() 메서드를 통해 출력합니다.<BR>");
	
	String sessionid = pageContext.getSession().getId();
	pageContext.getOut().print("pageContext.getOut() 메서드를 통해 출력합니다.<BR>");
%>