<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="save01" scope="session" class="loginTest.Save01"></jsp:useBean>

<% request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UFT-8"); %>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
     <h1>Session Example1</h1>
    <form action = "select01.jsp" method="post">
        아이디 : 
        <input type="text" name="id"><br>
        비밀번호: 
        <input type="text" name="pwd"><br>
        <input type="submit" value="로그인">
    </form>
</body>
</html>