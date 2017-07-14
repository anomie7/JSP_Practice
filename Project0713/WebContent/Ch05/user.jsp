<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="info" scope="request" class="key.user"></jsp:useBean>
<jsp:setProperty property="name" name="info"/>
<jsp:setProperty property="num" name="info"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <style>
	dev{
		width: 50%;
		height: 50%;
	}
	table{
		margin: auto 0;
	}
</style>
</head>
<body>
<dev>
    <Table border=""="0" width="300">
        <form method="post">
            <tr>
                <th bgcolor="#996699" colspan="2">
                    <font color="white" size="+1">JSP테스트</font>
                </th>
            </tr>
            <tr>
                <th width="40%" bgcolor="#BB6699">
                    <font color="white" size="-1">이름</font>
                </th>
                <td bgcolor="#99ccff" width="60%">
                    <input type="text" name="name" value=<%=info.getName()%> size = 10>
                </td>
            </tr>
            <tr>
                <th width="40%" bgcolor="BB6699">
                    <font color="white" size="-1">학번</font>
                </th>
                <td bgcolor="#99ccff">
                    <input type="text" name="num" value=<%=info.getNum()%> size=10>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="보내기">
                    <input type="reset" value="다시쓰기">
                </td>
            </tr>
        </form>
    </Table>
    </dev>
<jsp:include page="setget.jsp"></jsp:include>
</body>
</html>