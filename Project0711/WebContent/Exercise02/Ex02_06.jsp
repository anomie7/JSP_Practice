<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, tr, td{
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px;
    text-align: center;
}
table{
	width: 100%;
}
</style>
</head>
<body>
	<%
		int sum1 = 0, sum2 = 0;
		for (int i = 1; i <= 100; i++) {
			if (i % 2 == 0) {
				sum1 += i;
			} else {
				sum2 += i;
			}
		}
	%>
	<table>
		<tr>
		<td colspan="2">결과는...</td>
		</tr>
		<tr>
		<td><%out.print("짝수들의 합: " + sum1 + "<BR>"); %></td>
		<td><%out.print("홀수들의 합: " + sum2); %></td>
	</table>
	
</body>
</html>