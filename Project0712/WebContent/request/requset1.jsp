<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>request 객체 정보</b>
<%="인코딩 방식: " + request.getCharacterEncoding() + "<p>" %>
<%="MME 타입 : " + request.getContentType() + "<p>" %>
<%="요청정보 길이 : " + request.getContentLength() + "<p>" %>
<%="헤더 이름 : " + request.getHeaderNames() + "<p>" %>
<%="웹 전달 경로: " + request.getPathInfo() + "<p>" %>
<%="클라이언트 이름 : " + request.getRemoteHost() + "<p>" %>
<%="클라이언트 IP 주소: " + request.getRemoteAddr() + "<p>" %>
<%="클라이언트 URL 경로 : " + request.getRequestURL() + "<p>" %>
<%="전송방식: " + request.getMethod() + "<p>"  %>
<%="프로트콜 이름 : " + request.getProtocol() + "<p>" %>
<%="서버이름 : " + request.getServerName() + "<p>" %>
<%="서버 포트 번호 : " + request.getServerPort() + "<p>" %>
</body>
</html>