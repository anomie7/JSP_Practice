<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="save01" scope="session" class="loginTest.Save01"></jsp:useBean>
<jsp:setProperty property="id" name="save01"/>    
<jsp:setProperty property="pwd" name="save01"/>
<% 	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UFT-8"); 
	session.setMaxInactiveInterval(10);
%>   
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
    <form method="post" action="result.jsp">
     1.가장 좋아하는 계절은? <br>
    <input type="radio" name="season" value="봄">봄
    <input type="radio" name="season" value="여름">여름
    <input type="radio" name="season" value="가을">가을
    <input type="radio" name="season" value="겨울">겨울  
    <br> <br>

    2.가장 좋아하는 과일은? <br>
    <input type="radio" name="fruit" value="수박">수박
    <input type="radio" name="fruit" value= "멜론">멜론
    <input type="radio" name="fruit" value= "사과">사과
    <input type="radio" name="fruit" value= "오렌지" >오렌지 <br>
    <input type="submit" value = "보내기">
    </form>
    </body>
</html>